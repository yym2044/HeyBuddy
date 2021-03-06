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
	margin-top: 1%;
	margin-bottom: 20%;
	margin-left: 20%;
	margin-right: 20%;
}

.card {
	width: 240px;
	height: 260px;
	box-shadow: 2px 5px 10px #119C8D;
}

.newSpace {
	display: block;
	margin: 0px auto;
}
</style>

<body>
	<form id="mySpaceList" name="mySpaceList" method="post" action="/mySpace/mySpaceList">
		<input type="hidden" id="hyspSeq" name="hyspSeq">
		<input type="hidden" id="hymmSeq" name="hymmSeq">
		<input type="hidden" id="hymmName" name="hymmName">
		<input type="hidden" id="hysmHost" name="hysmHost">

	
	<header class="navbar py-0 page-header navbar-expand navbar-light">

			<ul class="navbar-nav d-flex align-items-center h-100">

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
					href="/mySpace/mySpaceSendList"
					class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
						<i data-feather="user-check" class="fe-1x"></i>
				</a></li>
				<li
					class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a
					href="javascript:goReceive(<c:out value="${item.hymmSeq}"/>);"
					class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
						<i data-feather="mail" class="fe-1x"></i>
				</a></li>

				<li
					class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a
					href="javascript:logOut();" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
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

						<div style="text-align: center;">
							<img src="/resources/user/images/newMySpace.PNG" alt="..."
								width="800px">

						</div>


						<div class="row mySpaceZone">
							<c:forEach items="${list}" var="item" varStatus="status">
								<c:if test="${item.hymmSeq eq sessSeq}">
									<!--col-->
									<div class="col-sm-6 col-xl-4">
										<!--card-->
										<div class="card mb-4">

											<!--Card body-->
											<div class="card-body">
												<!--Contact-->
												<div class="text-center">

													<!-- Avatar -->
													<a class="avatar mb-3 mx-auto xxl rounded-cirlce d-block">
														<c:choose>
															<c:when test="${empty item.uuidFileName}">
																<img class="img-fluid rounded-circle" style="width: 100%; height: 100%" id="previewImage" src="/resources/user/images/gathering1.png" alt="..." class="img-fluid rounded-circle">
															</c:when>
															<c:otherwise>
																<img class="img-fluid rounded-circle" style="width: 100%; height: 100%" id="previewImage" src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>" alt="..." class="img-fluid rounded-circle">
															</c:otherwise>
														</c:choose>
													</a>
													<!-- Title -->
													<h5 class="mb-0">
														<a href="#!" class="text-reset"><c:out
																value="${item.hyspName}" /></a>
													</h5>

													<!-- Email -->
													<br> <br>
													<!-- Split dropdown user button -->
													<div class="btn-group">
														<a href="javascript:goSpace(<c:out value="${item.hyspSeq}"/>);">
															<button type="button" class="btn btn-gray">
																<c:if test="${item.hysmRoleCd eq 12}">
																	<i class="fe-1x me-2" data-feather="award" style="color: #DE9627;"></i>
																</c:if>
																GO
															</button>
														</a>
														</div>
														<c:if test="${item.hysmRoleCd eq 12}">
															<button type="button"
																class="btn btn-gray dropdown-toggle-split rounded"
																data-bs-toggle="dropdown" aria-expanded="false">
																<i class="fe-1x" data-feather="more-vertical"></i>
															</button>
															<ul class="dropdown-menu dropdown-menu-end">
																<li><a class="dropdown-item"
																	href="javascript:goPlusMember(<c:out value="${item.hyspSeq},${item.hysmHost}"/>);"><i
																		class="fe-1x me-2 align-middle"
																		data-feather="user-plus"></i> ?????? ?????? </a></li>
																<li><a class="dropdown-item" href="javascript:goFelete(<c:out value="${item.hyspSeq}"/>);"><i
																		class="fe-1x me-2 align-middle" data-feather="slash"></i>
																		???????????? ?????? </a></li>
															</ul>
														</c:if>
													
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>


							<!--col-->
							<div class="col-sm-6 col-xl-4">
								<!--card-->
								<div class="card mb-4"
									style="background-color: #119C8D; box-shadow: 2px 5px 10px white;">
									<br>

									<!-- Avatar -->
									<a href="javascript:goForm();"> <img
										src="/resources/user/images/newNewSpace.PNG" alt="..."
										class="newSpace">
									</a>


								</div>
								<!--/.row-->
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
			goForm = function() {
				$("#mySpaceList").attr("action", "/mySpace/mySpaceForm");
				$("#mySpaceList").submit();
			}

			
			goSpace = function(seq) {
				$("#hyspSeq").val(seq);
				$("#mySpaceList").attr("action", "/user/memberList");
				$("#mySpaceList").submit();
			}
			
			
			goReceive = function(seq) {
				$("#hymmSeq").val(seq);
				$("#mySpaceList").attr("action", "/mySpace/mySpaceReceiveList");
				$("#mySpaceList").submit();
			}
			
			
			goPlusMember = function(seq0, seq1) {
				$("#hyspSeq").val(seq0);
				$("#hysmHost").val(seq1);
				$("#mySpaceList").attr("action", "/mySpace/mySpaceSend");
				$("#mySpaceList").submit();
			}
			
			
			goFelete = function(seq) {
				$("#hyspSeq").val(seq);
				$("#mySpaceList").attr("action", "/mySpace/mySpaceFelete");
				$("#mySpaceList").submit();
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
	</form>
</body>

</html>
