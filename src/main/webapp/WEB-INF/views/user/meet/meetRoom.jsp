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

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<title>hey, Buddy!</title>
</head>
<body>

	<%@include file="../include/loader.jsp"%>
	
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
						<button id="leave" data-bs-target="#leaveModal" data-bs-toggle="modal">Leave</button>
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
	
	<!-- Modal -->
	<div class="modal fade" id="leaveModal" tabindex="-1" aria-labelledby="leaveModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center" id="exampleModalLabel">회의를 나갑니다</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center">회의를 나갑니다.</div>
				<div class="modal-footer d-flex justify-content-center">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					<button id="btnLeave" type="button" class="btn btn-primary">Leave</button>
				</div>
			</div>
		</div>
	</div>
	
	<form id="meetRoomForm" method="post">
	<input name="hymrSeq" type="hidden" value="${rt.hymrSeq}">
	<input name="hymmSeq" type="hidden" value="${sessSeq}">
	<input name="hostNy" type="hidden" value="${meetRoomHostNy}">
	</form>
	
	
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
	
	async function initCall() {
		await getMedia();
		makeConnection();
		
		const offer = await myPeerConnection.createOffer();
		myPeerConnection.setLocalDescription(offer);
	    console.log("sent the offer");
	    console.log(offer);
	    
	  	client.subscribe("/sub/offer/<c:out value='${ rt.hymrRoomId }'/>", function(event) {
	    	console.log("got an offer");
	    	console.log(event);
	    	console.dir(event);
	    	console.log("시발");
	    	console.log(JSON.parse(event.body));
	    })
	    
	    client.send("/pub/offer", {} , JSON.stringify(offer));
	    
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
		
		/* getMedia(); */
	
	
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
	
	const leaveBtn = document.querySelector("#btnLeave");
	
	leaveBtn.addEventListener("click", leaveRoom);
	/* window.addEventListener('beforeunload', leaveRoom); */
	
	function leaveRoom() {
		
		client.send("/pub/leaveRoom", {}, JSON.stringify({
			"roomId" : "<c:out value='${ rt.hymrRoomId }'/>",
			"msg" : "<c:out value='${ sessName }'/>님이 퇴장하셨습니다.",
			"hostNy" : "${meetRoomHostNy}"
		}));
		
		
		$("#meetRoomForm").attr("action", "/meet/meetLeave").submit();

		/* client.disconnect(); */
	}
	
	
	
	/////////////////////////////////
	function getUserList() {
	
		client.send("/pub/userList", {}, JSON.stringify({
			"hymrSeq" : "<c:out value='${rt.hymrSeq}'/>",
			"roomId" : "<c:out value='${ rt.hymrRoomId }'/>"
		}));
		
	};
	
	/////////////////////////////////
	
	const socket = new SockJS('/stompTest');
	const client = Stomp.over(socket);
	
	client.connect({}, function() {
		console.log("Connected stompTest!");
		console.log(client);
		console.dir(client);
		
		//MeetList 업데이트 해주기
		client.send("/pub/meetRoomList", {}, JSON.stringify({
			"hyspSeq" : "<c:out value='${hyspSeq}'/>"
		}));
		
		 
		// Controller's MessageMapping, header, message(자유형식)
		
		// 입장, 퇴장할 떄 event
		client.subscribe("/sub/message/notice/<c:out value='${ rt.hymrRoomId }'/>", function(event) {
			console.log("subscribing room notice ~ ", event);
			writeChat("Notice!", NOTICE_CN);
			
			const msg = JSON.parse(event.body);
			console.dir(msg);
			
			writeChat(msg.msg);
			
			// 회원이 퇴장한 후 db에서 불러오기 위해 setTimeout 설정 
			if("<c:out value='${meetRoomHostNy}'/>" == "1"){
				setTimeout(getUserList, 3000);
			}
			
		});
		 
		// 채팅메세지 보낼 때 이벤트
		 client.subscribe("/sub/message/chat/<c:out value='${rt.hymrRoomId}'/>", function(event) {
			console.log("subscribing room chat ~ ", event);
			
			const msg = JSON.parse(event.body);
			
			if(msg.writer == "<c:out value='${sessName}'/>"){
				writeChat(msg.writer + " : " + msg.msg, MYCHAT_CN);
			} else {
				writeChat(msg.writer + " : " + msg.msg);
			}
			
		});
		 
		//유저리스트 받는 이벤트
		client.subscribe("/sub/userList/<c:out value='${rt.hymrRoomId}'/>", function(event) {
			console.log("-----------유저 리스트-----------")
			const userArr = JSON.parse(event.body);
			console.log(userArr);
			console.log("-----------유저 리스트-----------")
			
			var length = userArr.length;
						
		});
		 
		client.send("/pub/joinRoom", {}, JSON.stringify({
			"roomId" : "<c:out value='${ rt.hymrRoomId }'/>",
			"msg" : "<c:out value='${ sessName }'/>님이 입장하셨습니다.",
			"hostNy" : "${meetRoomHostNy}"
		}));
		 
		client.subscribe("/sub/initCall/<c:out value='${rt.hymrRoomId}'/>", function(event) {
			console.log("------------------");
			console.log(event);
			initCall();
			console.log("------------------");
		});
		 
		client.send("/pub/initCall", {}, JSON.stringify({
			"roomId" : "<c:out value='${ rt.hymrRoomId }'/>"
		}));
		
	});
	/* 
	window.addEventListener('beforeunload', (event) => {
		// 명세에 따라 preventDefault는 호출해야하며, 기본 동작을 방지합니다. 
		event.preventDefault(); 
		// 대표적으로 Chrome에서는 returnValue 설정이 필요합니다. 
		
		leaveBtn.click();
		
		event.returnValue = 'sadf'; 
	}); 
	
	 */
	 
	 ////////////////   RTC code   //////////////////
	
	 function makeConnection(){
	    myPeerConnection = new RTCPeerConnection({
	        iceServers: [
	            {
	                urls: [
	                    "stun:stun.l.google.com:19302",
	                    "stun:stun1.l.google.com:19302",
	                    "stun:stun2.l.google.com:19302",
	                    "stun:stun3.l.google.com:19302",
	                    "stun:stun4.l.google.com:19302",
	                ],
	            },
	        ],
	    });
        
	    /* myPeerConnection.addEventListener("icecandidate", handleIce);
	    myPeerConnection.addEventListener("addstream", handleAddstream);
	    myStream.getTracks().forEach((track) => myPeerConnection.addTrack(track, myStream)); */
	}

	 
	 
	</script>
	
	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>

	<!--////////////Theme Core scripts End/////////////////-->
	
</body>
</html>