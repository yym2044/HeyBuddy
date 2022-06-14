<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>hey, Buddy!</title>

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"	rel="stylesheet">
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<link	href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"	rel="stylesheet">
<!--Simplebar css-->
<link rel="stylesheet"	href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet"	href="/resources/assets/vendor/css/choices.min.css">

<!--Calendar app style-->
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
</head>

<body>

	<form id="planList" name="planList" method="POST" action="/plan/planInst" enctype="multipart/form-data">
		<!-- <input type="hidden" id="hyplSeq" name="hyplSeq"> -->
		<!-- Auto_Implements 기 때문에 필요없음-->
		<!-- <input type="hidden" id="hyspSeq" name="hyspSeq"> -->
		<!-- httpSession 받기때문에 hidden input이 필요없음-->
		<%-- <input type="hidden" id="hymmSeq" name="hymmSeq" value="<c:out value="${item.hymmSeq}"/>"> --%>

		<!--////////////////// PreLoader Start//////////////////////-->
		<!-- include 처리 1번 -->
		<%@include file="../include/loader.jsp"%>
		<!--////////////////// /.PreLoader END//////////////////////-->

		<!--App Start 사이드바 시작부분이다-->

		<!-- include 처리 2번 -->
		<%@include file="../include/pageSideBar.jsp"%>
		<!-- 사이드바 끝부분 여기까지 -->

		<!--///////////Page content wrapper///////////////-->
		<main class="page-content d-flex flex-column flex-row-fluid">

			<!-- include 처리 3번 -->
			<%@include file="../include/pageHeader.jsp"%>
			<!--//Page Toolbar//-->
			<div class="row planinst container">
				<!-- Button trigger modal -->
				<button id="btnForm" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px; display: none;">일정등록</button>

				<!-- 모달 -->
				<div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
						<!-- 이 위치에 넣어줘야 적용됨  -->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="exampleModalLabel" style="text-align: center; float: center;">📌일정등록</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<h5>제목</h5>
								<input class="form-control mb-3" type="text" id="hyplName" name="hyplName" placeholder="일정 제목을 입력해주세요" autocomplete="off">
								<br>
								<h5>일정내용</h5>
								<input class="form-control mb-3" type="text" id="hyplDesc" name="hyplDesc" style="height: 100px;" placeholder="일정을 입력하세요" autocomplete="off"> <br>
								<h5>📅날짜</h5>
								<div class="form-control" style="border-radius: 10px;">
								<h6>시작일</h6>
								<input class="form-control mb-3" type="text" id="hyplDate" name="hyplDate" <fmt:formatDate value="${hyplDate}" pattern="yyyy-MM-dd HH:mm:ss"/> placeholder="시작일 등록해주세요" autocomplete="off">
								<h6>종료일</h6>
								<input class="form-control mb-3" type="text" id="hyplEndDate" name="hyplEndDate" <fmt:formatDate value="${hyplEndDate}" pattern="yyyy-MM-dd HH:mm:ss"/> placeholder="종료일 등록해주세요" autocomplete="off">
								</div><br>
								<h5>공유자</h5>
								<div class="form-control mb-3">
									<div class="card card-body">
										<select multiple class="form-control" data-choices='{"silent": true,"removeItems": "true","removeItemButton": "true"}' id="hyplMemberName" name="hyplMemberName">
											<c:forEach items="${selectListMember}" var="item" varStatus="status">
												<option value="<c:out value="${item.hymmName}"/>"><c:out value="${item.hymmName}" />
											</c:forEach>
										</select>
									</div>
								</div>
								<%-- 	<h5>스페이스</h5>
			            		 <div class="form-control mb-3">
	                                <select class="form-control" id="hyspSeq" name="hyspSeq">
											<option selected>::		스페이스		::
				                                <c:forEach items="${selectListSpace}" var="item" varStatus="status">
											<option value="<c:out value="${item.hyspSeq}"/>"><c:out value="${item.hyspName}"/>
												</c:forEach>
	                                </select>
                                </div> --%>
							</div>
							<div class="modal-footer planinst container">
								<a class="btn btn-danger me-2" style="width: 60px; font-size: 1em; text-align: center; float: right;" data-bs-dismiss="modal">취소</a> 
									<input href="javascript:goInst()" type="submit" class="btn btn-primary me-2" value="등록하기" id="btnSubmit" name="btnSubmit">
								<!-- <a href="javascript:goInst()" type="submit" class="btn btn-primary me-2" style="width: 100px; font-size: 1em; text-align: center; float: right;" id="" name="">등록하기</a> -->
							</div>
						</div>
					</div>
				</div>
				<!-- <a class="btn btn-danger plandele" href="#" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정삭제</a> -->
				<!-- Button trigger modal -->

				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">경 고</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<p style="text-align: center;">정말로 일정을 삭제 하시겠습니까?</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger">삭 제</button>
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫 기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
			<!--//달력 윗부분 끝 End//-->


			<!--//달력임 이거 없으면 날라감//-->
			<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
				<div class="container-fluid px-0">
					<div class="card card-body">
						<div id="exampleCalendar"></div>
					</div>
				</div>
			</div>
			<!--//Page content End//-->

			<!--//Page-footer//-->
			<footer class="pb-4 px-4 px-lg-8">
				<div class="container-fluid px-0">
					<span class="d-block lh-sm small text-muted text-end">
						&copy; <script>
							document.write(new Date().getFullYear())
						</script> . Copyright
					</span>
				</div>
			</footer>
			<!--/ Page Footer End-->

			<!--  모달2 상세일정 만들기위한 모달 start -->
			
			<!-- 트리거 시키는 모달 버튼! 여기로 아작스 id를 갖게해야지 모달창이 뜸 신기하네 히든으로 됨, data-bas-toggle="modal" 이게 중요한듯 -->
			<form id="planEdit" name="planEdit" method="POST" enctype="multipart/form-data">
			<input id="btnForm2" type="hidden" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2"/>
			
			<!-- <form id="modal2" name="modal2" method="POST" enctype="multipart/form-data"> -->
			<div class="row planinst container">
				<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
						<!-- 이 위치에 넣어줘야 적용됨  -->
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="exampleModalLabel" style="text-align: center; float: center;">📝일정상세</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<input type="hidden" id="hyplSeq1" name="hyplSeq">
								<h5>제목</h5>
								<input class="form-control mb-3" type="text" id="hyplName1" name="hyplName" autocomplete="off"> <br>
								<h5>일정내용</h5>
								<input class="form-control mb-3" type="text" id="hyplDesc1" name="hyplDesc" style="height: 100px;" autocomplete="off">
								<br>
								<h5>📅날짜</h5>
								<div class="form-control" style="border-radius: 10px;">
								<h6>시작일</h6>
								<input class="form-control mb-3" type="text" id="hyplDate1" name="hyplDate" <fmt:formatDate value="${hyplDate1}" pattern="yyyy-MM-dd HH:mm:ss"/> autocomplete="off">
								<h6>종료일</h6>
								<input class="form-control mb-3" type="text" id="hyplEndDate1" name="hyplEndDate" <fmt:formatDate value="${hyplEndDate1}" pattern="yyyy-MM-dd HH:mm:ss"/>  autocomplete="off">
								</div><br>
								<h5>👨‍👧‍👧공유된 멤버</h5>
								<input class="form-control mb-3" type="text" id="hyplMemberName1" name="hyplMemberName" disabled>
								<div class="form-control mb-3">
								<br>
								<h5>공유자 추가</h5>
									<div class="card card-body">
										<select multiple class="form-control" id="hyplMemberName" name="hyplMemberName" data-choices='{"silent": true,"removeItems": "true","removeItemButton": "true"}'>
												<c:forEach items="${selectListMember}" var="item" varStatus="status">
												<option><c:out value="${item.hymmName}" />
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<div class="modal-footer planinst container">
								<a class="btn btn-light me-2" style="width: 60px; font-size: 1em; text-align: center; float: right;" data-bs-dismiss="modal">취소</a> 
								<a href="javascript:goUpdt(<c:out value="${rt.hyplSeq}"/>)" type="submit" class="btn btn-primary me-2">수정하기</a>
