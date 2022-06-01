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
<link rel="stylesheet"
	href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/assets/vendor/css/choices.min.css">

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
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">

</head>

<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">


<script type="text/javascript">
	const colorCd = "<c:out value='${hyspColorCd}'/>";

	if (colorCd == null || colorCd == "") {
		localStorage.removeItem('backUrl');
	} else if (colorCd == 14) {
		localStorage.setItem("backUrl", 1);
	} else if (colorCd == 15) {
		localStorage.setItem("backUrl", 2);
	} else if (colorCd == 16) {
		localStorage.setItem("backUrl", 3);
	} else if (colorCd == 17) {
		localStorage.setItem("backUrl", 4);
	}
</script>

<body>
	<form id="memberList" name="memberList" method="post">
		<input type="hidden" id="hyspSeq" name="hyspSeq" value="<c:out value="${item.hyspSeq}"/>">
		<input type="hidden" id="hymmSeq" name="hymmSeq">
		<input type="hidden" id="hymmName" name="hymmName" value="<c:out value="${item.hymmName}"/>">

		<%@include file="../include/loader.jsp"%>

		<!--App Start-->
		<div class="d-flex flex-column flex-root">
			<!--Page-->
			<div class="page d-flex flex-row flex-column-fluid">

				<%@include file="../include/pageSideBar.jsp"%>

				<!--///////////Page content wrapper///////////////-->
				<main class="page-content d-flex flex-column flex-row-fluid">

					<%@include file="../include/pageHeader.jsp"%>

					<!--//Page content//-->
					<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">


						<div class="col-md-12 mx-auto">


							<!--Search result nav-->

							<!--Search results list-->
							<div class="list-group mb-4">
								<div class="list-group-item p-4">
									<h5 class="text-muted">
										About <span style="color: #119C8D;"><c:out
												value="${vo.totalRows}" /></span> results for member
									</h5>
								</div>

								<c:forEach items="${list}" var="item" varStatus="status">
									<!--Search result item-->
									<a href="javascript:goChat(<c:out value="${item.hymmSeq}"/>);"
										class="list-group-item p-4 list-group-item-action">
										<div class="d-flex align-items-center">

											<c:choose>
												<c:when test="${empty item.uuidFileName}">
													<img style="width: 80px; height: 80px;"
														src="/resources/user/images/profileDefault.png"
														class="flex-shrink-0 rounded-3 width-80" alt="">
												</c:when>
												<c:otherwise>
													<img style="width: 80px; height: 80px;"
														src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>"
														class="flex-shrink-0 rounded-3 width-80" alt="">
												</c:otherwise>
											</c:choose>
											<!-- <img src="/resources/assets/media/avatars/01.jpg" class="flex-shrink-0 rounded-3 width-80" alt=""> -->

											<div class="ps-3 flex-grow-1 overflow-hidden">
												<span class="fw-semibold d-block mb-1 text-truncate"></span>

												<h5 class="mb-1 text-truncate">
													<c:out value="${item.hymmName}" />
													<c:choose>
														<c:when test="${item.hymmSeq eq sessSeq}">
															<span class="badge rounded-pill bg-primary">ME</span>
														</c:when>
														<c:otherwise>

														</c:otherwise>
													</c:choose>
												</h5>

											</div>
										</div>
									</a>
								</c:forEach>


							</div>

							<!-- 						Pagination
								<nav aria-label="Page navigation example" class="d-flex justify-content-end">
									<ul class="pagination">
										<li class="page-item disabled"><a class="page-link" href="#!">Previous</a></li>
										<li class="page-item active"><a class="page-link active" href="#!">1</a></li>
										<li class="page-item"><a class="page-link" href="#!">2</a></li>
										<li class="page-item"><a class="page-link" href="#!">3</a></li>
										<li class="page-item"><a class="page-link" href="#!">Next</a></li>
									</ul>
								</nav> -->
						</div>


					</div>
					<!--//Page content End//-->

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

	<!-- 사이드바 Hover 유지시켜주는 작업-->
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');
		console.log(sidebarLink);

		console.log(sidebarLink[0]);

		sidebarLink[0].className += ' current';
	</script>
	<script type="text/javascript">
		goChat = function(seq) {
				$("#hymmSeq").val(seq);
				$("#memberList").attr("action", "/chat/chatInst");
				$("#memberList").submit();
			}

	</script>
</body>


</html>
