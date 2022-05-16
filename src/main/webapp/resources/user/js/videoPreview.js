const myFace = document.getElementById("myFace");
const btnMic = document.getElementById("btnMic");
const btnCam = document.getElementById("btnCam");

let myStream;
let muted = false;
let cameraOff = false;

async function getMedia(){
	try{
		myStream = await navigator.mediaDevices.getUserMedia({
			audio: true,
			video: true,
		});
		myFace.srcObject = myStream;
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