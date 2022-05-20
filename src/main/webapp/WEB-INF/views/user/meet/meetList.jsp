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
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
</head>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<body>

	<form id="meetListForm" method="post">
	
	<input type="hidden" id="hymrSeq" name="hymrSeq">
	
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
								<a href="meetStart"
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
								<div class="card" style="min-height: 490px;">
									<c:choose>
										<c:when test="${fn:length(roomList) eq 0}">
											<div style="height: 490px;" class="d-flex align-items-center justify-content-center">
												<div class="text-center">
													<h1 class="d-block">진행 중인 미팅이 없습니다</h1>
													<img src="/resources/user/images/cuteOwl.png" style="width: 200px;">
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="table-responsive">
												<table id="datatable"
													class="table mt-0 table-hover table-card table-nowrap">
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
														<c:forEach items="${roomList}" var="room" varStatus="status">
															<tr>
																<td class="text-center" style="width: 200px;">
																	<div class="avatar-group justify-content-end">
																		<a href="#!.html"
																			class="avatar-group-item avatar rounded-circle"
																			data-bs-toggle="tooltip" title=""
																			data-bs-original-title="Gabriel H"> <img
																			src="/resources/assets/media/avatars/04.jpg" alt="..."
																			class="avatar-group-img rounded-circle">
																		</a> <a href="#!.html"
																			class="avatar-group-item avatar rounded-circle"
																			data-bs-toggle="tooltip" title=""
																			data-bs-original-title="Emily Doe"> <img
																			src="/resources/assets/media/avatars/02.jpg" alt="..."
																			class="avatar-group-img rounded-circle">
																		</a> <a href="#!.html"
																			class="avatar-group-item avatar rounded-circle"
																			data-bs-toggle="tooltip" title=""
																			data-bs-original-title="Adam Howkins"> <img
																			src="/resources/assets/media/avatars/03.jpg" alt="..."
																			class="avatar-group-img rounded-circle">
																		</a>
																	</div>
																</td>
																<td style="width: 700px;"><span class="fw-bold fs-4"><c:out value="${room.hymrRoomName}"/><i class="bi bi-lock ps-2"></i>
																</span><br><span id="memberInRoom${room.hymrSeq}">1</span></td>
																<td class="text-end"
																	style="width: 200px; vertical-align: middle;"><i
																	class="bi bi-alarm pe-1"></i>12:34</td>
																<td style="vertical-align: middle;"><a
																	href="javascript:enterRoom(<c:out value="${room.hymrSeq}"/>);"
																	class="btn rounded-pill btn-primary text-truncate">회의 참여</a></td>
															</tr>
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
				<!--//Page content End//-->
				
				<div class="toolbar py-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-12 text-md-end" style="padding-right: 30px;">
								<a href="meetStart" class="btn rounded-pill btn-danger text-truncate">회의 시작</a>
							</div>
						</div>
					</div>
				</div>
				

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
	
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[2].className += ' current';
	</script>
	<script type="text/javascript">
	enterRoom = function(seq){
		$("#hymrSeq").val(seq);
		$("#meetListForm").attr("action", "/meet/meetEnter").submit();
	}
	</script>
	
	<script type="text/javascript">
	//DB에 저장하고 끌어다쓰는 방법.. 실시간 처리가 어렵다. 2022.05.18
	$(document).ready(function(){
		
		<c:forEach items="${roomList}" var="room" varStatus="statusRoom">
			
			var roomMember${room.hymrSeq} = new Array();
			
			<c:forEach items="${memberList}" var="member" varStatus="statusMember">
				
				<c:if test="${member.hymrSeq eq room.hymrSeq}">
					
					roomMember${room.hymrSeq}.push(" ${member.hymmName}");
				
				</c:if>
					
			</c:forEach>
			
			console.log(roomMember${room.hymrSeq});
			$("#memberInRoom" + ${room.hymrSeq}).text(roomMember${room.hymrSeq});
			
		</c:forEach>
		
	});
	</script>
	 
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" integrity="sha512-iKDtgDyTHjAitUDdLljGhenhPwrbBfqTKWO1mkhSFH3A7blITC9MhYon6SjnMhp4o0rADGw9yAC6EW4t5a4K3g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<!-- 
	<script type="text/javascript">
	const socket = new SockJS('/stompTest');
	const client = Stomp.over(socket);

	client.connect({}, function() {
		console.log("Connected stompTest!");

		client.send("/pub/meetRoomList", {}, "give me the list");
		
		// Controller's MessageMapping, header, message(자유형식)
		client.subscribe("/sub/meetRoomList", function(event) {
			console.log("subscribing room list ~ , ", event);
			
		});

		
	});
	</script>
	 -->
	 
</body>

</html>
