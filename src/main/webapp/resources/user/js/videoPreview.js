const myFace = document.getElementById("myFace");
const btnMic = document.getElementById("btnMic");
const btnCam = document.getElementById("btnCam");

if(localStorage.getItem("audioMuteNy") == null){
	localStorage.setItem("audioMuteNy", 0);
}
if(localStorage.getItem("videoMuteNy") == null){
	localStorage.setItem("videoMuteNy", 0);
}

let videoMuteNy = localStorage.getItem("videoMuteNy");
let audioMuteNy = localStorage.getItem("audioMuteNy");
let muted;
let cameraOff;

let myStream;

if(audioMuteNy == 0){
	muted = false;
} else {
	muted = true;
}
if(videoMuteNy == 0){
	cameraOff = false;
} else {
	cameraOff = true;
}

if(cameraOff){
	btnCam.innerHTML = '<i class="bi bi-camera-video-off"></i>';
}
if(muted){
	btnMic.innerHTML = '<i class="bi bi-mic-mute"></i>';
}

async function getMedia(){
	try{
		myStream = await navigator.mediaDevices.getUserMedia({
			audio: true,
			video: true,
		});
		myFace.srcObject = myStream;
		if(cameraOff){
			myStream.getVideoTracks().forEach((track) => (track.enabled = false));
		}
		if(muted){
			myStream.getAudioTracks().forEach((track) => (track.enabled = false));
		}
	} catch (e) {
		console.log(e);
	}
};

getMedia();

function handleMicClick(){
    myStream.getAudioTracks().forEach((track) => (track.enabled = !track.enabled));
    if(!muted){
        btnMic.innerHTML = '<i class="bi bi-mic-mute"></i>';
        muted = true;
        localStorage.setItem("audioMuteNy", 1);
    } else {
        btnMic.innerHTML = '<i class="bi bi-mic"></i>';
        muted = false;
        localStorage.setItem("audioMuteNy", 0);
    }
}

function handleCamClick(){
    myStream.getVideoTracks().forEach((track) => (track.enabled = !track.enabled));
    if(cameraOff){
        btnCam.innerHTML = '<i class="bi bi-camera-video"></i>';
        cameraOff = false;
        localStorage.setItem("videoMuteNy", 0);
    } else {
        btnCam.innerHTML = '<i class="bi bi-camera-video-off"></i>';
        cameraOff = true;
        localStorage.setItem("videoMuteNy", 1);
    }
}

btnMic.addEventListener("click", handleMicClick);
btnCam.addEventListener("click", handleCamClick);