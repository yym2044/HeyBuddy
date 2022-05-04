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
<link href="assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">

<!--Simplebar css-->
<link rel="stylesheet" href="assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="assets/vendor/css/choices.min.css">

<!--Main style-->
<link rel="stylesheet" href="assets/css/style.min.css" id="switchThemeStyle">

<!-- Cursor css -->
<link href="assets/css/cursorOnly.css" rel="stylesheet">

<!-- font-awesome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">

<style type="text/css">
ul,
li {
  list-style: none;
  margin: 0;
  padding: 0
}
label{font-weight:normal}
/*Tree*/

.trees {
  margin-left: 10px;
}

.trees li {
  border-left: dotted 1px #bcbec0;
  padding: 1px 0 1px 25px;
  position: relative
}

.trees li > label {
  position: relative;
  left: -11px
}

.trees li:before {
  content: "";
  width: 13px;
  height: 1px;
  border-bottom: dotted 1px #bcbec0;
  position: absolute;
  top: 10px;
  left: 0
}

.trees li:last-child:after {
  content: "";
  position: absolute;
  width: 2px;
  height: 13px;
  background: #fff;
  left: -1px;
  bottom: 0px;
}

.trees li input {
  margin-right: 5px;
  margin-left: 5px
}

.trees li.has-child > ul {
  display: none
}

.trees li.has-child > input {
  opacity: 0;
  position: absolute;
  left: -14px;
  z-index: 9999;
  width: 22px;
  height: 22px;
  top: -5px
}

.trees li.has-child > input + .tree-control {
  position: absolute;
  left: -4px;
  top: 6px;
  width: 8px;
  height: 8px;
  line-height: 8px;
  z-index: 2;
  display: inline-block;
  color: #fff;
  border-radius: 3px;
}

.trees li.has-child > input + .tree-control:after {
  font-family: 'FontAwesome';
  content: "";
  font-size: 8px;
  color: #183955;
  position: absolute;
  left: 1px
}

.trees li.has-child > input:checked + .tree-control:after {
  font-family: 'FontAwesome';
  content: "";
  font-size: 8px;
  color: #183955;
  position: absolute;
  left: 1px
}

.trees li.has-child > input:checked ~ ul {
  display: block
}

.trees ul li.has-child:last-child {
  border-left: none
}

.trees ul li.has-child:nth-last-child(2):after {
  content: "";
  width: 1px;
  height: 5px;
  border-left: dotted 1px #bcbec0;
  position: absolute;
  bottom: -5px;
  left: -1px
}

</style>
<style type="text/css">
#setTable tr td {
	height: 40px;
}

#setTable tr {
	vertical-align: middle;
}

