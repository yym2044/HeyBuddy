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

.list-group {
	border-radius: 7px;
	box-shadow: 2px 5px 10px #119C8D;
}
</style>

<body>
	<form id="ReceiveList" name="ReceiveList" method="post" action="/mySpace/mySpaceReceiveList">
		<input type="hidden" id="hyspSeq" name="hyspSeq" value="<c:out value="${item.hyspSeq}"/>">
		<input type="hidden" id="hymmSeq" name="hymmSeq" value="<c:out value="${item.hymmSeq}"/>">
		
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

					<div class="container-fluid px-0">


						<div class="row mySpaceZone">
							<div class="col-3"></div>
							<div class="col-6">
								<div style="text-align: center;">
									<img src="/resources/user/images/check.PNG" alt="..."
										width="400px">

								</div>
						
								<div class="card list-group list-group-flush mb-0">
									<c:forEach items="${list}" var="item" varStatus="status">
										<!--Chat User-->
										<a href="javascript:goReceive(<c:out value="${item.hyspSeq}"/>);"
											class="list-group-item align-items-center list-group-item-action px-3 d-flex py-3">
											<div class="flex-shrink-0">
												<div class="me-3 avatar">
													<c:choose>
														<c:when test="${empty item.uuidFileName}">
															<img src="/resources/user/images/gathering1.png" class="rounded-circle img-fluid" alt="">
														</c:when>
														<c:otherwise>
															<img src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>" class="rounded-circle img-fluid" alt="">
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="overflow-hidden flex-grow-1">
												<div class="d-flex">
													<h6 class="mb-0 text-reset flex-grow-1">
														????????? ???????????????!
														<c:choose>
															<c:when test="${item.hysmAcceptedNy eq 1}">
																<i style="color: green;" data-feather="thumbs-up"
																	class="fe-1x"></i>
															</c:when>
															<c:otherwise>

															</c:otherwise>
														</c:choose>
													</h6>
													<small class=" opacity-75 ms-auto"><c:out
															value="${item.hyspName}" /></small>
												</div>

											</div>
										</a>
									</c:forEach>
									<!--Load more button-->
									<!-- <a href="#!"
										class="list-group-item px-3 align-items-center justify-content-center list-group-item-action d-flex py-3">
										<span>Load more</span>
									</a> -->
								</div>
							</div>
						</div>
					</div>
					<!--///////////Page content wrapper end///////////////-->
				</main>
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
		goReceive = function(seq) {
			$("#hyspSeq").val(seq);
			$("#ReceiveList").attr("action", "/mySpace/mySpaceReceive");
			$("#ReceiveList").submit();
		}

		
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
						alert("???????????? ??????");
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