<!-- 								<input type="submit" class="btn btn-primary me-2" id="" name="" value="수정하기"> -->
								<a href="javascript:goNele(<c:out value="${rt.hyplSeq}"/>)" class="btn btn-danger" style="float: left">삭제하기</a>
<%-- 								<a href="javascript:goNele(<c:out value="${rt.hyplSeq}"/>)" class="btn btn-danger" style="float: left" data-bs-toggle="modal" data-bs-target="#staticBackdrop">삭제하기</a> --%>
							<%-- <a class="btn btn-primary"  href="javascript:goUpdt(<c:out value="${rt.hyplSeq}"/>)" type="submit">수정하기</a>  --%>
							</div>
						</div>
					</div>
				</div>
			</div>
			</form>
			<!--  모달2 end
		</main>







	<!--///////////Page content wrapper End///////////////-->

	<!--////////////Theme Core scripts Start/////////////////-->
	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>



	<!-- <script src="/resources/user/js/backgroundImg.js"></script> -->
	<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<!--  제이쿼리 시간포함 달력 -->
	<link rel="stylesheet" type="text/css" href="/resources/datetimepicker-master/build/jquery.datetimepicker.min.css"/ >
	<script src="/resources/datetimepicker-master/build/jquery.datetimepicker.full.min.js"></script>
	
	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>
	
	<!--App calendar Plugin-->
	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.js"></script>

	<script>
		var cBlue = "var(--bs-primary)";
		var cYellow = "var(--bs-warning)";
		var cDanger = "var(--bs-danger)";
		var cGreen = "var(--bs-success)";
		var cGray = "var(--bs-gray-500)";
		var cDark = "var(--bs-gray-700)";
		var cLight = "var(--bs-gray-100)";
		// Example events
		const currentMonth = ('0' + (new Date().getMonth() + 1)).slice(-2) /*  뒤에 00 표시하기위한 기능	*/
		const currentYear = new Date().getFullYear()

		const exampleEvents = [ {
			seq : '6',
			title : '고추참치',
			start : '2022-05-01 00:00:00',
			backgroundColor : cGreen,
			borderColor : cGreen,
		}, {
			seq : '5',
			title : '아빠상어',
			start : '2022-05-03',
			end : '2022-05-06',
			backgroundColor : cGreen,
			borderColor : cGreen,
		} ]

		$.ajax({
			async : false,
			cache : false,
			type : "post",
			url : "/plan/planListAjax",
			success : function(data) {

				$.each(data, function(i) {

					const obj = new Object();

					obj.seq = data[i].hyplSeq;
					obj.title = data[i].hyplName;
					obj.start = data[i].hyplDate;
					obj.end = data[i].hyplEndDate;
					obj.backgroundColor = "var(--bs-success)";
					obj.borderColor = "var(--bs-success)";

					console.log(obj);

					exampleEvents.push(obj);

				});

				console.log("sdfsdfsffsdfsdf");
				console.log(exampleEvents);

			}

			,
			error : function(jqXHR, textStatus, errorThrown) {
				alert("ajaxUpdate " + jqXHR.textStatus + " : "
						+ jqXHR.errorThrown);
			}
		});

		// Initialize the 달력
		const exampleCalendar = new FullCalendar.Calendar(document.getElementById('exampleCalendar'), {
			height: 575,
			events : exampleEvents,
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
			},
			themeSystem : 'bootstrap',
			bootstrapFontAwesome : false,
			buttonText : {
				today : '오늘',
				month : '월별',
				week : '주별',
				day : '일별',
				list : '이벤트',
				prev : '❮',
				next : '❯',
			},
			dayMaxEvents : true, // allow "more" link when too many events
			editable : true, /*  편집 가능 불가능  */
			droppable : true,
			selectable : true,
			dateClick : function(info) { /* 클릭햇을때 일어나는 이벤트  */
				/* alert('Date: ' + info.dateStr); */
				console.log(info.dateStr);

				/* alert('Resource ID: ' + info.resource.id); */
				/* $("#title").click(/plan/planView); */
				$("#btnForm").click();
			},
			
			
			eventClick : function(info) {
				const hyplSeq = info.event._def.extendedProps.seq;
				console.log(hyplSeq);

				
				$.ajax({
					async : false,
					cache : false,
					type : "post",
					url : "/plan/planViewAjax",
					data : {
						"hyplSeq" : hyplSeq
					},
					/* 컨트롤러갔다와서 실행 */
					success : function(data) {
						console.log(data);
						
					$("#btnForm2").click(); 
						
						$("#hyplSeq1").val(data.hyplSeq);
						$("#hyplName1").val(data.hyplName);
						$("#hyplDesc1").val(data.hyplDesc);
						$("#hyplDate1").val(data.hyplDate);
						$("#hyplEndDate1").val(data.hyplEndDate);
						$("#hyplMemberName1").val(data.hyplMemberName);
						/* 
						
						var str = data.hyplMemberName;
						var words = str.split(',');
						
						console.log(words);
						
				 		const select = document.getElementById("hyplMemberName1");
						console.log(select);
						
						const option = document.createElement("option");
						option.innerText = words; 
						select.appendChild(option); */
						
						
						
						
					}

					,
					error : function(jqXHR, textStatus, errorThrown) {
						alert("ajaxUpdate " + jqXHR.textStatus + " : "
								+ jqXHR.errorThrown);
					}
				});

			}

		}).render()
	</script>

	<!--  사이드바 강조 Hover 자바스크립트-->
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');
		console.log(sidebarLink);

		console.log(sidebarLink[3]);

		sidebarLink[3].className += ' current';
	</script>

	<!-- 모달 자바스크립트 -->
	<script type="text/javascript">
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')
		 
		/* myModal.addEventListener('shown.bs.modal', function(event) {
			myInput.focus()
		}) */
		  
	</script>

	<!-- Jquery 달력 여기선 필요없음 -->
