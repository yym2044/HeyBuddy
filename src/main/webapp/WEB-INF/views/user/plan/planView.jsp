<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%> 

<!DOCTYPE html>
<html lang="en">


    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
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
			<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
        <!--Simplebar css-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

        <!--Choices css-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

        <!--Calendar app style-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css">

        <!--Main style-->
        <link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
        <style>
        	
        	
			 .planinst :hover{
			 			background: white;
			 			color: black;
			}
			
			.main_div {
				margin-left: 80px;
				/* place-items: center; */  /*  가운데 정렬시킴 */
	    		width: 90%;	/* width 퍼센트로 잡아주면 높이도 알아서 같이되는듯. */
				display: grid; /* 가로를 가운데로 정렬해줌 */
				/* width: 100px; */
				background: white; /*   배경흰색으로*/
				padding: 30px;  /* 전체적인 테두리 안쪽의 공간 */
				border-radius: 10px; /* 도형 사각형을 둥글게 */
				box-shadow: 5px 5px 10px rgba(0,0,0,0.15);  /* 박스에 그림자를 줘서 입체적으로 만듬 */
			}
			
			
        </style>
        
        
    </head>

    <body>
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
				<!-- sidebar 끝부분 여기까지 -->
                    <!--//Page Toolbar//-->
                    <div class="toolbar pt-4 px-4 px-lg-8">
                        <div class="position-relative container-fluid px-0">
                            <div class="row align-items-center position-relative">
                                <div class="col-md-8 mb-3 mb-lg-0">
                                    <h5 class="mb-2">일정상세</h5>
                                   <!--  <p class="mb-0 style="color: gray;">일정을 등록해주세요</p> --> <!-- text-muted 텍스트 회색으로 색깔지우는거  -->


                                </div>
                             <!--    <div class="col-md-4">
                                    <nav aria-label="breadcrumb" class="d-flex justify-content-md-end">
                                        <ol class="breadcrumb mb-0">
                                            <li class="breadcrumb-item"><a href="#!">홈</a></li>
                                            <li class="breadcrumb-item active">일정</li>
                                            <li class="breadcrumb-item">일정상세</li>
                                        </ol>
                                    </nav>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <br>
                    <!--// 달력 윗부분 영역//-->


                    <!--//달력 아랫 부분//-->
<!--                       <div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
                        <div class="container-fluid px-0">
                           <div class="card card-body">
                            <div id="exampleCalendar"></div>
                           </div>
                        </div>
                    </div> -->
                    <div class="main_div mb-4">
						<h4 style="text-align: center;">📌일정상세</h4>			
						<br>			
						<div class="row container">
                    	<h5>제목</h5>
                    	<input class="form-control" style="width: 130px;"  type="text" id="" name=""  placeholder="일정 제목을 입력해주세요">
                    	<h5>일정내용</h5> 
                    	<input class="form-control" style="width: 130px;"  type="text" id="" name="" style="height: 100px;" placeholder="일정을 입력하세요">
                    	</div>
                    	<br> 
                    	<h5>기한</h5>
                    	<a class="form-control mb-3" type="text" id="" name=""  placeholder="기한을 등록해주세요" readOnly><img src="/resources/user/images/calendar.png" style="width: 50px; height: 50px;"></a>
                    	<br><br>
                    	<h5>공유자</h5>
                   	     <div class="form-control mb-3">
                            <div class="card card-body">
                                <select multiple class="form-control" data-choices='{"silent": true,"removeItems": "true","removeItemButton": "true"}' readOnly>
                                    <option value="1">김나리</option>
                                    <option value="2">윤영민</option>
                                    <option value="3">정미림</option>
                                    <option value="4">이건우</option>
                                    <option value="5">피터틸</option>  
                                </select>
                            </div>  
                        </div>
                    <!-- 	<h5 style="margin-right: 1150px;">공유자</h5>
                    	<div class="d-flex" style="margin-right: 850px;"">
                    	<input class="form-control me-2" type="text" id="" name="" style="font-size: 1.5em;" readonly>
                 	Button trigger modal	
                    	<a class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="width: 150px;"  href="#">공유자 추가</a>
					
					Modal
						<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="staticBackdropLabel">확인</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body"></div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary" name="" id="btnModalDelete">추가</button>
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									</div>
								</div>
							</div>
						</div> -->
				                    	
                    	<br>
                    	<div class="planinst container">
                    	<br>
                    	<a class="btn btn-danger me-2" href="#" style="width: 60px; font-size: 1em; text-align: center; float: right;">삭제</a>
						<a class="btn btn-primary me-2" href="planForm" style="style=width: 100px; font-size: 1em; text-align: center; float: right;">일정등록</a>
                    	
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
            </div>
        </div>
     </body>
        <!--////////////Theme Core scripts Start/////////////////-->

        <script src="/resources/assets/vendor/feather.min.js"></script>
        <script src="/resources/assets/js/theme.bundle.js"></script>
        <script>feather.replace()</script>

        <!--////////////Theme Core scripts End/////////////////-->



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
                // Initialize the calendar
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
        today: 'Today',
        month: 'Month',
        week: 'Week',
        day: 'Day',
        list: 'List',
        prev: '❮',
        next: '❯',
      },
      dayMaxEvents: true, // allow "more" link when too many events
      editable: true,
      droppable: true
    }).render()
        </script>
        
   
<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      <script type="text/javascript">
    	const sidebarLink = document.querySelectorAll('.Sidebar-link');
    	console.log(sidebarLink);
    	
    	console.log(sidebarLink[3]);
    	
    	sidebarLink[3].className += ' current';
    </script>

</html>
