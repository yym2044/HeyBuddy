<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
<title>hey, Buddy!</title>

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">

<!--Simplebar css-->
<link rel="stylesheet"
	href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/assets/vendor/css/choices.min.css">

<!--dropzone-->
<link rel="stylesheet"
	href="/resources/assets/vendor/css/dropzone.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">

</head>

<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<style>
html {
	height: 100%
}

.header {
	color: white;
}
/* Custom page footer */
#footer {
	position: relative;
	top: 1rem;
	bottom: 0;
	width: 100%;
	height: 2.5rem;
	color: white;
}

h2, h3 {
	padding-top: 2rem;
	font-family: 'Margarine';
	color: white;
	text-align: center;
	margin-bottom: 2rem;
}

h4 {
	color: white;
	font-size: 28px;
}

p, dt {
	font-family: 'Margarine';
	letter-spacing: 0.1rem;
	margin-top: 0rem;
	color: white;
	font-size: 20px;
	margin-bottom: 0.8rem;
}

#chat {
	position: absolute;
	top: 110px;
	right: 250px;
}

#settings {
	position: absolute;
	top: 110px;
	right: 150px;
}

#log-out {
	position: absolute;
	top: 110px;
	right: 50px;
}

#user-name {
	position: absolute;
	top: 60px;
	right: 50px;
}

/*Chat box styling */
.chat {
	width: 95%;
	height: 490px;
	position: relative;
	margin: auto;
}

.chat-window {
	height: 470px;
	overflow-y: scroll;
	padding-bottom: 65px;
	background-color: rgb(255, 255, 255);
	border-radius: 20px;
	-webkit-box-shadow: 22px 24px 18px -10px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 22px 24px 18px -10px rgba(0, 0, 0, 0.35);
	box-shadow: 22px 24px 18px -10px rgba(0, 0, 0, 0.35);
}

#messageForm {
	background-color: rgb(145, 218, 178);
	position: absolute;
	bottom: 0;
	padding: 15px;
	width: 100%;
	border-bottom-left-radius: 20px;
	border-bottom-right-radius: 20px;
}

#msg-input {
	padding: 10px;
	border-radius: 20px;
	width: 85%;
	margin-left: 2%;
}

#msg-btn {
	width: 9%;
	padding: 9px;
	border-radius: 20px;
	cursor: pointer;
	background-color: rgb(5, 190, 144);
	font-size: large;
	color: white;
	font-weight: bold;
	border: none;
	margin-left: 1%;
}

#msg-btn:hover {
	background-color: rgb(5, 153, 116);
}

.msg {
	list-style-type: none;
}

.msg-span {
	display: inline-block;
	padding: 10px;
	border-radius: 20px;
	font-size: large;
	background-color: #fad7bf;
	color: black;
	margin: 15px 5px 0px 0px;
	text-align: left;
}

.name {
	font-weight: bold;
}

.my {
	text-align: right;
}

.my span {
	color: white;
	background-color: rgb(221, 170, 122);
	margin-right: 20px;
}

.my i {
	display: none;
}

/*Scroll styling */

/* width */
#chat-window::-webkit-scrollbar {
	width: 20px;
	height: 50%;
}

/* Track */
#chat-window::-webkit-scrollbar-track {
	box-shadow: inset 0 0 5px grey;
	border-radius: 20px;
}

/* Handle */
#chat-window::-webkit-scrollbar-thumb {
	box-shadow: inset 0 0 5px grey;
	background: rgb(82, 196, 133);
	border-radius: 20px;
}

/* Handle on hover */
#chat-window::-webkit-scrollbar-thumb:hover {
	background: rgb(5, 190, 144);
}

.logo {
	width: 160px;
	height: 160px;
}

