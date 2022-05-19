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
</style>

<body>


	<!--//page-header//-->
	<header class="navbar py-0 page-header navbar-expand navbar-light">

		<ul class="navbar-nav d-flex align-items-center h-100">
			<li
				class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a
				href="/mySpace/mySpaceList"
				class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
					<i data-feather="arrow-left" class="fe-1x"></i>
			</a></li>

		</ul>

		<ul class="navbar-nav ms-auto d-flex align-items-center h-100">
			<li
				class="nav-item d-flex align-items-center justify-content-center flex-column h-100 me-2">
				<div
					class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
					<a href="#" class="mode_dark text-reset p-0"> <i
						data-feather="sun" class="fe-1x"></i>
					</a> <a href="#" class="mode_light text-reset p-0"> <i
						data-feather="moon" class="fe-1x"></i>
					</a>
				</div>
			</li>
			<li
				class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a
				href="javascript:logOut();"
				class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
					<i data-feather="log-out" class="fe-1x"></i>
			</a></li>

		</ul>
	</header>

	<%@include file="../include/loader.jsp"%>

	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!--///////////Page content wrapper///////////////-->
			<main
				class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid">
				<!--//content//-->
				<div class="content p-1 d-flex flex-column-fluid position-relative">
					<div class="container py-4">
						<div style="text-align: center;">
							<img src="/resources/user/images/makeMySpace.PNG" alt="..."
								width="800px">
						</div>

						<div class="row h-100 align-items-center justify-content-center">
							<div class="col-md-8 col-lg-5 col-xl-4">
								<!--Logo-->
								<div style="text-align: center;">

									<img class="img-fluid rounded-circle" style="width: 200px;"
										id="previewImage" src="/resources/user/images/gathering1.png">
									<%-- <c:forEach items="${Uploaded}" var="Uploaded" varStatus="statusUploaded">
						<c:choose>
							<c:when test="${Uploaded.type eq 0 && Uploaded.size ne 0}"><img src="<c:out value="${Uploaded.path}"/><c:out value="${Uploaded.uuidFileName}"/>" alt="..." class="img-fluid rounded-circle" width="200px"></c:when>
							<c:otherwise><img class="img-fluid rounded-circle" style="width: 200px;" id="previewImage" src="/resources/user/images/gathering1.png"></c:otherwise>
						</c:choose>
					</c:forEach> --%>


								</div>
								<!--Card-->

								<form id="newMySpace2" name="newMySpace2" method="post"
									action="/mySpace/mySpaceForm2"
									class="z-index-1 position-relative needs-validation"
									novalidate="">
									<input type="hidden" id="hyspSeq" name="hyspSeq"
										value="<c:out value="${vo.hyspSeq}"/>"> <input
										type="hidden" id="hymmSeq" name="hymmSeq"
										value="<c:out value="${vo.hymmSeq}"/>">
									<hr class="mt-4">

									<div style="text-align: center;">

										<h2>
											<span>반가워요!</span>
										</h2>
										<h1>
											<i class="fe-1x me-2" data-feather="award"
												style="width: 35px; height: 35px; color: #FFB900;"></i>
											<c:out value="${vo.hymmName}" />
											님
										</h1>
										<h1>
											<c:out value="${vo.hyspName}" />
										</h1>
										<h3>에 오신것을 환영해요 🙌</h3>
									</div>






									<a href="javaScript:goReg();"><button
											class="w-100 btn btn-lg btn-success" type="button">
											GO</button></a>
									<hr class="mt-4">


								</form>

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
				<!--/.Page Footer End-->
			</main>
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
		goReg = function() {
			$("#newMySpace2").attr("action", "/mySpace/mySpaceInstMember");
			$("#newMySpace2").submit();
		}
	</script>
	<script type="text/javascript">
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
