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

            <!--Bootstrap icons-->
            <link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

            <!--Google web fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
			<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
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
			 .planupdt :hover{
			  			background: white;
			 			color: black;
			}
			 .plandele :hover{
			  			background: white;
			 			color: red;
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
						<a class="btn btn-primary" href="planForm" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정등록</a>
                    	<a class="btn btn-secondary" href="#" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정변경</a>
                    	<a class="btn btn-danger plandele" href="#" style="width: 130px; text-align: center; margin-left: 30px; margin-bottom: 5px;">일정삭제</a>
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
            </div>
        </div>
        
        <!--////////////Theme Core scripts Start/////////////////-->

        <script src="/resources/assets/vendor/feather.min.js"></script>
        <script src="/resources/assets/js/theme.bundle.js"></script>
        <script>
          feather.replace()
        </script>

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
        
    <script type="text/javascript">
    	const sidebarLink = document.querySelectorAll('.Sidebar-link');
    	console.log(sidebarLink);
    	
    	console.log(sidebarLink[3]);
    	
    	sidebarLink[3].className += ' current';
    </script>
    </body>

</html>
