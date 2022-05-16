<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>

<head>
    <title>WebRTC demo</title>
    
    <!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
	
	<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
</head>
<style>
    .container {
        background: rgb(148, 144, 144);
        margin: 50px auto;
        max-width: 80%;
        text-align: center;
        padding: 2%;
    }

    button {
        margin: 1em;
    }

    input {
        margin-top: 1em;
    }

    .footer {
        background: rgb(148, 144, 144);
        text-align: center;
        padding: 2%;
        position: absolute;
        bottom: 0;
        width: 100%;
    }
</style>

<link rel="shortcut icon" href="#">

<body>

<div class="container">
    
    <!-- 
    <h1>A Demo for messaging in WebRTC</h1>
     -->
    
    <h1>방 아이디 : <c:out value="${rt.hymrRoomId}"/></h1> 
    <h1>방 이름 : <c:out value="${rt.hymrRoomName}"/></h1> 
     
    <input id="msg" type="text" placeholder="send a msg">
    <button type="button" onclick="SendMsgToSig()">Send</button>

    <h3>
        Run two instances of this webpage along with the server to test this
        application.<br> Create an offer, and then send the message. <br>Check
        the browser console to see the output.
    </h3>
    <div class="row">
    
		<div class="col-6">
			<h1 id="myName"><c:out value="${sessName}"/></h1>
			<video id="myFace" autoplay style="width:400px; height:300px;"></video>
			<div class="text-center pb-3" style="width: 100%;">
				 <button type="button" id="btnMic" class="btn btn-lg rounded-circle" style="background-color: white">
				 	<i class="bi bi-mic"></i>
				 </button>
				 <button type="button" id="btnCam" class="btn btn-lg rounded-circle" style="background-color: white">
				 	<i class="bi bi-camera-video"></i>
				 </button>
			</div>
		</div>
		
		<div class="col-6">
			<h1>Peer</h1>
			<video id="peerFace" autoplay style="width: 400px; height: 300px;"></video>
		</div>
		
	</div>

    <!--WebRTC related code-->
    <button type="button" class="btn btn-primary" onclick='createOffer()'>Create
        Offer</button>
    <input id="messageInput" type="text" class="form-control"
           placeholder="message">
    <button type="button" class="btn btn-primary" onclick='sendMessage()'>SEND</button>
    
	<!-- <script type="text/javascript">
	var socket = null;
	
	function connect() {
		var ws = new WebSocket("ws://localhost:8091/socket?1234");
		socket = ws;
		
		ws.onopen = function() {
			console.log('Info: connection opened.');
		};
		ws.onmessage = function(event) {
			console.log("ReceiveMessage:" + event.data+"\n");
		}
		ws.onclose = function(event) {
			console.log('Info: connection closed.'); 
			setTimeout( function(){
				connect();
			}, 1000);
		};
		ws.onerror = function(err) {
			console.log('Error:', err); 
		};
	}
	
	connect();
	
	</script> -->
	
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" integrity="sha512-iKDtgDyTHjAitUDdLljGhenhPwrbBfqTKWO1mkhSFH3A7blITC9MhYon6SjnMhp4o0rADGw9yAC6EW4t5a4K3g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
    <!-- <script src="/resources/user/js/client.js"></script> -->
    
    <script type="text/javascript">
    const socket = new SockJS('/stompTest');
    const client = Stomp.over(socket);
    const myName = document.querySelector("#myName").innerText;

    let msg;

    function SendMsgToSig(){
    	msg = document.querySelector('#msg');
    	client.send("/pub/TTT", {}, JSON.stringify({
    		roomId : "<c:out value="${rt.hymrRoomId}"/>",
    		writer : myName,
    		message : msg.value
    	}));
    	msg.value = "";
    	
    	
    	
    }

    client.connect({}, function () {
    	console.log("Connected stompTest!");
    	
    	// Controller's MessageMapping, header, message(자유형식)
    	client.subscribe("/sub/message/<c:out value="${rt.hymrRoomId}"/>", function(event) {
    		console.log("subscribing room ~ ", event);
    	});
    	
    	client.send("/pub/TTT", {}, "<c:out value="${sessName}"/>님이 입장하셨습니다.");
    	
    	
    });
    </script>
	    
    <!--WebRTC related code-->

	
		
</div>

</body>

</html>