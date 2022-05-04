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
<style>
body {
	background-image: url('/resources/user/images/allround.jpg');
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

								<li class="nav-item"><a href="heyBuddyMeetList.html"
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
										src="/resources/assets/media/brand-logos/atlassian.svg"
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
										src="/resources/assets/media/brand-logos/google-webdev.svg"
										class="width-30 w-auto flex-shrink-0 me-4" alt="">
										<div class="flex-grow-1">
											<h6 class="mb-0">Google webdev</h6>
											<small>Work involved in developing a website</small>
										</div>
									</a>

									<!--App item-->
									<a href="#!"
										class="list-group-item px-3 list-group-item-action d-flex align-items-center">
										<!--App logo--> <img src="/resources/assets/media/brand-logos/slack.svg"
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
													<img src="/resources/assets/media/avatars/01.jpg"
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
													<img src="/resources/assets/media/avatars/06.jpg"
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
										<img src="/resources/assets/media/avatars/01.jpg"
											class="rounded-circle img-fluid" alt="">
									</div>
									<span class="d-none d-md-inline-block">New Face</span>
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
										<h5 class="mb-1">New Face</h5>
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
							<div class="col-md-8 mb-4 mb-md-0">
								<h3 class="mb-2">화상회의</h3>

								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0">
										<li class="breadcrumb-item"><a href="index.html">Home</a></li>
										<li class="breadcrumb-item active">화상회의</li>
									</ol>
								</nav>
							</div>
							<!-- <div class="col-md-4 text-md-end" style="padding-right: 30px;">
			                    <a href="#!.html" class="btn rounded-pill btn-danger text-truncate">회의 시작</a>
			                </div> -->
						</div>
					</div>
				</div>
				<!--//Page Toolbar End//-->

				<!--//Page content//-->
				<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">

						<div class="row">
							<div class="col d-flex justify-content-center">
								<div class="box text-center p-5"
									style="background-color: white; width: 50%; height: 400px;">
									<i class="bi bi-box-arrow-right text-primary fs-3"></i><br>
									<br>
									<br>
									<h3 style="margin-bottom: 180px;">회의에서 나왔습니다.</h3>
									<button type="button" class="btn btn-secondary mb-2 me-2">
										<i class="bi bi-arrow-return-left"></i> 다시 참여
									</button>
									<button type="button" class="btn btn-secondary mb-2 me-2">
										<i class="bi bi-list"></i> 목록으로
									</button>
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

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>

	<!--////////////Theme Core scripts End/////////////////-->


</body>

</html>
