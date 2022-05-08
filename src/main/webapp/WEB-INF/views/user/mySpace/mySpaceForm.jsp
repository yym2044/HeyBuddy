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
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

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
		<li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a href="/mySpace/mySpaceList" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
				<i data-feather="arrow-left" class="fe-1x"></i>
			</a></li>
		
	</ul>
	
	<ul class="navbar-nav ms-auto d-flex align-items-center h-100">
		<li class="nav-item d-flex align-items-center justify-content-center flex-column h-100 me-2">
			<div class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
				<a href="#" class="mode_dark text-reset p-0">
					<i data-feather="sun" class="fe-1x"></i>
				</a>
				<a href="#" class="mode_light text-reset p-0">
					<i data-feather="moon" class="fe-1x"></i>
				</a>
			</div>
		</li>
					<li
				class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a
				href="/login/login"
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
			<main class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid">
				<!--//content//-->
				<div class="content p-1 d-flex flex-column-fluid position-relative">
					<div class="container py-4">
						<div style="text-align: center;">
								<img src="/resources/user/images/makeMySpace.PNG" alt="..." width="800px">
							</div>
							
						<div class="row h-100 align-items-center justify-content-center">
							<div class="col-md-8 col-lg-5 col-xl-4">
							<!--Logo-->
								<div style="text-align: center;">
									<img src="/resources/user/images/gathering1.png" alt="..."
										class="img-fluid rounded-circle" width="200px">
								</div>
								<!--Card-->
								
									<form action="index.html"
										class="z-index-1 position-relative needs-validation"
										novalidate="">

										<hr class="mt-4">
										<select class="form-select form-select-lg mb-3"
											aria-label=".form-select-lg example">
											<option selected>어떤 용도의 스페이스인가요?</option>
											<option value="">맥주</option>
											<option value="">칵테일</option>
											<option value="">소주</option>
											<option value="">위스키</option>
											<option value="">와인</option>
										</select>
										<div class="form-floating mb-3">
											<input type="text" class="form-control" required=""
												id="floatingInputSpaceName" placeholder=""> <label
												for="floatingInputSpaceName">우리만의 스페이스 이름을 입력해주세요!</label> <span
												class="invalid-feedback"></span>
										</div>

										<button class="w-100 btn btn-lg btn-success" type="submit" onclick="location.href = '/mySpace/mySpaceList'">
											GO</button>
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

</body>

</html>
