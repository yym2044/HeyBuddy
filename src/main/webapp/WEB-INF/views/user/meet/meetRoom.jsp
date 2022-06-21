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
 
<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />

<link rel="stylesheet" href="/resources/user/css/meet/meetRoom/style.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<link rel="shortcut icon" href="#">

<title>hey, Buddy!</title>
</head>
<body>
	<button id="btnOffer" style="display: none;">send offer</button>
	<button id="btnMyPeerConnection" style="display: none;">myPeerConnection</button>

	<%@include file="../include/loader.jsp"%>
	
	<header>
		<i class="fab fa-pied-piper-square fa-2x"></i>
		<h1>
			<c:out value="${rt.hymrRoomName}" />
		</h1>
		<div class="col text-end me-5">
			<button id="leave" data-bs-target="#leaveModal" data-bs-toggle="modal">Leave</button>
		</div>
	</header>
	<main>
		<div class="call" id="call">
			<div id="streamBox">
				<div id="streams">
					<div class="people1" id="myStream">
						<video id="myFace" autoplay playsinline width="400px" height="400px"></video>
						<h3 class="userNickname"><c:out value="${sessName}"/></h3>
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
					<!-- 
						<button id="leave" data-bs-target="#leaveModal" data-bs-toggle="modal">Leave</button>
					 -->
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!-- <script src="/resources/user/js/meet/meetRoom/client.js"></script> -->
	
	<script type="text/javascript">
	const sock = new SockJS('/stompTest');
	const client = Stomp.over(sock);
	
	client.connect({}, function(){
		console.log("Connected to stomp!");
		
		client.send("/pub/meetRoomList", {}, JSON.stringify({
			"msg" : "give me rooms"
		}));
	});
	
	
	window.onbeforeunload = handleUnload;
	window.onunload = handleUnload;
	
	function handleUnload(event){
		$.ajax({
			async: true
			, cache: false
			, type: "post"
			, url: "/meet/meetLeaveAjax"
			, data : { "hymmSeq" : '<c:out value="${sessSeq}"/>' , "hymrSeq" : '<c:out value="${rt.hymrSeq}"/>' , "hostNy" : '<c:out value="${meetRoomHostNy}"/>' }
			, success: function(data){
				
				client.send("/pub/meetRoomList", {}, JSON.stringify({
					"msg" : "give me rooms"
				}));
				
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	}
	</script>
	
	<script type="text/javascript">
	const myFace = document.querySelector("#myFace");
	const muteBtn = document.querySelector("#mute");
	const muteIcon = muteBtn.querySelector(".muteIcon");
	const unMuteIcon = muteBtn.querySelector(".unMuteIcon");
	const cameraBtn = document.querySelector("#camera");
	const cameraIcon = cameraBtn.querySelector(".cameraIcon");
	const unCameraIcon = cameraBtn.querySelector(".unCameraIcon");
	const camerasSelect = document.querySelector("#cameras");
	
	const HIDDEN_CN = "hidden";
	
	let myStream;
	let muted;
	unMuteIcon.classList.add(HIDDEN_CN);
	let cameraOff;
	unCameraIcon.classList.add(HIDDEN_CN);
	
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
		    //myFace.muted = true;
		    
		    if(localStorage.getItem("videoMuteNy") == 1){
			    myStream.getVideoTracks().forEach((track) => (track.enabled = false));
			    cameraOff = true;
			    cameraIcon.classList.add(HIDDEN_CN);
			    unCameraIcon.classList.remove(HIDDEN_CN);
		    } else {
		    	cameraOff = false;
		    	cameraIcon.classList.remove(HIDDEN_CN);
			    unCameraIcon.classList.add(HIDDEN_CN);
		    }
		    if(localStorage.getItem("audioMuteNy") == 1){
		    	myStream.getAudioTracks().forEach((track) => (track.enabled = false));
		    	muted = true;
		    	unMuteIcon.classList.add(HIDDEN_CN);
			    muteIcon.classList.remove(HIDDEN_CN);
		    } else {
		    	muted = false;
		    	unMuteIcon.classList.remove(HIDDEN_CN);
			    muteIcon.classList.add(HIDDEN_CN);
		    }
		    
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
		  myStream
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
		  myStream
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
			  } catch (error) {
			    console.log(error);
			  }
			}

			muteBtn.addEventListener("click", handleMuteClick);
			cameraBtn.addEventListener("click", handleCameraClick);
			camerasSelect.addEventListener("input", handleCameraChange);
	
	
	///////////////////////////////////////////////////
	
	const chatForm = document.querySelector("#chatForm");
	const chatBox = document.querySelector("#chatBox");
	
	chatBox.scrollTop = chatBox.scrollHeight;
	
	const MYCHAT_CN = "myChat";
	const NOTICE_CN = "noticeChat";
	
	let userNum = 1;
	let pcObj = {
		//remoteSocketId
	};
	
	chatForm.addEventListener("submit", handleChatSubmit);
	
	function handleChatSubmit(event) {
		event.preventDefault();
		const chatInput = chatForm.querySelector("input");
		const message = chatInput.value;
		chatInput.value = "";
		chatInput.focus();
		send({roomId : "<c:out value='${rt.hymrSeq}'/>", sender : "<c:out value='${sessName}'/>", type : "Chat", msg : message});
		writeChat("<c:out value='${sessName}'/>" + " : " + message, MYCHAT_CN);
	}
	
	///////////////////////////////////////////////////
	
	///////////////////////////////////////////////////
	const leaveBtn = document.querySelector("#btnLeave");
	
	leaveBtn.addEventListener("click", leaveRoom);
	
	function leaveRoom() {
		
		send({roomId : "<c:out value='${rt.hymrSeq}'/>", sender : "<c:out value='${sessName}'/>", type : "LEAVE"});
		
		$("#meetRoomForm").attr("action", "/meet/meetLeave").submit();

	}
	
	function removeStream(socketIdLeave){
		const streams = document.querySelector("#streams");
		const streamArr = streams.querySelectorAll("div");
		streamArr.forEach((stream) => {
			if (stream.id === socketIdLeave) {
				streams.removeChild(stream);
			}
		});
		
		sortStreams(userNum);
	}
	
	
	///////////////////////////////////////////////////
	
	
	
		
		
		
		/*   
		var confirmationMessage = "잠깐";
		
		(event || window.event).preventDefault();
		(event || window.event).returnValue = confirmationMessage;
		 */
		//return confirmationMessage;
		
	
	

	/* 
	window.onbeforeunload = (event) => {
		
		$.ajax({
			async: false
			, cache: false
			, type: "post"
			, url: "/meet/meetLeaveAjax"
			, data : { "hymmSeq" : '<c:out value="${sessSeq}"/>' , "hymrSeq" : '<c:out value="${rt.hymrSeq}"/>' , "hostNy" : '<c:out value="${meetRoomHostNy}"/>' }
			, success: function(data){
				
				console.log(data);
				
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		 
		event.preventDefault();
		event.returnValue = '잠깐';
	}
	  */
	console.log(window);
	
	///////////////////////////////////////////////////
	
	// sockjs 사용 시 httpSession 바인딩이 안됨.
	/* const socket = new SockJS('/ws'); */
	//const socket = new WebSocket('ws://localhost:8091/ws');
	const socket = new WebSocket('wss://tp.heybuddy.a9xlab.com/ws');
	
	socket.onopen = async function(e){
		console.log('Info: connection opened.');
		console.log(socket);
		await getMedia();
		send({roomId : "<c:out value='${ rt.hymrSeq }'/>", sender : "<c:out value='${sessName}'/>", type : "ENTER"});
	};
	
	socket.onmessage = async function(event) {
		//JSON형태의 String
//		console.log(event.data);
		
		//JSON Object
		var content = JSON.parse(event.data);
//		console.log(content);
		
		var type = content.type;
//		console.log("type : ",type);
		
		switch (type) {
			
			case "USER" :
				if(content.sessName != '<c:out value="${sessName}"/>'){		//본인이 아닌경우에만
					console.log("new User! Let's make new Connection");
					console.log(content);
					
					const newPc = createConnection(
						content.socket_id
						,content.sessName
					);
					
					const offer = await newPc.createOffer();
					await newPc.setLocalDescription(offer);
					console.log(offer);
					
					console.log("!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
					console.log(newPc);
					console.log("!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
					console.log(pcObj);
					
					send({roomId : "<c:out value='${rt.hymrSeq}'/>", sender : "<c:out value='${sessName}'/>", type : "OFFER", CONTENT : offer, socketId : content.socket_id, nickName : content.sessName});
					
				}
				break;
			case "ENTER" :
				writeChat("Notice!", NOTICE_CN);
				writeChat(content.sender + "님이 입장하셨습니다.");
				
				userNum++;
				
				break;
			case "LEAVE" :
				writeChat("Notice!", NOTICE_CN);
				writeChat(content.sender + "님이 나가셨습니다.");
				
				userNum--;
				
				removeStream(content.socketIdLeave);
				document.querySelector("#myStream").className = "people" + userNum;
				
				break;
			case "Chat" :
				writeChat(content.sender + " : " + content.msg);
				break;
			// Offer를 받고 Answer 만들고 전송
			case "OFFER" :
				handleOffer(content);
				break;
			case "ANSWER" :
				handleAnswer(content);
				break;
			case "ICE" :
				handleIceCandidate(content);
				break;
			default:
				break;
		
		}
		
	};
	
	socket.onclose = function(event) { console.log('Info: connection closed.'); };
	socket.onerror = function(err) { console.log('Error:', err)}; ;
	
	
	function send(message) {
		socket.send(JSON.stringify(message));
	}
	
	function writeChat(message, className = null){
		const li = document.createElement("li");
		const span = document.createElement("span");
		span.innerText = message;
		li.appendChild(span);
		li.classList.add(className);
		chatBox.prepend(li);
	}
	
	// offer생성 후 offer 보내기
	async function sendOffer(){
		
		const offer = await myPeerConnection.createOffer();
		myPeerConnection.setLocalDescription(offer);
		console.log("now I have an offer");
		console.log(offer);
		
		send({roomId : "<c:out value='${rt.hymrSeq}'/>", sender : "<c:out value='${sessName}'/>", type : "OFFER", CONTENT : offer});
	}
	
	async function handleOffer(content){
		
		const newPc = createConnection(
					content.socketIdOffer,
					content.nickNameOffer
				);
		
		const offer = content.CONTENT;
		
		await newPc.setRemoteDescription(offer);
		const answer = await newPc.createAnswer();
		await newPc.setLocalDescription(answer);
		console.log("now I have an answer");
		console.log(answer);
		
		send({roomId : "<c:out value='${rt.hymrSeq}'/>", sender : "<c:out value='${sessName}'/>", type : "ANSWER", CONTENT : answer, socketId : content.socketIdOffer});
		
	}
	
	async function handleAnswer(content){
		const answer = content.CONTENT;
		console.log(answer);
		await pcObj[content.socketIdAnswer].setRemoteDescription(answer);
	}
	
	async function handleIceCandidate(content){
		
		console.log("received candidate");
		
		const ice = content.CONTENT;
		await pcObj[content.socketIdIce].addIceCandidate(ice);
	}
	
	
	////////////////RTC code   //////////////////
	
	function createConnection(remoteSocketId, remoteNickname){
		const myPeerConnection = new RTCPeerConnection({
			iceServers: [
				{
					urls: [
						"stun:stun.l.google.com:19302",
	                    "stun:stun1.l.google.com:19302",
	                    "stun:stun2.l.google.com:19302",
	                    "stun:stun3.l.google.com:19302",
					],
				},
			],
		});
//		myPeerConnection.addEventListener("icecandidate", handleIce);
//		myPeerConnection.onicecandidate = handleIce;

		/* myPeerConnection.addEventListener("icecandidate", (event) => {
			handleIce(event, remoteSocketId);
		}); */
		/* myPeerConnection.addEventListener("addstream", (event) => {
			handleAddStream(event, remoteSocketId, remoteNickname);
		}); */
		
		myPeerConnection.onicecandidate = (event) => {
			handleIce(event, remoteSocketId);
		}
		myPeerConnection.onaddstream = (event) => {
			handleAddStream(event, remoteSocketId, remoteNickname);
		}
		
		myStream.getTracks().forEach((track) => myPeerConnection.addTrack(track, myStream));
		
		pcObj[remoteSocketId] = myPeerConnection;
		
		return myPeerConnection;
	}
	
	function handleIce(event, remoteSocketId) {
//		console.log("handleIce Event Occured!");
		console.log(event);
//		console.log(remoteSocketId);
		
		if(event.candidate) {
			send({roomId : "<c:out value='${rt.hymrSeq}'/>", sender : "<c:out value='${sessName}'/>", type : "ICE", CONTENT : event.candidate, socketId : remoteSocketId});
		}

	}
	
	function handleAddStream(event, remoteSocketId, remoteNickname){
		const peerStream = event.stream;
		console.log("handleAddStream Event Occured!");
		console.log("peerStream :" , peerStream);
		
		paintPeerFace(peerStream, remoteSocketId, remoteNickname);
	}
	
	function paintPeerFace(peerStream, id, remoteNickname) {
		const streams = document.querySelector("#streams");
		const div = document.createElement("div");
		div.id = id;
		const video = document.createElement("video");
		video.autoplay = true;
		video.playsInline = true;
		video.width = "400px";
		video.height = "400px";
		video.srcObject = peerStream;
		const nicknameContainer = document.createElement("h3");
		nicknameContainer.className = "userNickname";
		nicknameContainer.innerText = remoteNickname;
		
		div.appendChild(video);
		div.appendChild(nicknameContainer);
		streams.appendChild(div);
		
		sortStreams(userNum); 
	}
	
	function sortStreams(userNum){
		const streams = document.querySelector("#streams");
		const streamArr = streams.querySelectorAll("div");
		streamArr.forEach((stream) => (stream.className = 'people' + userNum));
	}
	
	const btnOffer = document.getElementById('btnOffer');
	btnOffer.addEventListener("click", alertMyStream);
	
	function alertMyStream(){
		//alert(myStream.id);
		console.log(myStream.getVideoTracks());		
	};
	
	/* const btnMyPeerConnection = document.getElementById("btnMyPeerConnection");
	btnMyPeerConnection.addEventListener("click", function(){
		console.log(myPeerConnection);
	}); */
	
	const btnMyPeerConnection = document.getElementById("btnMyPeerConnection");
	btnMyPeerConnection.addEventListener("click", function(){
		console.log(pcObj);
		console.dir(pcObj);
	});
			
	</script>
	
	<script type="text/javascript">
	const socketOnline = new WebSocket('wss://tp.heybuddy.a9xlab.com/online');
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