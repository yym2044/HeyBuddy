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
				
				
				
				

				<!--//Page content//-->
				<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div id="zoomListDiv" class="card-body">
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<div style="height: 490px;" class="d-flex align-items-center justify-content-center">
													<div class="text-center">
														<h1 class="d-block">진행 중인 미팅이 없습니다</h1>
														<img src="/resources/user/images/cuteOwl.png" style="width: 200px;">
													</div>
												</div>
											</c:when>
											
											<c:otherwise>
												<div class="table-responsive">
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
																<c:if test="${item.agenda eq hyspSeq}">
																	<tr>
																		<td style="width: 900px; vertical-align: middle;">
																			<span class="fw-bold fs-4">
																				<c:out value="${item.topic}"/>
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
																		<td class="text-end" style="width: 200px; vertical-align: middle;">
																			<i class="bi bi-alarm pe-1"></i>
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
				
					<input type="hidden" name="agenda" id="agenda" value="${hyspSeq}">
					<!-- startZoomModal Modal -->
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
					<!-- startZoomModal Modal End -->
					
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

</body>

</html>
