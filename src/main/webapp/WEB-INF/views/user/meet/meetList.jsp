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
							<div class="card" style="min-height: 490px;">
								<div id="meetListDiv" class="card-body">
									<%-- 
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
														<c:forEach items="${roomList}" var="room" varStatus="status">
															<tr>
																<td style="width: 200px; vertical-align: middle;">
																	<span class="fw-bold fs-4">
																		<c:out value="${room.hymrRoomName}" />
																		<!-- <i class="bi bi-lock ps-2"></i> -->
																	</span>
																	<br><span id="memberInRoom${room.hymrSeq}">1</span>
																</td>
																<td style="width: 700px;">
																	<div id="avatar-group" class="avatar-group justify-content-end">
																		<!-- 
																		<a class="avatar-group-item avatar rounded-circle"
																			data-bs-toggle="tooltip" title=""
																			data-bs-original-title="Gabriel H"> <img
																			src="/resources/assets/media/avatars/04.jpg" alt="..."
																			class="avatar-group-img rounded-circle">
																		</a> 
																		<a class="avatar-group-item avatar rounded-circle"
																			data-bs-toggle="tooltip" title=""
																			data-bs-original-title="Emily Doe"> <img
																			src="/resources/assets/media/avatars/02.jpg" alt="..."
																			class="avatar-group-img rounded-circle">
																		</a> 
																		<a class="avatar-group-item avatar rounded-circle"
																			data-bs-toggle="tooltip" title=""
																			data-bs-original-title="Adam Howkins"> <img
																			src="/resources/assets/media/avatars/03.jpg" alt="..."
																			class="avatar-group-img rounded-circle">
																		</a>
																		 -->
																	</div>
																</td>
																<td class="text-end" style="width: 200px; vertical-align: middle;">
																	<i class="bi bi-alarm pe-1"></i>12:34
																</td>
																<td style="vertical-align: middle;">
																	<a href="javascript:enterRoom(<c:out value="${room.hymrSeq}"/>);" class="btn rounded-pill btn-primary text-truncate">회의 참여</a>
																</td>
															</tr>
														</c:forEach>

													</tbody>
												</table>
											</div>
										</c:otherwise>
									</c:choose>
									 --%>
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

	<!-- <script type="text/javascript">
	//DB에 저장하고 끌어다쓰는 방법.. 실시간 처리가 어렵다. 2022.05.18
	$(document).ready(function(){
		
		<c:forEach items="${roomList}" var="room" varStatus="statusRoom">
			
			var roomMemberArray${room.hymrSeq} = new Array();
			
			<c:forEach items="${memberList}" var="member" varStatus="statusMember">
				
				<c:if test="${member.hymrSeq eq room.hymrSeq}">
					
					/* roomMemberArray${room.hymrSeq}.push("${member.hymmName}"); */
					
					var data = new Object();
					
					data.Name = "${member.hymmName}";
					data.path = "${member.path}";
					data.uuidFileName = "${member.uuidFileName}";
					
					roomMemberArray${room.hymrSeq}.push(data);
				
				</c:if>
					
			</c:forEach>
			
			console.log(roomMemberArray${room.hymrSeq});
			console.log(roomMemberArray${room.hymrSeq}[0].Name);
			
			$("#memberInRoom" + ${room.hymrSeq}).text(roomMemberArray${room.hymrSeq}.Name);
			
			
			
			for(var i = 0; i < roomMemberArray${room.hymrSeq}.length; i++){
				
				let append = "";
				append += '<a class="avatar-group-item avatar rounded-circle" data-bs-toggle="tooltip" title=""';
				append += 'data-bs-original-title="' + roomMemberArray${room.hymrSeq}[i].Name + '">';
				
				if(roomMemberArray${room.hymrSeq}[i].uuidFileName == ''){
					append += '<img src="/resources/user/images/profileDefault.png" alt="..." class="avatar-group-img rounded-circle"></a>';
				} else {
					append += '<img src="' + roomMemberArray${room.hymrSeq}[i].path + roomMemberArray${room.hymrSeq}[i].uuidFileName + '" alt="..." class="avatar-group-img rounded-circle"></a>';
				}
				
				$("#avatar-group").append(append);
			}
			
		</c:forEach>
		
	});
	</script> -->

	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" integrity="sha512-iKDtgDyTHjAitUDdLljGhenhPwrbBfqTKWO1mkhSFH3A7blITC9MhYon6SjnMhp4o0rADGw9yAC6EW4t5a4K3g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<script type="text/javascript">
	
	 $(document).ready(function(){
		 $(document.body).tooltip({ selector: "[data-bs-toggle='tooltip']" });
	 });
	 

	 </script>
	 
	<script type="text/javascript">
	const socket = new SockJS('/stompTest');
	const client = Stomp.over(socket);

	client.connect({}, async function() {
		console.log("방목록을 얻어보자");
		
		var room;
		
		client.subscribe("/sub/meetRoomMemberList", function(event) {
			
			$("div[name=member_group]").children().remove();
			
			const member = JSON.parse(event.body);
			
			console.log("room.length : " + room.length);
			console.log("member.length : " + member.length);
			
			for(var i = 0; i < room.length; i++){
				
				window['roomMemberArray' + room[i].hymrSeq] = new Array();
				console.log(window['roomMemberArray' + room[i].hymrSeq]);
				
				for(var j = 0; j < member.length; j++){
					
					if(member[j].hymrSeq == room[i].hymrSeq){
						
						var data = new Object();
						
						data.Name = member[j].hymmName;
						data.path = member[j].path;
						data.uuidFileName = member[j].uuidFileName;
						
						window['roomMemberArray' + room[i].hymrSeq].push(data);
						
					}
					
				}
				
				console.log(window['roomMemberArray' + room[i].hymrSeq]);
				console.log(window['roomMemberArray' + room[i].hymrSeq][0].Name);
				console.log(window['roomMemberArray' + room[i].hymrSeq].length);
				
				for(var k = 0; k < window['roomMemberArray' + room[i].hymrSeq].length; k++){
			
					let append = "";
					append += '<a class="avatar-group-item avatar rounded-circle" data-bs-toggle="tooltip" title=""';
					append += 'data-bs-original-title="' + window['roomMemberArray' + room[i].hymrSeq][k].Name + '">';
					
					if(window['roomMemberArray' + room[i].hymrSeq][k].uuidFileName == '' || window['roomMemberArray' + room[i].hymrSeq][k].uuidFileName == null){
						append += '<img src="/resources/user/images/profileDefault.png" alt="..." class="avatar-group-img rounded-circle"></a>';
					} else {
						append += '<img src="' + window['roomMemberArray' + room[i].hymrSeq][k].path + window['roomMemberArray' + room[i].hymrSeq][k].uuidFileName + '" alt="..." class="avatar-group-img rounded-circle"></a>';
					}
					 
					
					$("#avatar-group" + i).append(append);
					
				}
				
			}
			
		});
		
		client.subscribe("/sub/meetRoomList", await function(event) {
			console.log("subscribing room list ~ , " + event);
			
			room = JSON.parse(event.body);
			
			room = room.filter(function(item){
				return item.hyspSeq == <c:out value='${hyspSeq}'/>;
			})
			
			console.log(room);
			console.dir(room);
			
			$("#meetListDiv").children().remove();
			
			let append = "";
			
			if(room.length == 0) {
				append += '<div style="height: 490px;" class="d-flex align-items-center justify-content-center">';
				append += '<div class="text-center">';
				append += '<h1 class="d-block">진행 중인 미팅이 없습니다</h1>';
				append += '<img src="/resources/user/images/cuteOwl.png" style="width: 200px;">';
				append += '</div></div>';
				
			} else {
				
				append += '<div class="table-responsive">';
				append += '<table id="datatable" class="table mt-0 table-hover table-card table-nowrap">';
				append += '<tbody>';

				for(var i = 0 ; i < room.length ; i++){
					
					append += '<tr>';
					append += '<td style="width: 200px; vertical-align: middle;">';
					append += '<span class="fw-bold fs-4">';
					append += room[i].hymrRoomName;
					append += '</span>';
					append += '</td>';
					append += '<td style="width: 700px;">';
					append += '<div id="avatar-group' + i + '" name="member_group" class="avatar-group justify-content-end">';
					append += '</div>';
					append += '</td>';
					append += '<td class="text-end" style="width: 200px; vertical-align: middle;">';
					append += '<i class="bi bi-alarm pe-1"></i>' + timestampToDateTime(room[i].regDateTime) + '<br>';
					append += '</td>';
					append += '<td style="vertical-align: middle;">';
					append += '<a href="javascript:enterRoom(' + room[i].hymrSeq + ');" class="btn rounded-pill btn-primary text-truncate">회의 참여</a>';
					append += '</td>';
					append += '</tr>';
				}
				append += '</tbody>';
				append += '</table>';
				append += '</div>';
			}
			
			$("#meetListDiv").append(append);
			
			client.send("/pub/meetRoomMemberList", {}, JSON.stringify({
				"msg" : "give me members"
			}));
			
		});
		
		// Controller's MessageMapping, header, message(자유형식)
		client.send("/pub/meetRoomList", {}, JSON.stringify({
			"msg" : "give me rooms"
		}));
		
	});
	
	
	
	timestampToDateTime = function(timeStamp){
		var dateTime = new Date(timeStamp);
		
		var year = String(dateTime.getFullYear());
		var month = String(dateTime.getMonth() + 1).padStart(2,"0");
		var date = String(dateTime.getDate()).padStart(2,"0");
		var hour = String(dateTime.getHours()).padStart(2,"0");
		var minute = String(dateTime.getMinutes()).padStart(2,"0");
		var second = String(dateTime.getSeconds()).padStart(2,"0");
		
		var result = year + "/" + month + "/" + date + " " + hour + ":" + minute + ":" + second;
		
		return result; 
	}
	
	</script>
	<%@include file="../include/pageScripts.jsp"%>
</body>

</html>