.tableText {
	text-align: center;
	width: 30%;
	background-color: ghostwhite;
}
.tableContent {
	text-align: center;
}
</style>
<style>
body {
	background-image: url('../../../../../user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.iconic {
	padding-bottom: 30px;
	padding-top: 30px;
}
</style>
</head>
<body>
	<!--////////////////// PreLoader Start//////////////////////-->
	<div class="loader">
		<!--Placeholder animated layout for preloader-->
		<div class="d-flex flex-column flex-root">
			<div class="page d-flex flex-row flex-column-fluid">

				<!--Sidebar start-->
				<aside class="page-sidebar aside-dark placeholder-wave">
					<div class="placeholder col-12 h-100 bg-gray"></div>
				</aside>
				<div class="page-content d-flex flex-column flex-row-fluid">
					<div
						class="content flex-column p-4 pb-0 d-flex justify-content-center align-items-center flex-column-fluid position-relative">
						<div
							class="w-100 h-100 position-relative d-flex align-items-center justify-content-center">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-loader spinner-grow  me-2">
								<line x1="12" y1="2" x2="12" y2="6" />
								<line x1="12" y1="18" x2="12" y2="22" />
								<line x1="4.93" y1="4.93" x2="7.76" y2="7.76" />
								<line x1="16.24" y1="16.24" x2="19.07" y2="19.07" />
								<line x1="2" y1="12" x2="6" y2="12" />
								<line x1="18" y1="12" x2="22" y2="12" />
								<line x1="4.93" y1="19.07" x2="7.76" y2="16.24" />
								<line x1="16.24" y1="7.76" x2="19.07" y2="4.93" /></svg>
							<div>
								<span>Loading...</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--////////////////// /.PreLoader END//////////////////////-->

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!--///////////Page sidebar begin///////////////-->
			<aside class="page-sidebar">
				<div class="h-100 flex-column d-flex justify-content-start">

					<!--Aside-logo-->
					<div
						class="aside-logo d-flex align-items-center flex-shrink-0 justify-content-start px-5 position-relative">
						<a href="index.html" class="d-block">
							<div class="d-flex align-items-center flex-no-wrap text-truncate">
								<!--Sidebar-icon-->
								<span
									class="sidebar-icon fs-5 lh-1 text-white rounded-circle bg-primary fw-bold">
									팀 </span> <span class="sidebar-text"> <!--Sidebar-text--> <span
									class="sidebar-text text-truncate fs-4 ms-3 fw-bolder">
										팀부엉 </span>
								</span>
							</div>
						</a>
					</div>
					<!--Aside-Menu-->
					<div class="aside-menu px-3 my-auto" data-simplebar>
						<nav class="flex-grow-1 h-100" id="page-navbar">
							<!--:Sidebar nav-->
							<ul class="nav flex-column collapse-group collapse d-flex">

								<li class="nav-item"><a href="app-chat.html"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="user" class="fe-1x"></i>
									</span> <span class="sidebar-text">멤버</span>
								</a></li>

								<li class="nav-item"><a href="app-chat.html"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="message-circle" class="fe-1x"></i>
									</span> <span class="sidebar-text">채팅</span>
								</a></li>

								<li class="nav-item"><a href="meetList.html"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="video" class="fe-1x"></i>
									</span> <span class="sidebar-text">화상</span>
								</a></li>
								<li class="nav-item"><a href="app-calendar.html"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="calendar" class="fe-1x"></i>
									</span> <span class="sidebar-text">일정</span>
								</a></li>

								<li class="nav-item"><a href="#component-forms"
									data-bs-toggle="collapse" aria-expanded="false"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="edit" class="fe-1x"></i>
									</span> <!--Sidebar nav text--> <span class="sidebar-text">문서</span>
								</a>
									<ul id="component-forms"
										class="sidebar-dropdown list-unstyled collapse">
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-bootstrap.html"> Bootstrap</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-editor.html"> Editor</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-stepper.html"> Stepper</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-upload.html"> Upload</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-daterange-picker.html"> Daterangepicker</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-validation.html"> Validation</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-choices.html"> Choices</a></li>
										<li class="sidebar-item"><a class="sidebar-link"
											href="ui-form-inputmask.html"> Inputmask</a></li>
									</ul></li>
							</ul>
						</nav>
					</div>
					<!--Aside-footer-->
					<footer class="aside-footer position-relative p-3">
						<ul class="nav flex-column collapse-group collapse d-flex">
							<li class="nav-item"><a href="app-calendar.html"
								class="nav-link d-flex align-items-center text-truncate "> <span
									class="sidebar-icon"> <i data-feather="settings"
										class="fe-1x"></i>
								</span> <span class="sidebar-text">환경 설정</span>
							</a></li>

						</ul>
					</footer>
				</div>
			</aside>
			<!--///////////Page Sidebar End///////////////-->

			<!--///Sidebar close button for 991px or below devices///-->
			<div class="sidebar-close d-lg-none">
				<a href="#"></a>
			</div>
			<!--///.Sidebar close end///-->


			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

				<!--//page-header//-->
				<header
					class="navbar py-0 page-header navbar-expand navbar-light px-4 px-lg-8">
					<a href="index.html" class="navbar-brand d-block d-lg-none">
						<div class="d-flex align-items-center flex-no-wrap text-truncate">
							<!--Sidebar-icon-->
							<span
								class="sidebar-icon bg-primary rounded-circle size-35 text-white">
								A </span>
						</div>
					</a>
					<ul class="navbar-nav d-flex align-items-center h-100">
						<li
							class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center">
							<a href="javascript:void(0)"
							class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
								<i data-feather="chevrons-left" class="fe-1x"></i>
						</a>
						</li>
						<li
							class="nav-item d-flex flex-column me-2 h-100 justify-content-center dropdown">
							<a href="javascript:void(0)" data-bs-toggle="dropdown"
							class="d-flex align-items-center justify-content-center nav-link size-35 p-0"
							data-bs-auto-close="outside" aria-expanded="false"> <i
								data-feather="search" class="fe-1x"></i>
						</a> <!--Search dropdown menu-->
							<div
								class="dropdown-menu p-0 dropdown-menu-sm overflow-hidden mt-0">

								<!--Search form-->
								<form>
									<div class="d-flex align-items-center p-1 border-bottom ps-4">
										<div class="text-muted">
											<i data-feather="search" class="fe-1x"></i>
										</div>
										<input type="text" autofocus
											class="form-control bg-transparent rounded-0 py-3 ps-2 border-0 shadow-none"
											placeholder="Search everything...">
									</div>
								</form>

								<!--Recently searched-->


								<h6 class="d-block dropdown-header pb-0 pt-3">
									<i data-feather="trending-up" class="fe-1x me-2"></i> Top
									searches
								</h6>
								<div class="p-3 d-flex flex-wrap align-items-center">
									<!--Recently searched item-->
									<a href="#"
										class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
										Campaign reports </a> <a href="#"
										class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
										Project #4535 </a> <a href="#"
										class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
										Chat </a> <a href="#"
										class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
										Tasks </a> <a href="#"
										class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
										Affiliates </a> <a href="#"
										class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
										Faqs </a> <a href="#"
										class="badge bg-tint-primary text-secondary rounded-pill px-3 py-2 me-2 mb-2">
										Inbox </a>
								</div>
							</div>
						</li>
						<li
							class="nav-item d-flex flex-column me-2 h-100 justify-content-center dropdown">
							<a href="#" data-bs-toggle="dropdown"
							class="nav-link size-35 d-flex align-items-center justify-content-center p-0">
								<i data-feather="grid" class="fe-1x"></i>
						</a>
							<div
								class="dropdown-menu overflow-hidden dropdown-menu-sm p-0 mt-0">
								<!--Apps list-->
								<div class="list-group list-group-flush">

									<div
										class="list-group-item d-flex align-items-center justify-content-between px-3">
										<h6 class="dropdown-header ps-0">Apps Shortcuts</h6>
										<a href="#!" class="btn btn-primary btn-sm rounded-pill">View
											All Apps</a>
									</div>
									<!--App item-->
									<a href="#!"
										class="list-group-item px-3 list-group-item-action d-flex align-items-center">
										<!--App logo--> <img
										src="assets/media/brand-logos/atlassian.svg"
										class="width-30 w-auto flex-shrink-0 me-4" alt="">
										<div class="flex-grow-1">
											<h6 class="mb-0">Atlassian</h6>
											<small>Security and control across Cloud</small>
										</div>
									</a>

									<!--App item-->
									<a href="#!"
										class="list-group-item px-3 list-group-item-action d-flex align-items-center">
										<!--App logo--> <img
										src="assets/media/brand-logos/google-webdev.svg"
										class="width-30 w-auto flex-shrink-0 me-4" alt="">
										<div class="flex-grow-1">
											<h6 class="mb-0">Google webdev</h6>
											<small>Work involved in developing a website</small>
										</div>
									</a>

									<!--App item-->
									<a href="#!"
										class="list-group-item px-3 list-group-item-action d-flex align-items-center">
										<!--App logo--> <img src="assets/media/brand-logos/slack.svg"
										class="width-30 w-auto flex-shrink-0 me-4" alt="">
										<div class="flex-grow-1">
											<h6 class="mb-0">Slack</h6>
											<small>Email collaboration software</small>
										</div>
									</a>
								</div>
							</div>
						</li>
					</ul>
					<ul class="navbar-nav ms-auto d-flex align-items-center h-100">
						<li
							class="nav-item d-flex align-items-center justify-content-center flex-column h-100 me-2">
							<div
								class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
								<a href="#" class="mode_dark text-reset p-0"> <i
									data-feather="sun" class="fe-1x"></i>
								</a> <a href="#" class="mode_light text-reset p-0"> <i
									data-feather="moon" class="fe-1x"></i>
								</a>
							</div>
						</li>
						<li
							class="nav-item dropdown d-flex align-items-center justify-content-center flex-column h-100 me-2">
							<a href="#"
							class="nav-link p-0 position-relative size-35 d-flex align-items-center justify-content-center"
							aria-expanded="false" data-bs-toggle="dropdown"
							data-bs-auto-close="outside"> <i data-feather="bell"
								class="fe-1x"></i> <span
								class="size-5 rounded-circle d-flex align-items-center justify-content-center position-absolute end-0 top-0 mt-2 me-1 bg-danger small"></span>
						</a>


							<div
								class="dropdown-menu mt-0 p-0 overflow-hidden dropdown-menu-end dropdown-menu-sm">
								<div
									class="d-flex p-3 justify-content-between align-items-center border border-top-0 border-start-0 border-end-0">
									<h5 class="me-3 mb-0">Notifications</h5>
									<div class="flex-shrink-0">
										<a href="#!" class="btn btn-primary btn-sm">View All</a>
									</div>
								</div>
								<div class="height-290" data-simplebar>
									<div class="list-group list-group-flush mb-0">
										<!--//Notification item start//-->
										<a href="#"
											class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
											<div class="d-block me-3">
												<div class="avatar avatar-status status-online">
													<img src="assets/media/avatars/01.jpg"
														class="img-fluid rounded-circle w-auto" alt="">
												</div>
											</div>

											<div class="flex-grow-1 flex-wrap pe-3">
												<span class="mb-0 d-block"><strong>Adam
														Danely</strong> assigned a task to you <strong>#PI-392</strong></span> <small
													class="text-muted">Just now</small>
											</div>
										</a>
										<!--//Notification item start//-->
										<a href="#"
											class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
											<div class="d-block me-3">
												<div class="avatar avatar-status status-offline">
													<img src="assets/media/avatars/06.jpg"
														class="img-fluid rounded-circle w-auto" alt="">
												</div>
											</div>

											<div class="flex-grow-1 flex-wrap pe-3">
												<span class="mb-0 d-block"><strong>Vivianna
														Kiser </strong> just posted <span>"Lorem ipsum is
														placeholder text used in the graphic, print, and
														industries. "</span></span> <small class="text-muted">2h Ago</small>
											</div>
										</a>
										<!--//Notification item start//-->
										<a href="#"
											class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
											<span class="d-block me-3"> <span
												class="d-flex align-items-center justify-content-center lh-1 size-50 bg-tint-success text-success rounded-circle">
													<i class="fe-2x" data-feather="tool"></i>
											</span>
										</span>

											<div class="flex-grow-1 flex-wrap pe-3">
												<span class="mb-0 d-block"><strong>Updated</strong>
													Your account password updated succuessfully</span> <small
													class="text-muted">2h Ago</small>
											</div>
										</a>
										<!--//Notification item start//-->
										<a href="#"
											class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
											<span class="d-block me-3"> <span
												class="d-flex align-items-center justify-content-center lh-1 size-50 bg-tint-danger text-danger rounded-circle">
													<i class="fe-2x" data-feather="percent"></i>
											</span>
										</span>

											<div class="flex-grow-1 flex-wrap pe-3">
												<span class="mb-0 d-block"><strong>Pro
														discount</strong> Upgrade to pro plan with 30% discount, Apply
													coupon <span class="badge bg-primary">PRO30</span></span> <small
													class="text-muted">2h Ago</small>
											</div>
										</a>
									</div>
								</div>
							</div>
						</li>
						<li
							class="nav-item dropdown d-flex align-items-center justify-content-center flex-column h-100">
							<a href="#"
							class="nav-link dropdown-toggle height-35 px-2 d-flex align-items-center justify-content-center"
							aria-expanded="false" data-bs-toggle="dropdown"
							data-bs-auto-close="outside">
								<div class="d-flex align-items-center">

									<!--Avatar with status-->
									<div class="avatar-status status-online me-sm-2 avatar xs">
										<img src="assets/media/avatars/01.jpg"
											class="rounded-circle img-fluid" alt="">
									</div>
									<span class="d-none d-md-inline-block">Noah</span>
								</div>
						</a>

							<div
								class="dropdown-menu mt-0 p-0 dropdown-menu-end overflow-hidden">
								<!--User meta-->
								<div
									class="position-relative overflow-hidden px-3 pt-4 pb-9 bg-gradient-primary text-white">
									<!--Divider-->
									<svg style="transform: rotate(-180deg);"
										preserveAspectRatio="none"
										class="position-absolute start-0 bottom-0 w-100 dropdown-wave"
										fill="currentColor" height="24" viewBox="0 0 1200 120"
										xmlns="http://www.w3.org/2000/svg">
                                <path
											d="M0 0v46.29c47.79 22.2 103.59 32.17 158 28 70.36-5.37 136.33-33.31 206.8-37.5 73.84-4.36 147.54 16.88 218.2 35.26 69.27 18 138.3 24.88 209.4 13.08 36.15-6 69.85-17.84 104.45-29.34C989.49 25 1113-14.29 1200 52.47V0z"
											opacity=".25" />
                                <path
											d="M0 0v15.81c13 21.11 27.64 41.05 47.69 56.24C99.41 111.27 165 111 224.58 91.58c31.15-10.15 60.09-26.07 89.67-39.8 40.92-19 84.73-46 130.83-49.67 36.26-2.85 70.9 9.42 98.6 31.56 31.77 25.39 62.32 62 103.63 73 40.44 10.79 81.35-6.69 119.13-24.28s75.16-39 116.92-43.05c59.73-5.85 113.28 22.88 168.9 38.84 30.2 8.66 59 6.17 87.09-7.5 22.43-10.89 48-26.93 60.65-49.24V0z"
											opacity=".5" />
                                <path
											d="M0 0v5.63C149.93 59 314.09 71.32 475.83 42.57c43-7.64 84.23-20.12 127.61-26.46 59-8.63 112.48 12.24 165.56 35.4C827.93 77.22 886 95.24 951.2 90c86.53-7 172.46-45.71 248.8-84.81V0z" />
                              </svg>
									<div class="position-relative">
										<h5 class="mb-1">Noah Pierre</h5>
										<p class="text-muted small mb-0 lh-1">Full stack developer</p>
									</div>
								</div>
								<div class="pt-2">
									<a href="profile.html" class="dropdown-item"><i
										class="fe-1x me-3" data-feather="user"></i>Profile</a> <a
										href="account-general.html" class="dropdown-item"><i
										class="fe-1x me-3" data-feather="tool"></i>Settings</a> <a
										href="page-tasks.html" class="dropdown-item"> <i
										class="fe-1x me-3" data-feather="list"></i>Tasks
									</a>
									<hr class="my-2">
									<a href="page-auth-signin.html"
										class="dropdown-item d-flex align-items-center"> <i
										class="fe-1x me-3" data-feather="log-out"></i> Sign out
									</a>
								</div>
							</div>
						</li>
						<li
							class="nav-item dropdown ms-2 d-flex d-lg-none align-items-center justify-content-center flex-column h-100">
							<a href="javascript:void(0)"
							class="nav-link sidebar-trigger-lg-down size-35 p-0 d-flex align-items-center justify-content-center">
								<i data-feather="menu" class="fe-2x"></i>
						</a>
						</li>
					</ul>
				</header>
				<!--Main Header End-->

				<!--//Page Toolbar//-->
				<div class="toolbar pt-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-3 mb-lg-0">
								<h3 class="mb-2 fw-bold">환경설정</h3>
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0">
										<li class="breadcrumb-item"><a href="#!">Home</a></li>
										<li class="breadcrumb-item active">환경설정</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!--//Page Toolbar End//-->


				<!--//Page content//-->
				<div class="content pt-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">

						<div class="row">
							<div class="col-lg-3" style="height: 400px;">
								<div class="card py-2">
									<!--Account nav-->
									<ul class="nav nav-tabs nav-vertical mb-4 h-100">
										<li class="nav-item"><a href="#component-forms1"
											data-bs-toggle="collapse" aria-expanded="false"
											class="nav-link d-flex align-items-center text-truncate">
												<i class="bi bi-sliders2-vertical align-middle me-2"></i>스페이스
												환경
										</a>
											<ul id="component-forms1"
												class="sidebar-dropdown list-unstyled show">
												<li class="sidebar-item"><a class="sidebar-link"
													href="heyBuddyHostMenu1.html"> 기본정보</a></li>
												<li class="sidebar-item"><a class="sidebar-link"
													href="heyBuddyHostMenu2.html"> 프로필정보</a></li>
											</ul></li>

										<li class="nav-item"><a href="#component-forms2"
											data-bs-toggle="collapse" aria-expanded="false"
											class="nav-link d-flex align-items-center text-truncate ">
												<i data-feather="user" class="fe-1x align-middle me-2"></i>스페이스
												멤버
										</a>
											<ul id="component-forms2"
												class="sidebar-dropdown list-unstyled show">
												<li class="sidebar-item"><a class="sidebar-link"
													href="heyBuddyHostMenu3.html"> 멤버관리</a></li>
												<li class="sidebar-item"><a class="sidebar-link"
													href="heyBuddyHostMenu4.html"> 그룹관리</a></li>
												<li class="sidebar-item"><a class="sidebar-link"
													href="heyBuddyHostMenu5.html"> 관리자설정</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
							<div class="col-lg-9 h-100" data-aos="fade-up" data-aos-duration="1200">
								<!--card-->
								<div class="card mb-4 p-3">
									<div
										class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">

										<!-- card title -->
										<h3 class="card-title mb-md-0">그룹 관리</h3>

									</div>
									<h6 class="ps-4 mb-5">그룹을 구성하고 그룹에 대한 상세정보를 확인할 수 있습니다.</h6>

									<div class="row ps-6">
										<div class="col-lg-5">
											<div class="row">
												<p class="fw-bold my-3 px-3">팀부엉(4명)</p>
												
												<div class="card overflow-hidden">
			                                        <div class="card-header d-flex align-items-center">
		                                                <div class="position-relative">
		                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search fe-1x position-absolute start-0 top-50 opacity-25 ms-2 translate-middle-y"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
		                                                    <input type="text" placeholder="그룹 검색.." class="form-control ps-7 rounded-pill form-control-sm" style="background-color: ghostwhite;">
		                                                </div>
			                                        </div>
			                                        <div class="card-body" style="min-height: 5rem;">
			                                        	
														<div class="tree-box box-border">
															<ul class="trees">
																<li class="has-child">
																	<input id="tree-controll1" type="checkbox" checked><span class="tree-control"></span>
																	<label>
																		 <a href="javascript:void(0);">팀부엉 (4)</a>
																	</label>
																	<ul class="p-1">
																		<li class="has-child">
																		<input type="checkbox" checked><span class="tree-control"></span>
																		<label>
																		<a href="javascript:void(0);">1조 (0)</a>
																		</label>
																			<ul class="p-1">
																				<li>
																				<label>
																				<a href="javascript:void(0);">1분단 (0)</a>
																				</label>
																				</li>
																				<li>
																				<label>
																				<a href="javascript:void(0);">2분단 (0)</a>
																				</label>
																				</li>
																				<li>
																				<label>
																				<a href="javascript:void(0);">3분단 (0)</a>
																				</label>
																				</li>
																				<li>
																				<label>
																				<a href="javascript:void(0);">4분단 (0)</a>
																				</label>
																				</li>
																			</ul>
																		</li>
																	
																		<li class="has-child">
																		<input type="checkbox" checked><span class="tree-control"></span>
																		<label>
																		<a href="javascript:void(0);">2조 (0)</a>
																		</label>
																			<ul class="p-1">
																			<li>
																			<label>
																			<a href="javascript:void(0);">1분단 (0)</a>
																			</label>
																			</li>
																			<li>
																			<label>
																			<a href="javascript:void(0);">2분단 (0)</a>
																			</label>
																			</li>
																			<li>
																			<label>
																			<a href="javascript:void(0);">3분단 (0)</a>
																			</label>
																			</li>
																			<li>
																			<label>
																			<a href="javascript:void(0);">4분단 (0)</a>
																			</label>
																			</li>
																			</ul>
																		</li>
																	</ul>
																</li>
																<li>
																	<label>
																	<a href="javascript:void(0);">미분류 (0)</a>
																	</label>
																</li>
															</ul>
														</div>



			                                        </div>
			                                    </div>
												
											</div>
										</div>
										<div class="col-lg">
											<div class="card" style="margin-top: 50px; margin-bottom: 10px;">
												<div class="card-header d-flex align-items-center" style="height: 60px;">
												<span class="fw-bold">팀부엉(4)</span>	
												</div>
												<div class="card-body" style="height: 16rem; overflow-y: auto;">
													<ul class="list-unstyled">
													
														<li class="py-1">
															<div class="d-flex align-items-center">
							                                <img src="assets/media/avatars/05.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
							                                <div>
						                                    <div class="h6 mb-0 lh-1"><a href="#modalMember1" data-bs-toggle="modal">김나리</a></div>
							                                </div>
							                                </div>
														</li>
														<li class="py-1">
															<div class="d-flex align-items-center">
							                                <img src="assets/media/avatars/02.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
							                                <div>
						                                    <div class="h6 mb-0 lh-1"><a href="#modalMember2" data-bs-toggle="modal">정미림</a></div>
							                                </div>
							                                </div>
														</li>
														<li class="py-1">
															<div class="d-flex align-items-center">
							                                <img src="assets/media/avatars/08.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
							                                <div>
						                                    <div class="h6 mb-0 lh-1"><a href="#modalMember3" data-bs-toggle="modal">윤영민</a></div>
							                                </div>
							                                </div>
						                               </li>
														<li class="py-1">
															<div class="d-flex align-items-center">
							                                <img src="assets/media/avatars/03.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
							                                <div>
						                                    <div class="h6 mb-0 lh-1"><a href="#modalMember4" data-bs-toggle="modal">이건우</a></div>
							                                </div>
							                                </div>
														</li>
													</ul>
												</div>
											</div>
											<div class="card" style="height: 5rem;">
												<div class="row" class="d-flex" style="height: 100%;">
													<div class="col text-center">
														<button class="btn btn-outline-success border-2 w-100 h-100 hover-lift">그룹추가</button>
													</div>
													<div class="col text-center">
														<button class="btn btn-outline-success border-2 w-100 h-100 hover-lift">그룹삭제</button>
													</div>
													<div class="col text-center" style="vertical-align: middle;">
														<button class="btn btn-outline-success border-2 w-100 h-100 hover-lift">멤버이동</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//Page content End//-->
				
				
				<!--Modal Member-->
                <div class="modal fade" id="modalMember1" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content border-0">
                            
							<div class="card">
							
							<!--Card body-->
								<div class="card-body">
								<!--Contact-->
									<div class="text-center">
									
									  	<!-- Avatar -->
										<a href="#!" class="avatar mb-3 mx-auto xl rounded-cirlce d-block">
											<img src="assets/media/avatars/05.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
										<a href="#!" class="text-reset">
										김나리</a>
										</h5>
									
										<!-- Email -->
										<p class="small text-muted mb-0">
										<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com">
										noah.pierre@mail.com</a>
										</p>
									
										<!-- Phone -->
										<p class="small text-muted mb-3">
										<a class="d-block text-reset text-truncate" href="#">
										010-1234-5678</a>
										</p>
									
									
										<!-- Split dropdown user button -->
										<div class="btn-group">
										<button type="button" class="btn btn-outline-gray text-body">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>Send
										Message</button>
										<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x"><circle cx="12" cy="12" r="1"></circle><circle cx="12" cy="5" r="1"></circle><circle cx="12" cy="19" r="1"></circle></svg>
										</button>
										<ul class="dropdown-menu dropdown-menu-end" style="">
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg> View detail</a>
										</li>
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg> Block
										 contact</a></li>
										</ul>
										</div>
									</div>
								</div>
							</div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalMember2" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content border-0">
                            
							<div class="card">
							
							<!--Card body-->
								<div class="card-body">
								<!--Contact-->
									<div class="text-center">
									
									  	<!-- Avatar -->
										<a href="#!" class="avatar mb-3 mx-auto xl rounded-cirlce d-block">
											<img src="assets/media/avatars/02.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
										<a href="#!" class="text-reset">
										정미림</a>
										</h5>
									
										<!-- Email -->
										<p class="small text-muted mb-0">
										<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com">
										noah.pierre@mail.com</a>
										</p>
									
										<!-- Phone -->
										<p class="small text-muted mb-3">
										<a class="d-block text-reset text-truncate" href="#">
										010-1234-5678</a>
										</p>
									
									
										<!-- Split dropdown user button -->
										<div class="btn-group">
										<button type="button" class="btn btn-outline-gray text-body">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>Send
										Message</button>
										<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x"><circle cx="12" cy="12" r="1"></circle><circle cx="12" cy="5" r="1"></circle><circle cx="12" cy="19" r="1"></circle></svg>
										</button>
										<ul class="dropdown-menu dropdown-menu-end" style="">
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg> View detail</a>
										</li>
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg> Block
										 contact</a></li>
										</ul>
										</div>
									</div>
								</div>
							</div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalMember3" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content border-0">
                            
							<div class="card">
							
							<!--Card body-->
								<div class="card-body">
								<!--Contact-->
									<div class="text-center">
									
									  	<!-- Avatar -->
										<a href="#!" class="avatar mb-3 mx-auto xl rounded-cirlce d-block">
											<img src="assets/media/avatars/08.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
										<a href="#!" class="text-reset">
										윤영민</a>
										</h5>
									
										<!-- Email -->
										<p class="small text-muted mb-0">
										<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com">
										noah.pierre@mail.com</a>
										</p>
									
										<!-- Phone -->
										<p class="small text-muted mb-3">
										<a class="d-block text-reset text-truncate" href="#">
										010-1234-5678</a>
										</p>
									
									
										<!-- Split dropdown user button -->
										<div class="btn-group">
										<button type="button" class="btn btn-outline-gray text-body">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>Send
										Message</button>
										<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x"><circle cx="12" cy="12" r="1"></circle><circle cx="12" cy="5" r="1"></circle><circle cx="12" cy="19" r="1"></circle></svg>
										</button>
										<ul class="dropdown-menu dropdown-menu-end" style="">
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg> View detail</a>
										</li>
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg> Block
										 contact</a></li>
										</ul>
										</div>
									</div>
								</div>
							</div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalMember4" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content border-0">
                            
							<div class="card">
							
							<!--Card body-->
								<div class="card-body">
								<!--Contact-->
									<div class="text-center">
									
									  	<!-- Avatar -->
										<a href="#!" class="avatar mb-3 mx-auto xl rounded-cirlce d-block">
											<img src="assets/media/avatars/03.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
										<a href="#!" class="text-reset">
										이건우</a>
										</h5>
									
										<!-- Email -->
										<p class="small text-muted mb-0">
										<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com">
										noah.pierre@mail.com</a>
										</p>
									
										<!-- Phone -->
										<p class="small text-muted mb-3">
										<a class="d-block text-reset text-truncate" href="#">
										010-1234-5678</a>
										</p>
									
									
										<!-- Split dropdown user button -->
										<div class="btn-group">
										<button type="button" class="btn btn-outline-gray text-body">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>Send
										Message</button>
										<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x"><circle cx="12" cy="12" r="1"></circle><circle cx="12" cy="5" r="1"></circle><circle cx="12" cy="19" r="1"></circle></svg>
										</button>
										<ul class="dropdown-menu dropdown-menu-end" style="">
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="16" x2="12" y2="12"></line><line x1="12" y1="8" x2="12.01" y2="8"></line></svg> View detail</a>
										</li>
										<li><a class="dropdown-item" href="#">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg> Block
										 contact</a></li>
										</ul>
										</div>
									</div>
								</div>
							</div>
                        </div>
                    </div>
                </div>
				<!--Modal Member End-->
				

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
	
	<!--cursor-->
    <div class="cursor">
        <div class="cursor__inner"></div>
    </div>

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="assets/vendor/feather.min.js"></script>
	<script src="assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>

	<!--////////////Theme Core scripts End/////////////////-->
	

	  <!-- Cursor Js -->
	  <script src="assets/vendor/node_modules/js/gsap.min.js"></script>
	  <script>
	    //cursor
	    var element = document.querySelector('.cursor');
	    let mouse = { x: 0, y: 0 };
	    window.addEventListener('mousemove', ev => mouse = getMousePos(ev));
	    const lerp = (a, b, n) => (1 - n) * a + n * b;
	    const getMousePos = e => {
	        return {
	            x: e.clientX,
	            y: e.clientY
	        };
	    };
	    class Cursor {
	        constructor(el) {
	            this.DOM = { el: el };
	            this.DOM.el.style.opacity = 0;
	            this.bounds = this.DOM.el.getBoundingClientRect();
	            this.renderedStyles = {
	                tx: { previous: 0, current: 0, amt: 0.2 },
	                ty: { previous: 0, current: 0, amt: 0.2 },
	                scale: { previous: 1, current: 1, amt: 0.2 },
	                opacity: { previous: 1, current: 1, amt: 0.2 }
	            };
	            this.onMouseMoveEv = () => {
	                this.renderedStyles.tx.previous = this.renderedStyles.tx.current = mouse.x - this.bounds.width / 2;
	                this.renderedStyles.ty.previous = this.renderedStyles.ty.previous = mouse.y - this.bounds.height / 2;
	                gsap.to(this.DOM.el, { duration: 0.9, ease: 'Power3.easeOut', opacity: 1 });
	                requestAnimationFrame(() => this.render());
	                window.removeEventListener('mousemove', this.onMouseMoveEv);
	            };
	            window.addEventListener('mousemove', this.onMouseMoveEv);
	        }
	        enter() {
	            element.classList.add('cHover');
	        }
	        leave() {
	            this.renderedStyles['scale'].current = 1;
	            this.renderedStyles['opacity'].current = 1;
	            element.classList.remove('cHover');
	        }
	        render() {
	            this.renderedStyles['tx'].current = mouse.x - this.bounds.width / 2;
	            this.renderedStyles['ty'].current = mouse.y - this.bounds.height / 2;
	
	            for (const key in this.renderedStyles) {
	                this.renderedStyles[key].previous = lerp(this.renderedStyles[key].previous, this.renderedStyles[key].current, this.renderedStyles[key].amt);
	            }
	            this.DOM.el.style.transform = `translateX(${(this.renderedStyles['tx'].previous)}px) translateY(${this.renderedStyles['ty'].previous}px) scale(${this.renderedStyles['scale'].previous})`;
	            this.DOM.el.style.opacity = this.renderedStyles['opacity'].previous;
	            requestAnimationFrame(() => this.render());
	        }
	    }
	    const cursor = new Cursor(document.querySelector('.cursor'));
	    [...document.querySelectorAll('a,.btn')].forEach(link => {
	        link.addEventListener('mouseenter', () => cursor.enter());
	        link.addEventListener('mouseleave', () => cursor.leave());
	    });
	</script>



	<!--Page script begin-->
	<script src="assets/vendor/inputmask.min.js"></script>
	<script>
            Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
        </script>
</body>

</html>
