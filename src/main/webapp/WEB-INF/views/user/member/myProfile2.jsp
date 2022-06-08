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

<!--Page style-->
<link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<link rel="stylesheet" href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css">
</head>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<style>
.content {
	justify-content: center; /* 수평 정렬 */
	align-items: center; /* 수직 정렬 */ 
}

.card {
	width: 350px;
	height: 600px;
}

#profilePhoto {
	width: 200px;
	height: 200px;
}

#table tr {
	height: 45px;
}
#grayArea {
	background-color: #c5c9c6;
}
</style>
<body>

	<form id="myProfileForm" method="post" enctype="multipart/form-data">

		<input type="hidden" name="hymmSeq" id="hymmSeq" value="${sessSeq}">

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
					<!-- 	<div class="toolbar pt-4 px-4 px-lg-8 pb-0">
						<div class="position-relative container-fluid px-0">
							<div class="row align-items-center position-relative">
								<div class="col-md-8 mb-3 mb-lg-0">
									<h3 class="mb-1">내 계정</h3>
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb mb-0">
											<li class="breadcrumb-item"><a href="#!">Home</a></li>
											<li class="breadcrumb-item active">Account</li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div> -->
					<!--//Page Toolbar End//-->

					<!--//Page content//-->
					<div class="content pt-4 px-4 px-lg-8 pb-0 d-flex flex-column-fluid">
						



							

							<div class="row mySpaceZone" style="justify-content: center;">

								
									<div style="text-align: center;">
								<img src="/resources/user/images/profile.png" alt="..."
									width="400px" style="padding-bottom: 20px;">

							</div>



								<!-- ////////////////////////////////////////////////////////////// -->


								<!--card-->
								<div class="card px-0">

									<!--Card body-->
									<div class="card-body px-0">
										<!--Contact-->
										<div class="text-center pt-5">
											<div id="grayArea" class="py-2">
												<!-- Avatar -->
												<c:choose>
													<c:when test="${empty uuidFileName}">
														<img id="profilePhoto"
															src="/resources/user/images/profileDefault.png"
															class="img-fluid rounded-circle">
													</c:when>
													<c:otherwise>
														<img id="profilePhoto"
															src="<c:out value="${path}"/><c:out value="${uuidFileName}"/>"
															class="img-fluid rounded-circle">
													</c:otherwise>
												</c:choose>
												<!-- Title -->
												<h5 class="mt-3">
													<a class="text-reset"> <c:out value="${rt.hymmName}" />
													</a>
												</h5>
												<!-- Email -->
												<p class="small mb-1">
													<a class="d-block text-reset text-truncate"> <c:out
															value="${rt.hymmId}" />
													</a>
												</p>
											</div>
											<div class="px-6">

												<table id="table" class="w-100 text-start mt-4">
													<tr>
														<td class="text-muted">휴대전화</td>
														<td><c:choose>
																<c:when test="${fn:length(rt.hymmNumber) eq 10 }">
																	<c:out value="${fn:substring(rt.hymmNumber,0,3)}" />-<c:out
																		value="${fn:substring(rt.hymmNumber,3,6)}" />-<c:out
																		value="${fn:substring(rt.hymmNumber,6,10)}" />
																</c:when>
																<c:otherwise>
																	<c:out value="${fn:substring(rt.hymmNumber,0,3)}" />-<c:out
																		value="${fn:substring(rt.hymmNumber,3,7)}" />-<c:out
																		value="${fn:substring(rt.hymmNumber,7,11)}" />
																</c:otherwise>
															</c:choose></td>
													</tr>
													<tr>
														<td class="text-muted">이메일</td>
														<td><c:out value="${rt.hymmEmail}" /></td>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>

</div>

								<!-- ////////////////////////////////////////////////////////////// -->
							</div>

						</div>
					</div>
					<!--//Page content End//-->

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

		<!--On Profile Save notification-->
		<div id="profile_notification_saved" role="alert" data-bs-autohide="true" data-bs-delay="3000" aria-live="assertive" aria-atomic="true" class="position-fixed start-50 top-0 translate-middle-x mt-4 z-index-fixed p-3 mb-4 overflow-hidden rounded-3 border-0 bg-success text-white shadow-lg toast hide">
			<div class="d-flex align-items-center">
				<div class="size-60 me-4 text-success rounded-circle shadow bg-tint-success d-flex align-items-center justify-content-center">
					<i data-feather="check-circle" class="fe-3x"></i>
				</div>
				<div class="flex-grow-1">
					<h5 class="text-reset mb-0">Information saved</h5>
					<p class="mb-0 opacity-75">Your account has been updated!</p>
				</div>
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



	<!--Toast notification-->
	<script>
		var toastTrigger = document.getElementById('profile_save')
		var toastLiveExample = document
				.getElementById('profile_notification_saved')
		if (toastTrigger) {
			toastTrigger.addEventListener('click', function() {
				var toast = new bootstrap.Toast(toastLiveExample)

				toast.show()
			})
		}
	</script>
	<!--Page script begin-->
	<script src="/resources/assets/vendor/inputmask.min.js"></script>
	<script>
		Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
	</script>

	<!--Birthday Calendar-->
	<script src="/resources/assets/vendor/moment.min.js"></script>
	<script src="/resources/assets/vendor/daterangepicker.js"></script>
	<script>
		$(function() {
			$('input[name="birthday"]').daterangepicker({
				singleDatePicker : true,
				showDropdowns : true,
				minYear : 1901,
				maxYear : parseInt(moment().format('YYYY'), 10)
			});
		});
	</script>

	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script>
		$(document).ready(function() {
			$("#hymmDob").datepicker();
		});

		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
	</script>


	<script src="/resources/common/js/commonXdmin.js"></script>
	<script src="/resources/common/js/constantsXdmin.js"></script>
	<script src="/resources/common/js/common.js"></script>

	<script type="text/javascript">
		$("#btnSubmit").on("click", function() {
			$("#myProfileForm").attr("action", "/user/myProfileUpdt").submit();
		});
	</script>

	<%@include file="../include/pageScripts.jsp"%> 
</body>

</html>

