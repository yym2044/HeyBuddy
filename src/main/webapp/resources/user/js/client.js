var conn = new WebSocket("ws://" + window.location.host + "/socket");
/*var conn = new WebSocket("ws://localhost:8091/socket");*/
/*var conn = new WebSocket("wss://pretty-numbers-sip-175-194-93-76.loca.lt/socket");*/
const myFace = document.getElementById("myFace");
const peerFace = document.getElementById("peerFace");

let myStream;

async function getMedia(){
	try{
		myStream = await navigator.mediaDevices.getUserMedia({
			audio: true,
			video: true,
		});
		myFace.srcObject = myStream;
		peerConnection.addStream(myStream);
	} catch (e) {
		console.log(e);
	}
}

getMedia();


conn.onopen = function() {
	console.log("Connected to the signaling server");
	initialize();
}

conn.onmessage = function(msg) {
	console.log("Got message", msg.data);
	var content = JSON.parse(msg.data);
	var data = content.data;
	switch (content.event) {
		// when somebody wants to call us
		case "offer":
			handleOffer(data);
			break;
		case "answer":
			handleAnswer(data);
			break;
		// when a remote peer sends an ice candidate to us
		case "candidate":
			handleCandidate(data);
			break;
		default:
			break;
	}
};

function send(message) {
	conn.send(JSON.stringify(message));
}

var peerConnection;
var dataChannel;
var input = document.getElementById("messageInput");

function initialize() {
	var configuration = {
		"iceServers" : [ {
            "url" : "stun:stun.l.google.com:19302"
        } ]
	};

	peerConnection = new RTCPeerConnection(configuration);
	
	peerConnection.onicecandidate = function(event) {
		if (event.candidate) {
			send({
				event: "candidate",
				data: event.candidate
			});
		}
	};
	
	peerConnection.onaddstream = function(event) {
	    peerFace.srcObject = event.stream;
	};

	dataChannel = peerConnection.createDataChannel("dataChannel", { reliable: true });

	dataChannel.onerror = function(error) {
		console.log("Error:", error);
	};
	dataChannel.onclose = function() {
		console.log("Data channel is closed");
	};
	dataChannel.onmessage = function(event) {
		console.log("message:", event.data);
	};
	peerConnection.ondatachannel = function(event) {
		dataChannel = event.channel;
	};
	console.log("init completed^^");
	
}

function createOffer() {
	peerConnection.createOffer(function(offer) {
		send({
			event: "offer",
			data: offer
		});
		peerConnection.setLocalDescription(offer);
	}, function(error) {
		// Handle error here
	});
}

function sendMessage() {
	dataChannel.send(input.value);
	input.value = "";
}


function handleCandidate(candidate) {
	peerConnection.addIceCandidate(new RTCIceCandidate(candidate));
};

function handleOffer(offer) {
	peerConnection.setRemoteDescription(new RTCSessionDescription(offer));

	peerConnection.createAnswer(function(answer) {
		peerConnection.setLocalDescription(answer);
		send({
			event: "answer",
			data: answer
		});
	}, function(error) {
		// Handle error here
	});
};

function handleAnswer(answer) {
	peerConnection.setRemoteDescription(new RTCSessionDescription(answer));
	console.log("connection established successfully!!");
};








// 마이크 , 카메라 버튼

const btnMic = document.getElementById("btnMic");
const btnCam = document.getElementById("btnCam");

let muted = false;
let cameraOff = false;

function handleMicClick(){
    myStream.getAudioTracks().forEach((track) => (track.enabled = !track.enabled));
    if(!muted){
        btnMic.innerHTML = '<i class="bi bi-mic-mute"></i>';
        muted = true;
    } else {
        btnMic.innerHTML = '<i class="bi bi-mic"></i>';
        muted = false;
    }
}

function handleCamClick(){
    myStream.getVideoTracks().forEach((track) => (track.enabled = !track.enabled));
    if(cameraOff){
        btnCam.innerHTML = '<i class="bi bi-camera-video"></i>';
        cameraOff = false;
    } else {
        btnCam.innerHTML = '<i class="bi bi-camera-video-off"></i>';
        cameraOff = true;
    }
}

btnMic.addEventListener("click", handleMicClick);
btnCam.addEventListener("click", handleCamClick);