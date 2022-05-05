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

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">

<style type="text/css">
#setTable tr td {
	height: 70px;
}

#setTable tr {
	vertical-align: middle;
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
									<div
										class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">

										<!-- card title -->
										<h3 class="card-title mb-md-0">프로필정보</h3>

									</div>
									<h6 class="ps-4 mb-3">멤버의 프로필 정보로 사용할 항목을 설정합니다.</h6>
									<div class="table-responsive">
										<table id="setTable"
											class="table table-sm table-nowrap table-card">

											<tr>
												<td colspan="4"><input class="form-check-input" type="checkbox"
													value="" id="checkName" checked=""> <label
													class="form-check-label" for="checkName"> 이름 </label></td>
											</tr>
											<tr>
												<td><input class="form-check-input" type="checkbox"
													value="" id="checkProfilePhoto" checked=""> <label
													class="form-check-label" for="checkProfilePhoto">
														프로필 사진 </label></td>
												<td><input class="form-check-input" type="checkbox"
													value="" id="checkJo" checked=""> <label
													class="form-check-label" for="checkJo"> 조직 </label></td>
												<td><input class="form-check-input" type="checkbox"
													value="" id="checkJc" checked=""> <label
													class="form-check-label" for="checkJc"> 직책 </label></td>
												<td><input class="form-check-input" type="checkbox"
													value="" id="checkJc2" checked=""> <label
													class="form-check-label" for="checkJc2"> 직위 </label></td>
											</tr>
											<tr>
												<td><input class="form-check-input" type="checkbox"
													value="" id="checkPhone" checked=""> <label
													class="form-check-label" for="checkPhone"> 휴대폰 </label></td>
												<td><input class="form-check-input" type="checkbox"
													value="" id="checkHome" checked=""> <label
													class="form-check-label" for="checkHome"> 유선전화 </label></td>
												<td colspan="2"><input class="form-check-input"
													type="checkbox" value="" id="checkEmail" checked="">
													<label class="form-check-label" for="checkEmail">
														이메일 </label></td>
											</tr>

										</table>
										<div class="text-center pb-3">
											<button class="btn btn-lg btn-secondary me-1">원래대로</button>
											<button class="btn btn-lg btn-info">적용</button>
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

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>

	<!--////////////Theme Core scripts End/////////////////-->


	<!--Page script begin-->
	<script src="/resources/assets/vendor/inputmask.min.js"></script>
	<script>
            Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
        </script>
</body>

</html>
