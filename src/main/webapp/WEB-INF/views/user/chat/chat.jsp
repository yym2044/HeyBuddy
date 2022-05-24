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

body {
	background-image: url("/img/Background.png");
	padding-bottom: 1.2rem;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
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
										<!--Chat User-->
										<a href="#!"
											class="list-group-item align-items-center active border-0 list-group-item-action px-3 d-flex py-3">
											<div class="flex-shrink-0">
												<div class="avatar-status status-online me-3 avatar">
													<img src="assets/media/avatars/03.jpg"
														class="rounded-circle img-fluid" alt="">
												</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 flex-grow-1">

														<!--New message badge-->
														<span
															class="ms-1 badge rounded-pill bg-primary size-5 p-0 d-inline-block"></span>
													</h6>
													<small class="opacity-75 ms-auto small">12:24 PM</small>
												</div>
												<p class="mb-0 text-truncate">
													<span>Ut enim ad minim veniam, quis nostrud
														exercitation ullamco</span>
												</p>
											</div>
										</a>

										<!--Chat User-->
										<a href="#!"
											class="list-group-item align-items-center list-group-item-action border-0 px-3 d-flex py-3">
											<div class="flex-shrink-0">
												<div class="avatar-status status-offline me-3 avatar">
													<img src="assets/media/avatars/04.jpg"
														class="rounded-circle img-fluid" alt="">
												</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 text-reset flex-grow-1">Jason Doe</h6>
													<small class=" opacity-75 ms-auto">08:24 AM</small>
												</div>
												<p class="mb-0 text-truncate">
													<span>Sunt in culpa qui officia deserunt mollit anim
														id est laborum.</span>
												</p>
											</div>
										</a>
										<!--Chat User-->
										<a href="#!"
											class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
											<div class="flex-shrink-0">
												<div
													class="avatar-status status-online me-3 avatar d-flex align-items-center justify-content-center bg-primary text-white fw-bolder rounded-circle">
													DJ</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 text-reset flex-grow-1">Dwayne Bravo</h6>
													<small class=" opacity-75 ms-auto">21/07/21</small>
												</div>
												<p class="mb-0 opacity-75 text-truncate">
													<span>Excepteur sint occaecat cupidatat non proident</span>
												</p>
											</div>
										</a>

										<!--Chat User-->
										<a href="#!"
											class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
											<div class="flex-shrink-0">
												<div class="avatar-status status-offline me-3 avatar">
													<img src="assets/media/avatars/05.jpg"
														class="rounded-circle img-fluid" alt="">
												</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 text-reset flex-grow-1">Nikita Miller
													</h6>
													<small class=" opacity-75 ms-auto">07/0721</small>
												</div>
												<p class="mb-0 opacity-75 text-truncate">
													<span>Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur.</span>
												</p>
											</div>
										</a>
										<!--Chat User-->
										<a href="#!"
											class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
											<div class="flex-shrink-0">
												<div
													class="avatar-status status-online me-3 avatar d-flex align-items-center fw-bolder justify-content-center text-white bg-success rounded-circle">
													DA</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 text-reset flex-grow-1">Dylan Ambrose
													</h6>
													<small class=" opacity-75 ms-auto">03/06/21</small>
												</div>
												<p class="mb-0 opacity-75 text-truncate">
													<span>Publishing industries for previewing layouts
														and visual mockups 👍</span>
												</p>
											</div>
										</a>

										<!--Chat User-->
										<a href="#!"
											class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
											<div class="flex-shrink-0">
												<div class="avatar-status status-offline me-3 avatar">
													<img src="assets/media/avatars/02.jpg"
														class="rounded-circle img-fluid" alt="">
												</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 text-reset flex-grow-1">Abriella Bond
													</h6>
													<small class=" opacity-75 ms-auto">21/04/21</small>
												</div>
												<p class="mb-0 opacity-75 text-truncate">
													<span>Lorem ipsum is placeholder text commonly used
														in the graphic, print</span>
												</p>
											</div>
										</a>
										<!--Load more button-->
										<a href="#!"
											class="list-group-item px-3 align-items-center justify-content-center list-group-item-action d-flex py-3">
											<span>Load more</span>
										</a>
									</div>
								</div>

							</div>
						</div>

						<!--content-right-->
													<div class="content-right card rounded-0 align-items-stretch h-100">

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
											<img src="/resources/assets/media/avatars/03.jpg"
												class="rounded-circle img-fluid" alt="">
										</div>
										<div>
											<h5 class="mb-0 lh-1" id="myName">
												<c:out value="${sessName}" />
											</h5>
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
										<div
											class="alert d-none d-md-block border-0 shadow bg-gradient-primary text-white p-5 mb-4">
											<h5>Get more access with our paid plans</h5>
											<p class="text-truncate">Duis aute irure dolor in
												voluptate velit esse cillum dolore eu fugiat nulla pariatur.
											</p>
											<a href="#!" class="btn btn-gray">See upgrade options</a>
										</div>
										<!--Chat divider with day/month-->
										<div
											class="d-flex mb-4 align-items-center justify-content-center">
											<span class="d-block border-top flex-grow-1"></span>
											<div class="text-muted mx-3 small">Today</div>
											<span class="d-block border-top flex-grow-1"></span>
										</div>

										<!--Chat sender-->
										<div class="chat_in mb-4">
											<!--Chat box-->
											<div class="chat_content">
												<!--More dropdown-->
												<div
													class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
													<a href="#" data-bs-toggle="dropdown"> <i
														data-feather="chevron-down" class="fe-2x"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-end">
														<a href="#!" class="dropdown-item">Info</a> <a href="#!"
															class="dropdown-item">Reply</a> <a href="#!"
															class="dropdown-item">Forward</a> <a href="#!"
															class="dropdown-item">Delete</a>
													</div>
												</div>
												<div class="d-flex">
													<!--text-->
													<div class="chat_text">Hi Noah, 🙂</div>
													<!--time-->
													<div class="chat_time">
														<span>12:33 PM</span>
													</div>
												</div>
											</div>
											<!--Chat box-->
											<div class="chat_content">
												<!--More dropdown-->
												<div
													class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
													<a href="#" data-bs-toggle="dropdown"> <i
														data-feather="chevron-down" class="fe-2x"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-end">
														<a href="#!" class="dropdown-item">Info</a> <a href="#!"
															class="dropdown-item">Reply</a> <a href="#!"
															class="dropdown-item">Forward</a> <a href="#!"
															class="dropdown-item">Delete</a>
													</div>
												</div>
												<div class="d-flex">
													<!--text-->
													<div class="chat_text">Lorem ipsum is placeholder
														text commonly used in the graphic, print, and publishing
														industries for previewing layouts and visual mockups.</div>
													<!--time-->
													<div class="chat_time">
														<span>12:34 PM</span>
													</div>
												</div>
											</div>
										</div>

										<!--Chat Self-->
										<div class="chat_out">
											<!--Chat box-->
											<div class="chat_content">
												<!--More dropdown-->
												<div
													class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
													<a class="text-reset" href="#" data-bs-toggle="dropdown">
														<i data-feather="chevron-down" class="fe-2x"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-end">
														<a href="#!" class="dropdown-item">Info</a> <a href="#!"
															class="dropdown-item">Reply</a> <a href="#!"
															class="dropdown-item">Forward</a> <a href="#!"
															class="dropdown-item">Delete</a>
													</div>
												</div>
												<div class="d-flex">
													<!--text-->
													<div class="chat_text">Hi Noah, 🙂</div>
													<!--time-->
													<div class="chat_time">
														<span>12:33 PM</span>
													</div>
												</div>
											</div>
											<!--Chat box-->
											<div class="chat_content">
												<!--More dropdown-->
												<div
													class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
													<a class="text-reset" href="#" data-bs-toggle="dropdown">
														<i data-feather="chevron-down" class="fe-2x"></i>
													</a>
													<div class="dropdown-menu dropdown-menu-end">
														<a href="#!" class="dropdown-item">Info</a> <a href="#!"
															class="dropdown-item">Reply</a> <a href="#!"
															class="dropdown-item">Forward</a> <a href="#!"
															class="dropdown-item">Delete</a>
													</div>
												</div>
												<div class="d-flex">
													<!--text-->
													<div class="chat_text">Lorem ipsum is placeholder
														text commonly used in the graphic, print, and publishing
														industries for previewing layouts and visual mockups.</div>
													<!--time-->
													<div class="chat_time">
														<span>12:34 PM</span>
													</div>
												</div>
											</div>
										</div>


									</div>
								</div>

								<!--content right footer-->
								<div class="content-right-footer card-footer"
									data-dropzone-area="">
									<div class="dz-preview" id="dz-preview-row" data-horizontal-scroll=""></div>
									<form class="chat-form rounded-pill" data-emoji-form="">
										<div class="row align-items-center g-1">

											<div class="col">
												<div class="d-flex align-items-center">
													<textarea id="message" name="message" class="form-control border-0 shadow-none bg-transparent"
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
            let e = new Dropzone("[data-dropzone-area]", {
                url: "https://httpbin.org/post",
                clickable: "#dz-btn",
                previewsContainer: "#dz-preview-row",
                previewTemplate: '\n<div class="theme-file-preview position-relative mx-2">\n<div class="avatar lg dropzone-file-preview">\n<span class="avatar-text rounded bg-secondary text-body file-title">\n<svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>\n</span>\n</div>\n\n<div class="avatar lg dropzone-image-preview">\n        <img src="#" class="avatar-img rounded-3 file-title" data-dz-thumbnail="" alt="" >\n    </div>\n\n    <a class="badge p-0 bg-white bg-opacity-25 text-white rounded-circle position-absolute top-0 end-0 m-1" href="#" data-dz-remove="">\n        <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>\n    </a>\n</div>\n'
            });
            e.on("addedfile", (function (e) {
                    let o = document.querySelectorAll(".theme-file-preview");
                    o = o[o.length - 1].querySelectorAll(".file-title");
                    for (let i = 0; i < o.length; i++) o[i].title = e.name
                })),
                e.on("addedfiles",
                    (function (o) {
                        e.previewsContainer.classList.add("dz-preview-moved", "border-bottom", "pb-2", "mb-3")
                    })),
                e.on("reset",
                    (function (o) {
                        e.previewsContainer.classList.remove("dz-preview-moved", "border-bottom", "pb-2", "mb-3")
                    }))

        </script>

	<!--Chat sidebar toggler-->
	<script>
            $('.content_sidebar_toggler,.content-wrapper-overlay').on("click", function (e) {
                $('.content-expand-md').toggleClass("content_sidebar_show");
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

    var myName = prompt("Enter your name");

    submit.addEventListener('click', (e) => {
        var message = document.getElementById('message').value;
        var name = myName;

        const id = push(child(ref(database), 'messages')).key;

        set(ref(database, 'messages/' + id), {
            name: name,
            message: message
        });
        document.getElementById('message').value = "";
        alert('message has sent');

    });

    const newMsg = ref(database, 'messages/');
    onChildAdded(newMsg, (data) => {
        if(data.val().name != myName) {
            var divData = '<div class="d-flex justify-content-start mb-4" id="fromDiv">\n' +
                '                        <div class="img_cont_msg">\n' +
                '                            <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg"\n' +
                '                                 class="rounded-circle user_img_msg">\n' +
                '                        </div>\n' +
                '                        <div class="msg_cotainer" >\n' +
                '                            '+data.val().message+'' +
                '                            <span class="msg_time"></span>\n' +
                '                        </div>\n' +
                '                    </div>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
        }else{
            var divData = '<div class="d-flex justify-content-end mb-4">\n' +
                '                        <div class="msg_cotainer_send" id="sendDiv">\n' +
                '                            '+data.val().message+'' +
                '                            <span class="msg_time_send">8:55 AM, Today</span>\n' +
                '                        </div>\n' +
                '                        <div class="img_cont_msg">\n' +
                '                            <img src="data:image/jpeg;base64,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"\n' +
                '                                 class="rounded-circle user_img_msg">\n' +
                '                        </div>\n' +
                '                    </div>';
            var d1 = document.getElementById('bodyContent');
            d1.insertAdjacentHTML('beforebegin', divData);
        }
    });

</script>