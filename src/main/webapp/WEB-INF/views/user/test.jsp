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

<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />
 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="shortcut icon" href="#">
<style type="text/css">
 video{
        transform: rotateY(180deg);
        -webkit-transform:rotateY(180deg); /* Safari and Chrome */
        -moz-transform:rotateY(180deg); /* Firefox */
    }
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col text-center">
			<span>나</span>
			<video id="myFace" autoplay width="200px" height="200px"></video>
			</div>
			
			<div class="col text-center">
			<span>상대</span>
			<video id="yourFace" autoplay width="200px" height="200px"></video>
			</div>
		</div>
	</div>
	
	<div class="row p-5">
		<div class="col d-flex justify-content-center">
			<input type="text" id="socketInput" placeholder="서버에 전송할 메세지">
			<button type="button" id="socketButton">전송</button>
		</div>
	</div>
	
	<button id="btnOffer">send offer</button>
	<button id="btnPeerConnection">peer connection</button>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<script type="text/javascript">
	
	/////////////////////////////////////////////////////////////////
	//내 비디오 화면에 띄우기
	
	const myFace = document.querySelector("#myFace");
	let myStream = "";
	
	async function getMedia(){
		myStream = await navigator.mediaDevices.getUserMedia({
			audio: false,
			video: true,
		});
		myFace.srcObject = myStream;
		
//		console.log("myStream :", myStream);
//		console.log("audioTracks :", myStream.getAudioTracks());
//		console.log("videoTracks :", myStream.getVideoTracks());
	}
	
	
	/////////////////////////////////////////////////////////////////
	//웹소켓 서버 연결 (시그널링서버)
	
	const socket = new WebSocket('ws://localhost:8091/wsTest');
	//const socket = new WebSocket('wss://tp.heybuddy.a9xlab.com/wsTest');
	
	// 접속 성공 시
	socket.onopen = async function(){
		console.log("웹소켓 접속 성공");
		await getMedia();
		makeConnection();
	}
	
	// 핸들러로부터 메세지 수신 시
	socket.onmessage = function(msg){
		
		const json = JSON.parse(msg.data);
		console.log(json);
		
		if(json.type == "offer"){
			handleOffer(json.content);
		}
		
		if(json.type == "answer"){
			handleAnswer(json.content);
		}
		
		if(json.type == "ice"){
			handleIceCandidate(json.content);
		}
		
	}
	
	// 접속 해제 시
	socket.onclose = function(){
		console.log("Disconnected to the signaling server");
	}
	
	// 웹 소켓 서버(시그널링 서버)에 메세지를 보낼 때 활용할 함수
	function send(message) {
		socket.send(JSON.stringify(message));	// 메세지 보내는 방법
	}
	
	$("#socketButton").on("click", function(){
		send($("#socketInput").val());
	});

	
	// 시그널링
	
	const btnOffer = document.querySelector("#btnOffer");
	btnOffer.addEventListener("click", sendOffer);
	
	const btnPeerConnection = document.querySelector("#btnPeerConnection");
	btnPeerConnection.addEventListener("click", checkCon);
	
	function checkCon(){
		console.log(myPeerConnection);
	}
	
	async function sendOffer(){
		const offer = await myPeerConnection.createOffer();
		myPeerConnection.setLocalDescription(offer);
		send({"type" : "offer", "content" : offer});
	}
	
	async function handleOffer(content){
		const offer = content;
		myPeerConnection.setRemoteDescription(offer);
		const answer = await myPeerConnection.createAnswer();
		myPeerConnection.setLocalDescription(answer);
		send({"type" : "answer" , "content" : answer});
	}
	
	function handleAnswer(content){
		const answer = content;
		myPeerConnection.setRemoteDescription(answer);
	}
	
	function handleIceCandidate(content){
		myPeerConnection.addIceCandidate(content);
	}
	
	function makeConnection(){
		myPeerConnection = new RTCPeerConnection();
		
		myPeerConnection.onicecandidate = handleIce;
		myPeerConnection.onaddstream = handleAddstream;
		myStream.getTracks().forEach((track) => myPeerConnection.addTrack(track, myStream)); 
		
	}
	
	function handleIce(data){
		console.log("handleIce");
		if(data.candidate){
			send({"type" : "ice", "content" : data.candidate});
		}		
	}
	
	function handleAddstream(data){
		console.log("handleAddstream");
		console.log(data.stream);
		
		const yourFace = document.querySelector("#yourFace");
		yourFace.srcObject = data.stream;
	}
	
	</script>
	
	
</body>
</html>