<!-- 	<script type="text/javascript">
		$(document).ready(function() {
			$("input.shDate").datepicker();
		});

		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
	</script> -->

	<!-- 벨리데이션 값 넣었을때 나오는 벨리데이션  -->
	<script type="text/javascript">
		$("#btnSubmit").on("click",	function() {

					if (!checkNull($("#hyplName"), $("#hyplName").val(), "제목을 입력해주세요")) return false;
					if (!checkNull($("#hyplDate"), $("#hyplDate").val(), "날짜를 입력해주세요")) return false;
					if (!checkNull($("#hyplDesc"), $("#hyplDesc").val(), "상세일정을 입력해주세요")) return false;

				});
	</script>
	
	<script type="text/javascript">

		// POST 형식으로 데이터를 삽입 
		goInst = function(seq) {
			$("#hyplSeq").val(seq);
			$("#planList").attr("action", "/plan/planInst"); /* planList의 action 속성은 /plan/planInst이다 라고 선언한것.  */
			$("#planList").submit();
		};
		goUpdt = function(seq) {
			$("#hyplSeq").val(seq);
			$("#planEdit").attr("action", "/plan/planUpdt");
			$("#planEdit").submit();
		};
		goNele = function(seq) {
			$("#hyplSeq").val(seq);
			$("#planEdit").attr("action", "/plan/planListNele");
			$("#planEdit").submit();
		};
		//	$("#formList").submit(); // 그냥 공통적으로 submit는 실행해준다는 의미기 때문에 넣어줘야한다.
	</script>


		<script type="text/javascript">  /* 달력에 한글화 해주는 영역*/
			
			jQuery.datetimepicker.setLocale('kr');
			
			 
			
			 $(function() {
			$('#hyplDate').datetimepicker({
			lang : 'ko',
			format:'Y-m-d H:i:00',
			
			
			});
			});
			 
			 $(function() {
			$('#hyplDate1').datetimepicker({
			lang : 'ko',
			format:'Y-m-d H:i:00',
			
			});
			});
			 
			 $(function() {
			$('#hyplEndDate').datetimepicker({
			lang : 'ko',
			format:'Y-m-d H:i:00',
			
			});
			});
			 $(function() {
			$('#hyplEndDate1').datetimepicker({
			lang : 'ko',
			format:'Y-m-d H:i:00',
			
			});
			});
			
			</script>

	
		<%@include file="../include/pageScripts.jsp"%>

</body>
</html>