.center-logo {
	width: 160px;
	height: 160px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<body>

	<%@include file="../include/loader.jsp"%>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<%@include file="../include/pageSideBar.jsp"%>

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

				<%@include file="../include/pageHeader.jsp"%>

				<!--//Page content//-->
				<div class="px-4 px-lg-8">
					<div class="content content-wrapper content-expand-md">
						<!--Content-wrapper-overlay when sidebar open for 768px down width-->
						<div class="content-wrapper-overlay"></div>
						<!--Content-sidebar-->
						<div class="content-left border-end">
							<div
								class="content-sidebar card rounded-0 align-items-stretch h-100"
								id="content-sidebar">
								<!--content-sidebar-header-->
								<div
									class="content-sidebar-header p-0 border-bottom position-relative">
									<form
										class="position-relative w-100 p-3 height-60 d-flex align-items-center">
										<div
											class="position-absolute start-0 top-50 translate-middle-y opacity-50 lh-1 ms-3">
											<i data-feather="search" class="fe-1x"></i>
										</div>
										<input type="text"
											class="form-control px-5 bg-transparent border-0 py-0 shadow-none"
											placeholder="Start new chat">
										<button type="button"
											class="btn d-md-none content_sidebar_toggler p-0 size-30 rounded-circle flex-center position-absolute shadow-none end-0 me-2 top-50 translate-middle-y text-body">
											<i data-feather="x" class="fe-2x"></i>
										</button>
									</form>
								</div>

								<!--content-sidebar-body-->
								<div class="content-sidebar-body p-0 card-body">
									<div class="list-group list-group-flush mb-0">







										<div class="list-group list-group-flush mb-0">

											<c:forEach items="${list}" var="item" varStatus="status">
												<!--Chat User-->
												<a href="#!"
													class="list-group-item align-items-center active border-0 list-group-item-action px-3 d-flex py-3">
													<div class="flex-shrink-0">
														<div class="avatar-status status-online me-3 avatar">
															<c:choose>
																<c:when test="${empty item.uuidFileName}">
																	<img style="width: 100%; height: 100%;"
																		src="/resources/user/images/profileDefault.png"
																		class="flex-shrink-0 rounded-3 width-80" alt="">
																</c:when>
																<c:otherwise>
																	<img style="width: 100%; height: 100%;"
																		src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>"
																		class="flex-shrink-0 rounded-3 width-80" alt="">
																</c:otherwise>
															</c:choose>
														</div>
													</div>
													<div class="overflow-hidden flex-grow-1">
														<div class="d-flex">
															<h6 class="mb-0 flex-grow-1">
																<c:out value="${item.hymmName}" />
																<!--New message badge-->
																<span
																	class="ms-1 badge rounded-pill bg-primary size-5 p-0 d-inline-block"></span>
															</h6>
															<small class="opacity-75 ms-auto small"><c:choose>
															<c:when test="${item.hymmSeq eq sessSeq}">
																<span class="badge rounded-pill bg-primary">ME</span>
															</c:when>
															<c:otherwise>

															</c:otherwise>
														</c:choose></small>
														</div>
													
													</div>
												</a>

											</c:forEach>






											<!--Load more button-->
											<a href="#!"
												class="list-group-item px-3 align-items-center justify-content-center list-group-item-action d-flex py-3">
												<span>Load more</span>
											</a>
										</div>

									</div>
								</div>

							</div>
						</div>

						<!--content-right-->
						<div
							class="content-right card rounded-0 align-items-stretch h-100">

							<!--content right Header-->
							<div class="content-right-header card-header px-4 border-bottom">

								<div class="me-3 d-md-none">
									<button type="button"
										class="content_sidebar_toggler text-body border-0 p-0 bg-transparent">
										<i data-feather="menu" class="fe-1x"></i>
									</button>
								</div>
								<div class="me-auto d-flex align-items-center">
									<div
										class="avatar-status d-none d-sm-flex status-online me-3 flex-shrink-0 avatar">
										<img src="" class="rounded-circle img-fluid" alt="">
									</div>
									<div>
										<h5 class="mb-0 lh-1" id="myName"></h5>
										<span class="small lh-sm d-none d-sm-block">Active now</span>
									</div>
								</div>
								<!--Buttons group-->
								<div class="d-flex align-items-center">
									<a href="#!" class="text-body me-3"> <i class="fe-1x"
										data-feather="video"></i>
									</a> <a href="#!" class="text-body me-3"> <i class="fe-1x"
										data-feather="phone"></i>
									</a>
									<div>
										<a href="#" data-bs-toggle="dropdown" class="text-body"
											aria-expanded="false"> <i data-feather="more-vertical"
											class="fe-1x"></i>
										</a>
										<div class="dropdown-menu dropdown-menu-end mt-1">
											<a href="#!.html" class="dropdown-item"><i
												data-feather="user" class="fe-1x me-2 opacity-50"></i>Sender's
												profile</a> <a href="#!.html" class="dropdown-item"><i
												data-feather="archive" class="fe-1x me-2 opacity-50"></i>Archive
												Chat</a> <a href="#!.html" class="dropdown-item"><i
												data-feather="trash-2" class="fe-1x me-2 opacity-50"></i>Delete
												Chat</a> <a href="#!.html" class="dropdown-item"><i
												data-feather="slash" class="fe-1x me-2 opacity-50"></i>Block
												Sender</a>
										</div>
									</div>
								</div>
							</div>

							<!--content-right body-->
							<div class="content-right-body card-body">
								<div class="flex-row-fluid ">

									<!--Alert-->

									<!--Chat divider with day/month-->
									<div
										class="d-flex mb-4 align-items-center justify-content-center">
										<span class="d-block border-top flex-grow-1"></span>
										<div class="text-muted mx-3 small">Today</div>
										<span class="d-block border-top flex-grow-1"></span>
									</div>

									<!--Chat sender-->


									<div class="card-body msg_card_body" id="bodyContent"></div>
								</div>
							</div>

							<!--content right footer-->
							<div class="content-right-footer card-footer"
								data-dropzone-area="">
								<div class="dz-preview" id="dz-preview-row"
									data-horizontal-scroll=""></div>
								<form class="chat-form rounded-pill" data-emoji-form="">
									<div class="row align-items-center g-1">

										<div class="col">
											<div class="d-flex align-items-center">
												<textarea id="message" name="message"
													class="form-control border-0 shadow-none bg-transparent"
													placeholder="Type your message..." rows="1"
													data-emoji-input="" data-autosize="true"></textarea>
											</div>
										</div>

										<div class="col-auto">
											<div class="btn-group">
												<button type="button"
													class="btn p-0 size-40 btn-outline-gray border text-muted d-flex align-items-center justify-content-center dz-clickable"
													id="dz-btn">
													<i data-feather="paperclip" class="fe-1x"></i>
												</button>
												<button type="button"
													class="btn p-0 size-40 btn-outline-gray border text-muted d-flex align-items-center justify-content-center">
													<i class="fe-1x" data-feather="smile"></i>
												</button>
												<button type="button" id="submit"
													class="btn p-0 size-40 text-body btn p-0 size-40 btn-outline-gray border text-muted d-flex align-items-center justify-content-center">
													<i class="fe-1x" data-feather="send"></i>
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>





						<!-- 						<div class="chat">
							<div class="chat-window" id="chat-window">
								<ul id="messages">
									<li class="msg"><span class="msg-span"> <i
											class="name">Host: </i>Hello and welcome to the chat!
									</span></li>
									<li class="msg my"><span class="msg-span"> <i
											class="name">Me: </i>My message is on the right
									</span></li>
								</ul>
								<form id="messageForm" autocomplete="off">
									<input type="text" id="msg-input" placeholder="Enter a message">
									<button id="msg-btn" type="submit">Send</button>
								</form>
							</div>
						</div> -->



					</div>
				</div>
				<!--//Page content End//-->


			</main>
			<!--///////////Page content wrapper End///////////////-->
		</div>
	</div>

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->
	<script src="https://www.gstatic.com/firebasejs/7.8.1/firebase-app.js"></script>

	<script src="/resources/assets/vendor/dropzone.min.js"></script>
	<script>
		let e = new Dropzone(
				"[data-dropzone-area]",
				{
					url : "https://httpbin.org/post",
					clickable : "#dz-btn",
					previewsContainer : "#dz-preview-row",
					previewTemplate : '\n<div class="theme-file-preview position-relative mx-2">\n<div class="avatar lg dropzone-file-preview">\n<span class="avatar-text rounded bg-secondary text-body file-title">\n<svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>\n</span>\n</div>\n\n<div class="avatar lg dropzone-image-preview">\n        <img src="#" class="avatar-img rounded-3 file-title" data-dz-thumbnail="" alt="" >\n    </div>\n\n    <a class="badge p-0 bg-white bg-opacity-25 text-white rounded-circle position-absolute top-0 end-0 m-1" href="#" data-dz-remove="">\n        <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>\n    </a>\n</div>\n'
				});
		e.on("addedfile", (function(e) {
			let o = document.querySelectorAll(".theme-file-preview");
			o = o[o.length - 1].querySelectorAll(".file-title");
			for (let i = 0; i < o.length; i++)
				o[i].title = e.name
		})), e.on("addedfiles", (function(o) {
			e.previewsContainer.classList.add("dz-preview-moved",
					"border-bottom", "pb-2", "mb-3")
		})), e.on("reset", (function(o) {
			e.previewsContainer.classList.remove("dz-preview-moved",
					"border-bottom", "pb-2", "mb-3")
		}))
	</script>

	<!--Chat sidebar toggler-->
	<script>
		$('.content_sidebar_toggler,.content-wrapper-overlay')
				.on(
						"click",
						function(e) {
							$('.content-expand-md').toggleClass(
									"content_sidebar_show");
						});
	</script>


	<!-- 사이드바 Hover 유지시켜주는 작업-->
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');
		console.log(sidebarLink);

		console.log(sidebarLink[1]);

		sidebarLink[1].className += ' current';
	</script>



</body>
</html>
<script type="module">
    // Import the functions you need from the SDKs you need
    import {initializeApp} from "https://www.gstatic.com/firebasejs/9.6.6/firebase-app.js";
    import {
        getDatabase,
        set,
        ref,
        push,
        child,
        onValue,
        onChildAdded
    } from "https://www.gstatic.com/firebasejs/9.6.6/firebase-database.js";


    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
 const firebaseConfig = {
	apiKey: "AIzaSyAFBcVqLBg2dZ3-dRVvoq7dNqRc2bsxlVY",
	authDomain: "heybuddy-b3735.firebaseapp.com",
	databaseURL: "https://heybuddy-b3735-default-rtdb.firebaseio.com",
	projectId: "heybuddy-b3735",
	storageBucket: "heybuddy-b3735.appspot.com",
	messagingSenderId: "621505432743",
	appId: "1:621505432743:web:36139966644ae80ea45f82"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
    const database = getDatabase(app);

   var myName = '<c:out value="${sessName}"/>';
   var mySpace = '<c:out value="${hyspSeq}"/>';

    submit.addEventListener('click', (e) => {
        var message = document.getElementById('message').value;
        var name = myName;
		var space = mySpace;

        const id = push(child(ref(database), 'messages')).key;

        set(ref(database, 'messages/' + id), {
            name: name,
            message: message,
			space: space
        });
        document.getElementById('message').value = "";
        alert('message has sent');

    });

    const newMsg = ref(database, 'messages/');
    onChildAdded(newMsg, (data) => {
        if(data.val().name != myName && data.val().space == mySpace) {
            var divData = '<div class="chat_in">\n' +
						'<div class="chat_content">\n' +
						'<div class="d-flex">\n' +
						'<div class="chat_text">\n'+ 
						''+data.val().message+'' +
						'</div>\n' +
						'<div class="chat_time">\n' +
						'<span>'+data.val().name+'</span>\n' +
						'</div>\n' +
						'</div>\n' +
						'</div>\n' +
						'</div>';
			var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
        }else if(data.val().name == myName && data.val().space == mySpace){
            var divData = '<div class="chat_out">\n' +
						'<div class="chat_content">\n' +
						'<div class="d-flex">\n' + 
						'<div class="chat_text">\n'+ 
						''+data.val().message+'' +
						'</div>\n' +
						'<div class="chat_time">\n' +
						'<span>'+data.val().name+'</span>\n' +
						'</div>\n' +
						'</div>\n' +
						'</div>\n' +
						'</div>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
        }
    });

</script>