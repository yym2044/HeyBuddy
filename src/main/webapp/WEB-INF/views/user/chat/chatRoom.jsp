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
<title id="ctl00_headerTitle">hey, Buddy!</title>

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--dropzone-->
<link rel="stylesheet" href="/resources/assets/vendor/css/dropzone.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

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
	<form id="chatRoom" name="chatRoom" method="post">
		<input type="hidden" id="hycrSeq" name="hycrSeq">
		<input type="hidden" id="chatRoom" name="chatRoom">
		<input type="hidden" id="hymmName" name="hymmName">
		<%@include file="../include/loader.jsp"%>
		<!--App Start-->
		<div class="d-flex flex-column flex-root">
			<!--Page-->
			<div class="page d-flex flex-row flex-column-fluid">
				<%@include file="../include/pageSideBar.jsp"%>
				<!--///////////Page content wrapper///////////////-->
				<main class="page-content d-flex flex-column flex-row-fluid">
				
					<%@include file="../include/pageHeader.jsp" %>
					<!--//Page content//-->
					<div class="px-4 px-lg-8">
					
							
									<div class="card list-group mb-0">
							
											<c:forEach items="${list}" var="item" varStatus="status">
												<!--Chat User-->
												<a href="javascript:goRoom(<c:out value="${item.hycrSeq}"/>);"
													class="list-group-item align-items-center list-group-item-action px-3 d-flex py-3">
													<div class="flex-shrink-0">
														<div class="me-3 avatar">
															<c:choose>
																<c:when test="${empty item.uuidFileName}">
																	<img style="width: 100%; height: 100%;"
																		src="/resources/user/images/gathering1.png"
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
															
																<%-- <c:out value="${item.hymmName}" />,<c:out value="${sessName}" /> --%>
																<c:choose>
																<c:when test="${item.hycrGroupNy == 1}"><h6 class="mb-0 flex-grow-1"><c:out value="${item.hycrSeq}" /> . 그룹채팅방 </h6>
																</c:when>
																<c:otherwise>
										<h6 class="mb-0 flex-grow-1"><c:out value="${item.hycrSeq}" /> . <c:out value="${item.hymmName}" />, <c:out value="${sessName}" /> 채팅방 </h6>						
																</c:otherwise>
																</c:choose>
																
															
															<small class="opacity-75 ms-auto small"> <%-- <c:choose>
															<c:when test="${item.hymmSeq eq sessSeq}">
																<span class="badge rounded-pill bg-primary">ME</span>
															</c:when>
															<c:otherwise>

															</c:otherwise>
														</c:choose> --%>
															</small>
														</div>
													</div>
												</a>
											</c:forEach>


									</div>
				
					<!--//Page content End//-->
				</main>
				<!--///////////Page content wrapper End///////////////-->
			</div>
		</div>
	</form>
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

	<script type="text/javascript">
	<!--Chat sidebar toggler-->

		$('.content_sidebar_toggler,.content-wrapper-overlay').on("click", function(e) {
							$('.content-expand-md').toggleClass(
									"content_sidebar_show");
						});

		
		logOut = function() {
			$.ajax({
				async : true,
				cache : false,
				type : "post",
				url : "/member/logoutProc",
				success : function(response) {
					if (response.rt == "success") {
						location.href = "/login/userLogin";
					} else {
						alert("로그아웃 실패");
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : "
							+ jqXHR.errorThrown);
				}
			});
		}

		
	<!-- 사이드바 Hover 유지시켜주는 작업-->
	
		const sidebarLink = document.querySelectorAll('.Sidebar-link');
		console.log(sidebarLink);
		console.log(sidebarLink[1]);
		sidebarLink[1].className += ' current';

	
	goRoom = function(seq) {
		$("#hycrSeq").val(seq);
		$("#chatRoom").attr("action", "/chat/chat");
		$("#chatRoom").submit();
	}
	
	
	</script>
	<%@include file="../include/pageScripts.jsp"%>
</body>
</html>