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

<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />

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

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<!-- Cursor css -->
<link href="/resources/assets/css/cursorOnly.css" rel="stylesheet">

<!-- font-awesome -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">

<style type="text/css">
ul, li {
	list-style: none;
	margin: 0;
	padding: 0
}

label {
	font-weight: normal
}
/*Tree*/
.trees {
	margin-left: 10px;
}

.trees li {
	border-left: dotted 1px #bcbec0;
	padding: 1px 0 1px 25px;
	position: relative
}

.trees li>label {
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

.trees li.has-child>ul {
	display: none
}

.trees li.has-child>input {
	opacity: 0;
	position: absolute;
	left: -14px;
	z-index: 9999;
	width: 22px;
	height: 22px;
	top: -5px
}

.trees li.has-child>input+.tree-control {
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

.trees li.has-child>input+.tree-control:after {
	font-family: 'FontAwesome';
	content: "";
	font-size: 8px;
	color: #183955;
	position: absolute;
	left: 1px
}

.trees li.has-child>input:checked+.tree-control:after {
	font-family: 'FontAwesome';
	content: "";
	font-size: 8px;
	color: #183955;
	position: absolute;
	left: 1px
}

.trees li.has-child>input:checked ~ ul {
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
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
</head>
<body>
	<!-- include 처리 1번 -->
	<%@include file="../include/loader.jsp"%>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!-- include 처리 2번 -->
			<%@include file="../include/pageSideBar.jsp"%>

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

				<!-- include 처리 3번 -->
				<%@include file="../include/pageHeader.jsp"%>

				<!--//Page Toolbar//-->
				<!-- 
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
				 -->
				<!--//Page Toolbar End//-->


				<!--//Page content//-->
				<div class="content pt-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">

						<div class="row">

							<%@include file="../include/settingMenu.jsp"%>

							<div class="col-lg-9 h-100" data-aos="fade-up" data-aos-duration="1200">
								<!--card-->
								<div class="card mb-4 p-3">
									<div class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">

										<!-- card title -->
										<h3 class="card-title mb-md-0">그룹 관리</h3>

									</div>
									<h6 class="ps-4 mb-5">그룹을 구성하고 그룹에 대한 상세정보를 확인할 수 있습니다.</h6>

									<div class="row ps-6">
										<div class="col-lg-5">
											<div class="row">
												<p class="fw-bold my-3 px-3"><c:out value="${hyspName}"/>(4명)</p>

												<div class="card overflow-hidden">
													<div class="card-header d-flex align-items-center">
														<div class="position-relative">
															<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search fe-1x position-absolute start-0 top-50 opacity-25 ms-2 translate-middle-y">
																<circle cx="11" cy="11" r="8"></circle>
																<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
															<input type="text" placeholder="그룹 검색.." class="form-control ps-7 rounded-pill form-control-sm" style="background-color: ghostwhite;">
														</div>
													</div>
													<div class="card-body" style="min-height: 5rem;">

														<div class="tree-box box-border">
															<ul class="trees">
																<li class="has-child"><input id="tree-controll1" type="checkbox" checked> <span class="tree-control"></span> <label> <a href="javascript:void(0);"><c:out value="${hyspName}"/> (4)</a>
																</label>
																	<ul class="p-1">
																		<li class="has-child"><input type="checkbox" checked> <span class="tree-control"></span> <label> <a href="javascript:void(0);">1조 (0)</a>
																		</label>
																			<ul class="p-1">
																				<li><label> <a href="javascript:void(0);">1분단 (0)</a>
																				</label></li>
																				<li><label> <a href="javascript:void(0);">2분단 (0)</a>
																				</label></li>
																				<li><label> <a href="javascript:void(0);">3분단 (0)</a>
																				</label></li>
																				<li><label> <a href="javascript:void(0);">4분단 (0)</a>
																				</label></li>
																			</ul></li>

																		<li class="has-child"><input type="checkbox" checked> <span class="tree-control"></span> <label> <a href="javascript:void(0);">2조 (0)</a>
																		</label>
																			<ul class="p-1">
																				<li><label> <a href="javascript:void(0);">1분단 (0)</a>
																				</label></li>
																				<li><label> <a href="javascript:void(0);">2분단 (0)</a>
																				</label></li>
																				<li><label> <a href="javascript:void(0);">3분단 (0)</a>
																				</label></li>
																				<li><label> <a href="javascript:void(0);">4분단 (0)</a>
																				</label></li>
																			</ul></li>
																	</ul></li>
																<li><label> <a href="javascript:void(0);">미분류 (0)</a>
																</label></li>
															</ul>
														</div>



													</div>
												</div>

											</div>
										</div>
										<div class="col-lg">
											<div class="card" style="margin-top: 50px; margin-bottom: 10px;">
												<div class="card-header d-flex align-items-center" style="height: 60px;">
													<span class="fw-bold"><c:out value="${hyspName}"/>(4)</span>
												</div>
												<div class="card-body" style="height: 16rem; overflow-y: auto;">
													<ul class="list-unstyled">

														<li class="py-1">
															<div class="d-flex align-items-center">
																<img src="/resources/assets/media/avatars/05.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
																<div>
																	<div class="h6 mb-0 lh-1">
																		<a href="#modalMember1" data-bs-toggle="modal">김나리</a>
																	</div>
																</div>
															</div>
														</li>
														<li class="py-1">
															<div class="d-flex align-items-center">
																<img src="/resources/assets/media/avatars/02.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
																<div>
																	<div class="h6 mb-0 lh-1">
																		<a href="#modalMember2" data-bs-toggle="modal">정미림</a>
																	</div>
																</div>
															</div>
														</li>
														<li class="py-1">
															<div class="d-flex align-items-center">
																<img src="/resources/assets/media/avatars/08.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
																<div>
																	<div class="h6 mb-0 lh-1">
																		<a href="#modalMember3" data-bs-toggle="modal">윤영민</a>
																	</div>
																</div>
															</div>
														</li>
														<li class="py-1">
															<div class="d-flex align-items-center">
																<img src="/resources/assets/media/avatars/03.jpg" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
																<div>
																	<div class="h6 mb-0 lh-1">
																		<a href="#modalMember4" data-bs-toggle="modal">이건우</a>
																	</div>
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
											<img src="/resources/assets/media/avatars/05.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 김나리</a>
										</h5>

										<!-- Email -->
										<p class="small text-muted mb-0">
											<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com"> noah.pierre@mail.com</a>
										</p>

										<!-- Phone -->
										<p class="small text-muted mb-3">
											<a class="d-block text-reset text-truncate" href="#"> 010-1234-5678</a>
										</p>


										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-outline-gray text-body">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle">
													<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
												Send Message
											</button>
											<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x">
													<circle cx="12" cy="12" r="1"></circle>
													<circle cx="12" cy="5" r="1"></circle>
													<circle cx="12" cy="19" r="1"></circle></svg>
											</button>
											<ul class="dropdown-menu dropdown-menu-end" style="">
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="12" y1="16" x2="12" y2="12"></line>
															<line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
														View detail
													</a></li>
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
														Block contact
													</a></li>
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
											<img src="/resources/assets/media/avatars/02.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 정미림</a>
										</h5>

										<!-- Email -->
										<p class="small text-muted mb-0">
											<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com"> noah.pierre@mail.com</a>
										</p>

										<!-- Phone -->
										<p class="small text-muted mb-3">
											<a class="d-block text-reset text-truncate" href="#"> 010-1234-5678</a>
										</p>


										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-outline-gray text-body">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle">
													<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
												Send Message
											</button>
											<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x">
													<circle cx="12" cy="12" r="1"></circle>
													<circle cx="12" cy="5" r="1"></circle>
													<circle cx="12" cy="19" r="1"></circle></svg>
											</button>
											<ul class="dropdown-menu dropdown-menu-end" style="">
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="12" y1="16" x2="12" y2="12"></line>
															<line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
														View detail
													</a></li>
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
														Block contact
													</a></li>
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
											<img src="/resources/assets/media/avatars/08.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 윤영민</a>
										</h5>

										<!-- Email -->
										<p class="small text-muted mb-0">
											<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com"> noah.pierre@mail.com</a>
										</p>

										<!-- Phone -->
										<p class="small text-muted mb-3">
											<a class="d-block text-reset text-truncate" href="#"> 010-1234-5678</a>
										</p>


										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-outline-gray text-body">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle">
													<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
												Send Message
											</button>
											<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x">
													<circle cx="12" cy="12" r="1"></circle>
													<circle cx="12" cy="5" r="1"></circle>
													<circle cx="12" cy="19" r="1"></circle></svg>
											</button>
											<ul class="dropdown-menu dropdown-menu-end" style="">
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="12" y1="16" x2="12" y2="12"></line>
															<line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
														View detail
													</a></li>
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
														Block contact
													</a></li>
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
											<img src="/resources/assets/media/avatars/03.jpg" alt="..." class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 이건우</a>
										</h5>

										<!-- Email -->
										<p class="small text-muted mb-0">
											<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com"> noah.pierre@mail.com</a>
										</p>

										<!-- Phone -->
										<p class="small text-muted mb-3">
											<a class="d-block text-reset text-truncate" href="#"> 010-1234-5678</a>
										</p>


										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-outline-gray text-body">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle">
													<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
												Send Message
											</button>
											<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
												<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x">
													<circle cx="12" cy="12" r="1"></circle>
													<circle cx="12" cy="5" r="1"></circle>
													<circle cx="12" cy="19" r="1"></circle></svg>
											</button>
											<ul class="dropdown-menu dropdown-menu-end" style="">
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="12" y1="16" x2="12" y2="12"></line>
															<line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
														View detail
													</a></li>
												<li><a class="dropdown-item" href="#">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
														Block contact
													</a></li>
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
						<span class="d-block lh-sm small text-muted text-end">
							&copy;
							<script>
								document.write(new Date().getFullYear())
							</script>
							. Hey, Buddy All rights reserved.
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


	<!--Page script begin-->
	<script src="/resources/assets/vendor/inputmask.min.js"></script>
	<script>
		Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
	</script>
	
	 
	
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[5].className += ' current';
	</script>
	<%@include file="../include/pageScripts.jsp"%>
</body>

</html>
