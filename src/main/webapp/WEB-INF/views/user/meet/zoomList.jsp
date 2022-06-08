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

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
</head>
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
								<a href="./heyBuddyMeetStart.html"
									class="btn rounded-pill btn-danger text-truncate">회의 시작</a>
							</div>
						</div>
					</div>
				</div>
				 -->
				<!--//Page Toolbar End//-->
				
				<c:set var="count" value="0"/>
				<c:forEach items="${list}" var="item" varStatus="status">
					<%-- 
					<c:if test="${item.agenda eq hyspSeq}">
					 --%>
					<c:if test="${fn:split(item.agenda, '_')[0] eq hyspSeq}">
						<c:set var="count" value="${count + 1}"/>
					</c:if>
				</c:forEach>
				

				<!--//Page content//-->
				<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div id="zoomListDiv" class="card-body">
										<c:choose>
											<c:when test="${count eq 0}">
												<div style="height: 490px;" class="d-flex align-items-center justify-content-center">
													<div class="text-center">
														<h1 class="d-block">진행 중인 미팅이 없습니다</h1>
														<img src="/resources/user/images/cuteOwl.png" style="width: 200px;">
													</div>
												</div>
											</c:when>
											
											<c:otherwise>
												<div class="table-responsive" style="min-height: 490px;">
													<table id="datatable" class="table mt-0 table-hover table-card table-nowrap">
														<!-- <thead class="text-uppercase small text-muted">
						                                        <tr>
						                                            <th>Name</th>
						                                            <th>Position</th>
						                                            <th>Office</th>
						                                            <th>Age</th>
						                                            <th>Start date</th>
						                                            <th>Salary</th>
						                                        </tr>
						                                    </thead> -->
														<tbody>
															<c:forEach items="${list}" var="item" varStatus="status">
																<%-- <c:if test="${item.agenda eq hyspSeq}"> --%>
																<c:if test="${fn:split(item.agenda, '_')[0] eq hyspSeq}">
																	<tr name="tr" id="tr_${status.index}" class="border <c:if test="${fn:split(item.agenda, '_')[1] eq sessSeq}">myTr</c:if>">
																		<td style="width: 900px; vertical-align: middle;">
																			<span class="fw-bold fs-4">
																				<c:out value="${item.topic}"/>
																				<c:if test="${fn:split(item.agenda, '_')[1] eq sessSeq}"><svg style="width: 12px; height:12px; color:red;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--! Font Awesome Pro 6.1.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M576 136c0 22.09-17.91 40-40 40c-.248 0-.4551-.1266-.7031-.1305l-50.52 277.9C482 468.9 468.8 480 453.3 480H122.7c-15.46 0-28.72-11.06-31.48-26.27L40.71 175.9C40.46 175.9 40.25 176 39.1 176c-22.09 0-40-17.91-40-40S17.91 96 39.1 96s40 17.91 40 40c0 8.998-3.521 16.89-8.537 23.57l89.63 71.7c15.91 12.73 39.5 7.544 48.61-10.68l57.6-115.2C255.1 98.34 247.1 86.34 247.1 72C247.1 49.91 265.9 32 288 32s39.1 17.91 39.1 40c0 14.34-7.963 26.34-19.3 33.4l57.6 115.2c9.111 18.22 32.71 23.4 48.61 10.68l89.63-71.7C499.5 152.9 496 144.1 496 136C496 113.9 513.9 96 536 96S576 113.9 576 136z"/></svg></c:if>
																			</span>
																		</td>
																		<!-- 줌 계정 higher plan 필요 
																		<td class="text-start" style="width: 700px;">
																			<div class="avatar-group justify-content-end">
																				<a href="#!.html" class="avatar-group-item avatar rounded-circle" data-bs-toggle="tooltip" title="" data-bs-original-title="홍길동">
																					<img src="/resources/user/images/profileDefault.png" alt="..." class="avatar-group-img rounded-circle">
																				</a>
																				<a href="#!.html" class="avatar-group-item avatar rounded-circle" data-bs-toggle="tooltip" title="" data-bs-original-title="장길산">
																					<img src="/resources/user/images/profileDefault.png" alt="..." class="avatar-group-img rounded-circle">
																				</a>
																			</div>
																		</td>
																		 -->
																		<td style="vertical-align: middle;">
																			<button name="btnEnd" id="btnEnd_${status.index}" onclick="deleteMeeting(<c:out value="${item.id}"/>)" class="btn rounded-pill btn-danger text-truncate <c:if test="${fn:split(item.agenda, '_')[1] eq sessSeq}">myBtnEnd</c:if>">회의종료</button>
																		</td>
																		<td class="text-end" style="width: 200px; vertical-align: middle;">
																			시작시간
																			<i class="bi bi-alarm px-1"></i>
																			<span id="zoomTimeSpan${status.index}">
																				<%-- <c:out value="${fn:substring(item.start_time, 11, 19)}"/> --%>
																			</span>
																		</td>
																		<td style="vertical-align: middle;">
																			<a href="<c:out value="${item.join_url}"/>" target="_blank" class="btn rounded-pill btn-primary text-truncate">회의 참여</a>
																		</td>
																	</tr>
																</c:if>
															</c:forEach>
														
														</tbody>
													</table>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//Page content End//-->
				
				<div class="toolbar py-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-12 text-md-end" style="padding-right: 30px;">
								<a class="btn rounded-pill btn-danger text-truncate" data-bs-toggle="modal" data-bs-target="#startZoomModal">회의 시작</a>
							</div>
						</div>
					</div>
				</div>
				
				<form method="post" action="/meet/zoomInst">
				
					<input type="hidden" name="agenda" id="agenda">
					
					<!-- startZoom Modal Start -->
					<div class="modal fade" id="startZoomModal" tabindex="-1" aria-labelledby="startZoomModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">새로운 미팅을 생성합니다. (일일 제한 : 100회)</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<input type="text" class="form-control" name="topic" id="topic" placeholder="미팅 이름">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									<button type="submit" class="btn btn-primary">생성</button>
								</div>
							</div>
						</div>
					</div>
					<!-- startZoom Modal End -->
					
				</form>
				
				<form method="post" action="/meet/zoomDele">
					<!-- deleteZoom Modal Start -->
					<div class="modal fade" id="deleteZoomModal" tabindex="-1" aria-labelledby="startZoomModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">미팅을 삭제합니다</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<input type="text" class="form-control" name="id" id="id" placeholder="미팅 아이디">
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									<button type="submit" class="btn btn-primary">확인</button>
								</div>
							</div>
						</div>
					</div>
					<!-- deleteZoom Modal End -->
				</form>

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

	<script type="text/javascript">
	
	$("#agenda").val("<c:out value="${hyspSeq}"/>_<c:out value="${sessSeq}"/>");
	
	convertTime = function(start_time){
		
		const hour_utc = Number(start_time.substr(0,2));
		const hour_local = String(hour_utc + 9);
		const start_time_zoom = hour_local +  start_time.substr(2,6)
			
		return start_time_zoom;		
	}
	
	const TimesArray = new Array();
	
	let start_time = "";
	let start_time_zoom = "";
	
	
	<c:forEach items="${list}" var="item" varStatus="status">
		
		start_time = '<c:out value="${fn:substring(item.start_time, 11, 19)}"/>'	
		TimesArray.push(convertTime(start_time));
		
	</c:forEach>

	for(var i = 0 ; i < TimesArray.length; i++){
		$("#zoomTimeSpan" + i).text(TimesArray[i]);
	}
	
	</script>
	
	<script type="text/javascript">
	const tr = document.getElementsByName("tr");
	const btnEnd = document.getElementsByName("btnEnd");
	
	
	$(document).ready(function(){
		for(var i = 0 ; i < tr.length; i++ ){
			btnEnd[i].hidden = true;
		}
	});
	
	console.log(tr);
	console.log(btnEnd);
	
	for(var i = 0 ; i < tr.length; i++ ){
		
		tr[i].addEventListener("mouseenter", (event) => {
			if(btnEnd[event.target.id.split("_")[1]].classList.contains("myBtnEnd")){
				btnEnd[event.target.id.split("_")[1]].hidden = false;
			}
		});
		
		tr[i].addEventListener("mouseleave", (event) => {
			if(btnEnd[event.target.id.split("_")[1]].classList.contains("myBtnEnd")){
				btnEnd[event.target.id.split("_")[1]].hidden = true;
			}
		});
		
	}
	
	deleteMeeting = function(id){
		$("#deleteZoomModal").modal("show");
		$("#id").val(id);
	}
	</script>
	<%@include file="../include/pageScripts.jsp"%>
	
</body>

</html>
