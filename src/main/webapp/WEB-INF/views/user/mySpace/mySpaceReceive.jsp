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

<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />
<title id="ctl00_headerTitle">hey, Buddy!</title>

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">

</head>

<style>
header {
	margin-top: 5px;
	margin-left: 7px;
}

body {
	background-image: url('/resources/user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.mySpaceZone {
	margin-left: 20%;
	margin-right: 20%;
}

.card {
	box-shadow: 2px 5px 10px #119C8D;
}
</style>

<body>
	<form id="Receive" name="Receive" method="post">
		<input type="hidden" id="hyspSeq" name="hyspSeq" value="<c:out value="${item.hyspSeq}"/>">
		<input type="hidden" id="hysmSeq" name="hysmSeq" value="<c:out value="${item.hysmSeq}"/>">
		<!--//page-header//-->
		<header class="navbar py-0 page-header navbar-expand navbar-light">

			<ul class="navbar-nav d-flex align-items-center h-100">
				<li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center">
				<a href="/mySpace/mySpaceList" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
						<i data-feather="arrow-left" class="fe-1x"></i>
				</a></li>

			</ul>

			<ul class="navbar-nav ms-auto d-flex align-items-center h-100">
				<li class="nav-item d-flex align-items-center justify-content-center flex-column h-100 me-2">
					<div class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
						<a href="#" class="mode_dark text-reset p-0">
						<i data-feather="sun" class="fe-1x"></i> </a>
						<a href="#" class="mode_light text-reset p-0">
						<i data-feather="moon" class="fe-1x"></i></a>
					</div>
				</li>

				<li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center">
				<a href="javascript:logOut();" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
						<i data-feather="log-out" class="fe-1x"></i>
				</a></li>
			</ul>
		</header>
		<!--Main Header End-->
		<%@include file="../include/loader.jsp"%>

		<div class="d-flex flex-column flex-root">
			<!--Page-->
			<div class="page d-flex flex-row flex-column-fluid">

				<!--///////////Page content wrapper///////////////-->
				<main class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid">

					<div class="container-fluid px-0">

						<div class="row mySpaceZone">
							<div style="text-align: center;">
								<img src="/resources/user/images/newJoinUs.PNG" alt="..." width="600px">
							</div>



							<!--card-->
							<div class="card mb-4">

								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar -->

										<h5 class="mb-0">
											Welcome 👋
											<c:out value="${sessName}" />
											님
										</h5>
										<br>
										<h5>
											최고의 스페이스 ' <c:out value="${item.hyspName}" /> '으로부터 초대되었습니다.
										</h5>
										<hr>
										<a href="#!"
											class="avatar mb-3 mx-auto xxl rounded-cirlce d-block"> 
											<c:choose>
												<c:when test="${empty item.uuidFileName}">
													<img src="/resources/user/images/gathering1.png" class="rounded-circle img-fluid" alt="">
												</c:when>
												<c:otherwise>
													<img src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>" class="rounded-circle img-fluid" alt="">
												</c:otherwise>
											</c:choose>
										</a>
										
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset">
											<c:out value="${item.hyspName}" />
											</a>
										</h5>

										<small> 현재 멤버수 : <c:out value="${vo.totalMembers}" /> 명 </small>

										<!-- Email -->
										<br> <br>

										<div class="btn-group">
											<a
												href="javascript:goReceive1(<c:out value="${item.hyspSeq}"/>);">
												<button type="button" class="btn btn-gray">
													<i class="fe-1x me-2" data-feather="thumbs-up"></i> I'm in!
												</button>
											</a>
										</div>

										<div class="btn-group">
											<a
												href="javascript:goReceive2(<c:out value="${item.hyspSeq}"/>);">
												<button type="button" class="btn btn-gray">
													<i class="fe-1x me-2" data-feather="thumbs-down"></i> I'm
													Sorry
												</button>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>





					</div>

					<!--///////////Page content wrapper end///////////////-->

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
					<!--//Page Footer End-->

				</main>
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
		goReceive1 = function(seq) {
			$("#hyspSeq").val(seq);
			$("#hysmAcceptedNy").val(1);
			$("#Receive").attr("action", "/mySpace/mySpaceUpdt1");
			$("#Receive").submit();
		}
		
		
		goReceive2 = function(seq) {
			$("#hyspSeq").val(seq);
			$("#hysmAcceptedNy").val(0);
			$("#Receive").attr("action", "/mySpace/mySpaceUpdt2");
			$("#Receive").submit();
		}

		/* 	$(document).on('click','#hysmAcceptedNy', function () {

		 $("#hyspAcceptedNy").attr("action", "/mySpace/mySpaceUpdt");
		 $("#hyspAcceptedNy").submit();
		 }); */

		/* $("#inputHyspAcceptedNy_n").on("click", function(){
			inputHyspAcceptedNy_n();
			$("#hyspAcceptedNy").attr("action", "/mySpace/mySpaceUpdt");
			$("#hyspAcceptedNy").submit();
		});
		$("#inputHyspAcceptedNy_y").on("click", function(){
			inputHyspAcceptedNy_y();
			$("#hyspAcceptedNy").attr("action", "/mySpace/mySpaceUpdt");
			$("#hyspAcceptedNy").submit();
		});
		function inputHyspAcceptedNy_n() {
			document.getElementById('hyspAcceptedNy').value = 0;
		}
		function inputHyspAcceptedNy_y() {
			document.getElementById('hyspAcceptedNy').value = 1;
		} */

		
		logOut = function() {
			$.ajax({
				async : true,
				cache : false,
				type : "post",
				url : "/member/logoutProc",
				success : function(response) {
					if (response.rt == "success") {
						location.href = "/login/userLogin";
					} else {
						alert("로그아웃 실패");
					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : "
							+ jqXHR.errorThrown);
				}
			});
		}
		
		
	</script>
</body>
</html>
