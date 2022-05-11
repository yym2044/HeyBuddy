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

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--Page style = Date range picker-->
<link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<style type="text/css">
#setTable tr td {
	height: 40px;
}

#setTable tr {
	vertical-align: middle;
}

table tr .tableText {
	width: 25%;
	text-align: center;
}

table tr .form-control {
	background-color: ghostwhite;
}
</style>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
</head>
<body>
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
				<div class="toolbar pt-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-3 mb-lg-0">
								<h3 class="mb-2 fw-bold">환경설정</h3>
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0">
										<li class="breadcrumb-item"><a href="#!">Home</a></li>
										<li class="breadcrumb-item active">환경설정</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!--//Page Toolbar End//-->


				<!--//Page content//-->
				<div class="content pt-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">

						<div class="row">

							<%@include file="../include/settingMenu.jsp"%>

							<div class="col-lg-9 h-100" data-aos="fade-up" data-aos-duration="1200">
								<!--card-->
								<div class="card mb-4 p-3">
									<div class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">

										<!-- card title -->
										<h3 class="card-title mb-md-0">멤버 등록</h3>

									</div>


									<div class="table-responsive">
										<div class="text-center">
											<label for="profilePhoto" style="cursor: pointer;"> <img src="/resources/user/images/profileUpload.png" style="width: 70px;">

											</label>
											<input id="profilePhoto" type="file" style="display: none;">
											<p class="p-2 fw-bold">프로필 사진</p>
										</div>

										<table id="setTable" class="table table-sm table-nowrap table-card text-center">
											<tr>
												<td>이메일<span class="text-danger ps-2">*</span></td>
												<td>
													<input type="text" class="form-control" placeholder="해당 메일로 초대메일을 발송합니다.">
												</td>
											</tr>
											<tr>
												<td class="tableText">아이디<span class="text-danger ps-2">*</span></td>
												<td>
													<input type="text" class="form-control" placeholder="로그인 시 사용할 아이디">
												</td>
											</tr>
											<tr>
												<td>이름<span class="text-danger ps-2">*</span></td>
												<td>
													<input type="text" class="form-control" placeholder="이름(50자 이하)">
												</td>
											</tr>
											<tr>
												<td>휴대전화</td>
												<td>
													<input type="text" class="form-control" placeholder="전화번호">
												</td>
											</tr>
											<tr>
												<td>유선전화</td>
												<td>
													<input type="text" class="form-control" placeholder="전화번호">
												</td>
											</tr>
											<tr>
												<td>생일</td>
												<td>
													<!-- <input type="text" class="form-control"> -->
													<div class="position-relative flex-grow-1">
														<!--Icon-->
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar fe-1x position-absolute start-0 top-50 translate-middle-y ms-2">
													<rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
													<line x1="16" y1="2" x2="16" y2="6"></line>
															<line x1="8" y1="2" x2="8" y2="6"></line>
															<line x1="3" y1="10" x2="21" y2="10"></line>
													</svg>
														<input id="hybdMmDob" type="text" class="form-control ps-6">
													</div>

												</td>
											</tr>
											<tr>
												<td>상태메세지</td>
												<td>
													<input type="text" class="form-control" placeholder="상태메세지(50자 이하)">
												</td>
											</tr>
										</table>
										<div class="text-center pb-4">
											<a class="btn btn-secondary" href="memberList">취소</a>
											<a class="btn btn-info" href="memberView">등록</a>
										</div>
									</div>
								</div>
							</div>
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

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->


	<!--Page script begin-->
	<script src="/resources/assets/vendor/inputmask.min.js"></script>
	<script src="/resources/assets/vendor/daterangepicker.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<script>
		Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
	</script>

	<script>
		$(function() {
			$('#hybdMmDob').daterangepicker({
				singleDatePicker : true,
				showDropdowns : true,
				minYear : 1901,
				maxYear : parseInt(moment().format('YYYY'), 10)
			});
		});
	</script>
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[5].className += ' current';
	</script>

</body>

</html>

