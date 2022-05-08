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
<title>hey, Buddy!</title>

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

</head>

<style>
header {
	margin-top: 5px;
	margin-left: 7px;
}

body {
	background-image: url('/resources/user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.mySpaceZone {
	margin-left: 20%;
	margin-right: 20%;
}

.list-group {
	border-radius: 7px;
	box-shadow: 2px 5px 10px #119C8D;
}
</style>

<body>
<!--//page-header//-->
<header class="navbar py-0 page-header navbar-expand navbar-light">

	<ul class="navbar-nav d-flex align-items-center h-100">
		<li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a href="/mySpace/mySpaceList" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
				<i data-feather="arrow-left" class="fe-1x"></i>
			</a></li>
		
	</ul>
	
	<ul class="navbar-nav ms-auto d-flex align-items-center h-100">
		<li class="nav-item d-flex align-items-center justify-content-center flex-column h-100 me-2">
			<div class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
				<a href="#" class="mode_dark text-reset p-0">
					<i data-feather="sun" class="fe-1x"></i>
				</a>
				<a href="#" class="mode_light text-reset p-0">
					<i data-feather="moon" class="fe-1x"></i>
				</a>
			</div>
		</li>
		
				<li
				class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a
				href="/login/login"
				class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
					<i data-feather="log-out" class="fe-1x"></i>
			</a></li>	
	</ul>
</header>

	<%@include file="../include/loader.jsp"%>

	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid">

				<div class="container-fluid px-0">


					<div class="row mySpaceZone">
						<div class="col-3"></div>
						<div class="col-6">
								<div style="text-align: center;">
									<img src="/resources/user/images/newWelcome.PNG" alt="..." width="440x">
								</div>
				
								<div class="list-group list-group-flush mb-0">
									
									<!--Chat User-->
									<a href="#!"
										class="list-group-item align-items-center list-group-item-action border-0 px-3 d-flex py-3">
										<div class="flex-shrink-0">
											<div class="avatar-status status-offline me-3 avatar">
												<img src="/resources/assets/media/avatars/01.jpg"
													class="rounded-circle img-fluid" alt="">
											</div>
										</div>
										<div class="overflow-hidden flex-grow-1">
											<div class="d-flex">
												<h6 class="mb-0 text-reset flex-grow-1"> 장원영 &nbsp;&nbsp;<i style="color:green;"
											data-feather="square" class="fe-1x"></i></h6>
												<small class=" opacity-75 ms-auto"> 팀부엉 </small>
											</div>
											
										</div>
									</a>
									<!--Chat User-->
									<a href="#!"
										class="list-group-item align-items-center list-group-item-action border-0 px-3 d-flex py-3">
										<div class="flex-shrink-0">
											<div class="avatar-status status-offline me-3 avatar">
												<img src="/resources/assets/media/avatars/02.jpg"
													class="rounded-circle img-fluid" alt="">
											</div>
										</div>
										<div class="overflow-hidden flex-grow-1">
											<div class="d-flex">
												<h6 class="mb-0 text-reset flex-grow-1"> 이건우 &nbsp;&nbsp;<i style="color:green;"
											data-feather="check-square" class="fe-1x"></i></h6>
												<small class=" opacity-75 ms-auto"> 팀부엉 </small>
											</div>
											
										</div>
									</a>
									<!--Chat User-->
									<a href="#!"
										class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
										<div class="flex-shrink-0">
											<div class="avatar-status status-online me-3 avatar d-flex align-items-center justify-content-center bg-primary text-white fw-bolder rounded-circle">
												<img src="/resources/assets/media/avatars/03.jpg"
													class="rounded-circle img-fluid" alt=""></div>
										</div>
										<div class="overflow-hidden flex-grow-1">
											<div class="d-flex">
												<h6 class="mb-0 text-reset flex-grow-1"> 윤영민 &nbsp;&nbsp;<i style="color:green;"
											data-feather="check-square" class="fe-1x"></i></h6>
												<small class="opacity-75 ms-auto"> 팀부엉 </small>
											</div>
										</div>
									</a>

									<!--Chat User-->
									<a href="#!"
										class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
										<div class="flex-shrink-0">
											<div class="avatar-status status-offline me-3 avatar">
												<img src="/resources/assets/media/avatars/04.jpg"
													class="rounded-circle img-fluid" alt="">
											</div>
										</div>
										<div class="overflow-hidden flex-grow-1">
											<div class="d-flex">
												<h6 class="mb-0 text-reset flex-grow-1"> 정미림 &nbsp;&nbsp;<i style="color:green;"
											data-feather="check-square" class="fe-1x"></i></h6>
												<small class="opacity-75 ms-auto"> 팀부엉 </small>
											</div>
											
										</div>
									</a>
									<!--Chat User-->
									<a href="#!"
										class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
										<div class="flex-shrink-0">
											<div
												class="avatar-status status-online me-3 avatar d-flex align-items-center fw-bolder justify-content-center text-white bg-success rounded-circle">
												<img src="/resources/assets/media/avatars/05.jpg"
													class="rounded-circle img-fluid" alt=""></div>
										</div>
										<div class="overflow-hidden flex-grow-1">
											<div class="d-flex">
												<h6 class="mb-0 text-reset flex-grow-1"> 윤이나 &nbsp;&nbsp;<i style="color:green;"
											data-feather="check-square" class="fe-1x"></i></h6>
												<small class="opacity-75 ms-auto"> 팀부엉 </small>
											</div>
											
										</div>
									</a>

									<!--Chat User-->
									<a href="#!"
										class="list-group-item px-3 align-items-left list-group-item-action border-0 d-flex py-3">
										<div class="flex-shrink-0">
											<div class="avatar-status status-offline me-3 avatar">
												<img src="/resources/assets/media/avatars/06.jpg"
													class="rounded-circle img-fluid" alt="">
											</div>
										</div>
										<div class="overflow-hidden flex-grow-1">
											<div class="d-flex">
												<h6 class="mb-0 text-reset flex-grow-1"> 윤수빈 &nbsp;&nbsp;<i style="color:green;"
											data-feather="check-square" class="fe-1x"></i></h6>
												<small class="opacity-75 ms-auto"> 팀부엉 </small>
											</div>
										
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
					<!--///////////Page content wrapper end///////////////-->

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
		</div>
	</div>

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->

</body>

</html>
