<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/user/css/meet/meetRoom/style.css">
<title>hey, Buddy!</title>
</head>
<body>
	<header>
		<i class="fab fa-pied-piper-square fa-2x"></i>
		<h1>
			<c:out value="${rt.hymrRoomName}" />
		</h1>
		<h4>
			<c:out value="${rt.hymrRoomId}" />
		</h4>
	</header>
	<main>
		<div class="call" id="call">
			<div id="streamBox">
				<div id="streams">
					<div class="people1" id="myStream">
						<video id="myFace" autoplay playsinline width="400" height="400"></video>
						<h3 id="userNickname"><c:out value="${sessName}"/></h3>
					</div>
				</div>
				<div id="controlers">
					<div id="controlers__column">
						<select id="cameras"></select>
					</div>
					<div id="controlers__column">
						<div id="buttons">
							<button id="mute">
								<i class="fas fa-microphone fa-2x unMuteIcon"></i><i class="fas fa-microphone-slash fa-2x muteIcon"></i>
							</button>
							<button id="camera">
								<i class="fas fa-video fa-2x cameraIcon"></i><i class="fas fa-video-slash fa-2x unCameraIcon"></i>
							</button>
						</div>
					</div>
					<div id="controlers__column">
						<button id="leave">Leave</button>
					</div>
				</div>
			</div>
			<div id="chatRoom">
				<ul id="chatBox"></ul>
				<form id="chatForm">
					<input required type="text" placeholder="Write your chat">
					<button>Send</button>
				</form>
			</div>
		</div>
	</main>
	<aside class="modal hidden">
		<div class="modal__box">
			<h2 class="modal__text"></h2>
			<button class="modal__btn">OK</button>
		</div>
	</aside>

	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" integrity="sha512-iKDtgDyTHjAitUDdLljGhenhPwrbBfqTKWO1mkhSFH3A7blITC9MhYon6SjnMhp4o0rADGw9yAC6EW4t5a4K3g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

	<!-- <script src="/resources/user/js/meet/meetRoom/client.js"></script> -->
	<script type="text/javascript">
	
	const myFace = document.querySelector("#myFace");
	const muteBtn = document.querySelector("#mute");
	const muteIcon = muteBtn.querySelector(".muteIcon");
	const unMuteIcon = muteBtn.querySelector(".unMuteIcon");
	const cameraBtn = document.querySelector("#camera");
	const cameraIcon = cameraBtn.querySelector(".cameraIcon");
	const unCameraIcon = cameraBtn.querySelector(".unCameraIcon");
	const camerasSelect = document.querySelector("#cameras");
	
	const call = document.querySelector("#call");
	
	const HIDDEN_CN = "hidden";
	
	let myStream;
	let muted = true;
	unMuteIcon.classList.add(HIDDEN_CN);
	let cameraOff = false;
	unCameraIcon.classList.add(HIDDEN_CN);
	let peopleInRoom = 1;
	
	let pcObj = {
	  // remoteSocketId: pc
	};
	
	async function getCameras() {
		  try {
		    const devices = await navigator.mediaDevices.enumerateDevices();
		    const cameras = devices.filter((device) => device.kind === "videoinput");
		    const currentCamera = myStream.getVideoTracks();
		    cameras.forEach((camera) => {
		      const option = document.createElement("option");
		      option.value = camera.deviceId;
		      option.innerText = camera.label;

		      if (currentCamera.label == camera.label) {
		        option.selected = true;
		      }

		      camerasSelect.appendChild(option);
		    });
		  } catch (error) {
		    console.log(error);
		  }
		}
	
	async function getMedia(deviceId) {
		  const initialConstraints = {
		    audio: true,
		    video: { facingMode: "user" },
		  };
		  const cameraConstraints = {
		    audio: true,
		    video: { deviceId: { exact: deviceId } },
		  };

		  try {
		    myStream = await navigator.mediaDevices.getUserMedia(
		      deviceId ? cameraConstraints : initialConstraints
		    );

		    // stream을 mute하는 것이 아니라 HTML video element를 mute한다.
		    myFace.srcObject = myStream;
		    myFace.muted = true;

		    if (!deviceId) {
		      // mute default
		      myStream //
		        .getAudioTracks()
		        .forEach((track) => (track.enabled = false));

		      await getCameras();
		    }
		  } catch (error) {
		    console.log(error);
		  }
		}
	
	function handleMuteClick() {
		  myStream //
		    .getAudioTracks()
		    .forEach((track) => (track.enabled = !track.enabled));
		  if (muted) {
		    unMuteIcon.classList.remove(HIDDEN_CN);
		    muteIcon.classList.add(HIDDEN_CN);
		    muted = false;
		  } else {
		    muteIcon.classList.remove(HIDDEN_CN);
		    unMuteIcon.classList.add(HIDDEN_CN);
		    muted = true;
		  }
		}

		function handleCameraClick() {
		  myStream //
		    .getVideoTracks()
		    .forEach((track) => (track.enabled = !track.enabled));
		  if (cameraOff) {
		    cameraIcon.classList.remove(HIDDEN_CN);
		    unCameraIcon.classList.add(HIDDEN_CN);
		    cameraOff = false;
		  } else {
		    unCameraIcon.classList.remove(HIDDEN_CN);
		    cameraIcon.classList.add(HIDDEN_CN);
		    cameraOff = true;
		  }
		}

		async function handleCameraChange() {
		  try {
		    await getMedia(camerasSelect.value);
		    if (peerConnectionObjArr.length > 0) {
		      const newVideoTrack = myStream.getVideoTracks()[0];
		      peerConnectionObjArr.forEach((peerConnectionObj) => {
		        const peerConnection = peerConnectionObj.connection;
		        const peerVideoSender = peerConnection
		          .getSenders()
		          .find((sender) => sender.track.kind == "video");
		        peerVideoSender.replaceTrack(newVideoTrack);
		      });
		    }
		  } catch (error) {
		    console.log(error);
		  }
		}

		muteBtn.addEventListener("click", handleMuteClick);
		cameraBtn.addEventListener("click", handleCameraClick);
		camerasSelect.addEventListener("input", handleCameraChange);
		
		getMedia();
	
	
	/////////////////////////////////
	
	const chatForm = document.querySelector("#chatForm");
	const chatBox = document.querySelector("#chatBox");
	
	const MYCHAT_CN = "myChat";
	const NOTICE_CN = "noticeChat";
	
	chatForm.addEventListener("submit", handleChatSubmit);
	
	function handleChatSubmit(event) {
		event.preventDefault();
		const chatInput = chatForm.querySelector("input");
		const message = chatInput.value;
		chatInput.value = "";
		client.send("/pub/chat", {}, JSON.stringify({
			"roomId" : "<c:out value='${ rt.hymrRoomId }'/>",
			"writer" : "<c:out value='${sessName}'/>",
			"msg" : message
		}));
	}
	
	function writeChat(message, className = null){
		const li = document.createElement("li");
		const span = document.createElement("span");
		span.innerText = message;
		li.appendChild(span);
		li.classList.add(className);
		chatBox.prepend(li);
	}
	/////////////////////////////////
	
	const leaveBtn = document.querySelector("#leave");
	
	function leaveRoom() {
		client.disconnect();
		
	}
	
	leaveBtn.addEventListener("click", leaveRoom);
	
	/////////////////////////////////
	
	const socket = new SockJS('/stompTest');
	const client = Stomp.over(socket);

	client.connect({}, function() {
		console.log("Connected stompTest!");
		
		/* 
		//MeetList 업데이트 해주기
		client.send("/pub/meetRoomList", {}, "give me the list (i'm in meetRoom)");
		 */
		 
		// Controller's MessageMapping, header, message(자유형식)
		client.subscribe("/sub/message/notice/<c:out value='${ rt.hymrRoomId }'/>", function(event) {
			console.log("subscribing room notice ~ ", event);
			writeChat("Notice!", NOTICE_CN);
			writeChat(event.body);
		});
		 
		 client.subscribe("/sub/message/chat/<c:out value='${rt.hymrRoomId}'/>", function(event) {
			console.log("subscribing room chat ~ ", event);
			
			const msg = JSON.parse(event.body);
			
			if(msg.writer == "<c:out value='${sessName}'/>"){
				writeChat(msg.writer + " : " + msg.msg, MYCHAT_CN);
			} else {
				writeChat(msg.writer + " : " + msg.msg);
			}
			
		 })

		client.send("/pub/joinRoom", {}, JSON.stringify({
			"roomId" : "<c:out value='${ rt.hymrRoomId }'/>",
			"msg" : "<c:out value='${ sessName }'/>님이 입장하셨습니다."
		}));
		
	});
	</script>
</body>
</html>