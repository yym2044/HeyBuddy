<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
            <link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

            <!--Google web fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
			<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
			<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
        <!--Simplebar css-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

        <!--Choices css-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

        <!--Calendar app style-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css">

        <!--Main style-->
        <link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
    </head>

    <body>
     
     	<form id="formList" name="formList" method="POST" action="/plan/planInst" enctype="multipart/form-data">
		<input type="hidden" id="hyplSeq" name="hyplSeq">
		<input type="hidden" id="hyspSeq" name="hyspSeq" value="<c:out value="${item.hyspSeq}"/>">
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
                    <div class="toolbar pt-4 px-4 px-lg-8">
                        <div class="position-relative container-fluid px-0">
                            <div class="row align-items-center position-relative">
                                <div class="col-md-8 mb-3 mb-lg-0">
                                    <h3 class="mb-2 ">일정</h3>
                                   <!--  <p class="mb-0 text-muted">일정을 등록해 주세요</p> -->


                                </div>
                              <!--   <div class="col-md-4">
                                    <nav aria-label="breadcrumb" class="d-flex justify-content-md-end">
                                        <ol class="breadcrumb mb-0">
                                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                                            <li class="breadcrumb-item">일정</li>
                                        </ol>
                                    </nav>
                                </div> -->
                            </div>
                        </div>
                    </div>
   			       <br>  
					<div class="row planinst container">
							<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정등록</button>
					
					<!-- 모달 -->
					<div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"> <!-- 이 위치에 넣어줘야 적용됨  -->
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
	                    	<input class="form-control mb-3" type="text" id="hyplDesc" name="hyplDesc" style="height: 100px;" placeholder="일정을 입력하세요" autocomplete="off">
	                    	<br>
	                    	<h5>날짜</h5>
	                    	<input class="form-control mb-3 shDate" type="text" id="hyplDate" name="hyplDate" placeholder="날짜를 등록해주세요" autocomplete="off">
	                    	<br>
	                    	<h5>공유자</h5>
	                   	     <div class="form-control mb-3">
	                            <div class="card card-body">
	                              <select multiple class="form-control" data-choices='{"silent": true,"removeItems": "true","removeItemButton": "true"}' id="hymmSeq" name="hymmSeq">
				                                <c:forEach items="${selectListMember}" var="item" varStatus="status">
											<option value="<c:out value="${item.hymmSeq}"/>"><c:out value="${item.hymmName}"/>
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
                    	<a class="btn btn-danger me-2" style="width: 60px; font-size: 1em; text-align: center; float: right;">취소</a>
 						<input type="submit"  class="btn btn-primary me-2"  style="width: 100px; font-size: 1em; text-align: center; float: right;" id="btnSubmit" value="등록하기"> 
					      </div>
					    </div>
					  </div>
					</div>
                    	<!-- <a class="btn btn-secondary" href="#" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정변경</a> -->
                    	<!-- <a class="btn btn-danger plandele" href="#" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정삭제</a> -->
						<!-- Button trigger modal -->
		                 <a class="btn btn-danger plandele" href="#" data-bs-toggle="modal" data-bs-target="#staticBackdrop"  style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정삭제</a>
						
						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="staticBackdropLabel">경 고</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
                          <span class="d-block lh-sm small text-muted text-end">&copy;
                            <script>
                              document.write(new Date().getFullYear())
                            </script>. Copyright
                          </span>
                        </div>
                      </footer>
                      <!--/.Page Footer End-->
                </main>
                <!--///////////Page content wrapper End///////////////-->
                </form>
         </body>
        <!--////////////Theme Core scripts Start/////////////////-->
		<script src="/resources/user/js/backgroundImg.js"></script>
        <script src="/resources/assets/vendor/feather.min.js"></script>
        <script src="/resources/assets/js/theme.bundle.js"></script>
        <script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
		<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"/>
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
    const currentMonth = ('0' + (new Date().getMonth() + 1)).slice(-2)
    const currentYear = new Date().getFullYear()
    const exampleEvents = [{
        title: 'All Day Event',
        start: `${currentYear}-${currentMonth}-01`,
        backgroundColor: cGreen,
        borderColor: cGreen,
      },
      {
        title: 'Tech Conference',
        start: `${currentYear}-${currentMonth}-07`,
        end: `${currentYear}-${currentMonth}-10`,
        backgroundColor:cBlue,
        borderColor: cBlue,
      },
      {
        groupId: '123',
        title: 'Meeting 1',
        start: `${currentYear}-${currentMonth}-21T16:00:00+00:00`,
        backgroundColor: cDanger,
        borderColor: cDanger,
      },
      {
        groupId: '123',
        title: 'Meeting 2',
        start: `${currentYear}-${currentMonth}-24T16:00:00+00:00`,
        backgroundColor: cDanger,
        borderColor: cDanger,
      },
      {
        title: 'Meeting',
        start: `${currentYear}-${currentMonth}-04T10:30:00+00:00`,
        end: `${currentYear}-${currentMonth}-04T13:30:00+00:00`,
        backgroundColor:cYellow,
        borderColor: cYellow,
      },
      {
        title: 'Lunch',
        start: `${currentYear}-${currentMonth}-04T13:00:00+00:00`,
        backgroundColor:cGray,
        borderColor: cGray,
      },
      {
        title: 'Birthday',
        start: `${currentYear}-${currentMonth}-05T07:00:00+00:00`,
        backgroundColor: cDark,
        borderColor: cDark,
      },
      {
        url: 'http:\/\/google.com\/',
        title: 'google.com',
        start: `${currentYear}-${currentMonth}-28`,
        backgroundColor: 'blue',
        borderColor: 'blue',
      }
    ]
                // Initialize the 달력
    const exampleCalendar = new FullCalendar.Calendar(document.getElementById('exampleCalendar'), {
      events: exampleEvents,
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      themeSystem: 'bootstrap',
      bootstrapFontAwesome: false,
      buttonText: {
        today: '오늘',
        month: '월별',
        week: '주별',
        day: '일별',
        list: '이벤트',
        prev: '❮',
        next: '❯',
      },
      dayMaxEvents: true, // allow "more" link when too many events
      editable: true,
      droppable: true
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
			
			myModal.addEventListener('shown.bs.modal', function () {
			  myInput.focus()
			})
	</script>
    
    <!-- Jquery 달력  -->
	<script type="text/javascript">
	$(document).ready(function(){
		 $("input.shDate").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
	</script>
	
	
	<!-- 벨리데이션 값 넣었을때 나오는 벨리데이션  -->   
<!--    	 <script type = "text/javascript">
		$("#btnSubmit").on("click", function() {
			
			if(!checkNull($("#hyplName"), $("#hyplName").val(), "제목을 입력해주세요")) return false;
			if(!checkNull($("#hyplDesc"), $("#hyplDesc").val(), "상세일정을 입력해주세요")) return false;
			if(!checkNull($("#hyplDate"), $("#hyplDate").val(), "날짜를 입력해주세요")) return false;

			});
	</script>  -->
	
	<!-- 	<script type="text/javascript">
	goInst = function() {
		$("#planList").attr("action", "/plan/planList");
		$("#planList").submit();
	}
	
	</script> -->

</html>
