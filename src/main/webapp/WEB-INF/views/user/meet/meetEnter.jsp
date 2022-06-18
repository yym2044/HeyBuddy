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

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">
<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">
</head>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<body>

	<form id="meetEnterForm" method="post">
	
	<input type="hidden" id="hymrSeq" name="hymrSeq" value="${rt.hymrSeq}">
	<input type="hidden" id="hymmSeq" name="hymmSeq" value="${sessSeq }">
	<input type="hidden" id="hymmName" name="hymmName" value="${sessName }">

	<%@include file="../include/loader.jsp"%>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">
		
			<%@include file="../include/pageSideBar.jsp"%>

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

				<%@include file="../include/pageHeader.jsp"%>

				<!--//Page Toolbar//-->
				<!-- 
				<div class="toolbar pt-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-4 mb-md-0">
								<h3 class="mb-2">화상회의</h3>

								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0">
										<li class="breadcrumb-item"><a href="index.html">Home</a></li>
										<li class="breadcrumb-item active">화상회의</li>
									</ol>
								</nav>
							</div>
							<div class="col-md-4 text-md-end" style="padding-right: 30px;">
			                    <a href="#!.html" class="btn rounded-pill btn-danger text-truncate">회의 시작</a>
			                </div>
						</div>
					</div>
				</div>
				 -->
				<!--//Page Toolbar End//-->

				<!--//Page content//-->
				<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">

						<div class="row mb-3">
							<div class="col text-center justify-content-center">
								<h4>
									<c:out value="${rt.hymrRoomName}"/>
								</h4>
							</div>
						</div>
						<div class="row">
							<div class="col offset-2">

								<video id="myFace" autoplay
									class="bg-secondary d-flex align-items-end justify-content-center mb-3"
									style="width: 720px; height: 400px; margin-left: 28px;">
								</video>
								<div class="text-center pb-3" style="width: 720px; margin-left: 28px;">
									 <button type="button" id="btnMic" class="btn rounded-circle" style="background-color: white">
									 	<i class="bi bi-mic"></i>
									 </button>
									 <button type="button" id="btnCam" class="btn rounded-circle" style="background-color: white">
									 	<i class="bi bi-camera-video"></i>
									 </button>
								</div>
								
								<input id="meetUrl_clipboard" type="text" value="meeting.kakaowork.com/iqd-sad-mgm" style="position:absolute;top:-9999em;">
								<ul class="list-unstyled fs-4" style="margin-left: 28px;">
									<li><i class="bi bi-globe2 pe-2"></i>
									<span id="meetUrl" class="fs-5 text-primary"></span>
										<a href="javascript:copyClipboard();">
											<i id="icon" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="copy to clipboard" class="bi bi-clipboard ps-1"></i>
										</a>
											</li>
									<li><i class="bi bi-people pe-2"></i><span class="fs-5">${fn:length(users)}명 참여 중 </span></li>
									<li><i class="bi bi-clock pe-2"></i><span class="fs-5"><fmt:formatDate value="${rt.regDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></li>
								</ul>
								<div style="width: 720px; margin-left: 28px;" class="text-end">
									<a href="meetList" class="btn btn-gray me-2">뒤로</a>
									<a href="javascript:goRoom();" class="btn btn-success">회의 입장</a>
								</div>
							</div>
						</div>



					</div>
				</div>
				<!--//Page content End//-->

				<!--//Page-footer//-->
				<footer class="pb-4 px-4 px-lg-8">
					<div class="container-fluid px-0">
						<span class="d-block lh-sm small text-muted text-end">&copy;
							<script>
                              document.write(new Date().getFullYear())
                            </script>. Hey, Buddy All rights reserved.
						</span>
					</div>
				</footer>
				<!--/.Page Footer End-->
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
	
	<script src="/resources/user/js/videoPreview.js"></script>

    <script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[2].className += ' current';
	</script>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		
		const meetUrl = "localhost:8091/meet/meetRoom?" + "<c:out value="${rt.hymrRoomId}"/>";
		
		document.querySelector('#meetUrl').innerText = meetUrl;
		$("#meetUrl_clipboard").val(meetUrl);
		
		
	});	
		
	copyClipboard = function() {
		document.querySelector('#meetUrl_clipboard').select();
		document.execCommand('copy');
		$("#icon").attr("data-bs-original-title", "copied!!");
		$("#icon").tooltip('show');
	}
	/* 
	goRoom = function(){
		$("#meetEnterForm").attr("action", "/meet/meetRoom").submit();
	}
	 */
	goRoom = function(){
		$("#meetEnterForm").attr("action", "/meet/enterRoom").submit();
	}
	
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" integrity="sha512-iKDtgDyTHjAitUDdLljGhenhPwrbBfqTKWO1mkhSFH3A7blITC9MhYon6SjnMhp4o0rADGw9yAC6EW4t5a4K3g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<script type="text/javascript">
	const sock = new SockJS('/stompTest');
	const client = Stomp.over(sock);
	
	client.connect({}, function(){
		console.log("Connected to stomp!");
		
		client.send("/pub/meetRoomList", {}, JSON.stringify({
			"msg" : "give me rooms"
		}));
	});
	</script>
	
	<%@include file="../include/pageScripts.jsp"%>
</body>


</html>
