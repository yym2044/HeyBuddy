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
	margin-left:5px; 
}

body {
	background-image: url('/resources/user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

main {
	margin-top: 5%;
}
</style>

<body>
<!--//page-header//-->
<header class="navbar py-0 page-header navbar-expand navbar-light">

	<ul class="navbar-nav d-flex align-items-center h-100">
		<li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a href="/login/login" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
				<i data-feather="home" class="fe-1x"></i>
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
		
	</ul>
</header>


	<!--////////////////// PreLoader Start//////////////////////-->
	<div class="loader">
		<!--Placeholder animated layout for preloader-->
		<div class="d-flex flex-column flex-root">
			<div class="page d-flex flex-row flex-column-fluid">
				<div
					class="page-content ps-0 ms-0 d-flex flex-column flex-row-fluid">
					<div
						class="content flex-column p-4 pb-0 d-flex justify-content-center align-items-center flex-column-fluid position-relative">
						<div
							class="w-100 h-100 position-relative d-flex align-items-center justify-content-center">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-loader anim-spinner me-2">
								<line x1="12" y1="2" x2="12" y2="6" />
								<line x1="12" y1="18" x2="12" y2="22" />
								<line x1="4.93" y1="4.93" x2="7.76" y2="7.76" />
								<line x1="16.24" y1="16.24" x2="19.07" y2="19.07" />
								<line x1="2" y1="12" x2="6" y2="12" />
								<line x1="18" y1="12" x2="22" y2="12" />
								<line x1="4.93" y1="19.07" x2="7.76" y2="16.24" />
								<line x1="16.24" y1="7.76" x2="19.07" y2="4.93" /></svg>
							<div>
								<span>Loading...</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--////////////////// /.PreLoader END//////////////////////-->

	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!--///////////Page content wrapper///////////////-->
			<main
				class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid">

				<!--//content//-->
				<div class="content p-1 d-flex flex-column-fluid position-relative">
					<div class="container py-4">
						<div class="row align-items-center justify-content-center">
							<br>
							<br>
							<br>
							<br>
							<div style="text-align: center;">
								<img src="/resources/user/images/newHeyBuddyWH.PNG" alt="..."
									width="700px">
							</div>
							<div class="col-md-8 col-lg-5 col-xl-4">

								<br>
								<br>
								<!--Logo-->



								<!--Card-->

									<form action="index.html"
										class=" z-index-1 position-relative needs-validation"
										novalidate="">
										<hr class="mt-4 mb-3">
										<div class="form-floating mb-3">
											<input type="email" class="form-control" required=""
												id="floatingInput" placeholder="name@example.com"> <label
												for="floatingInput">사원번호</label> <span
												class="invalid-feedback">Please enter a valid account</span>
										</div>
										<div class="form-floating mb-3">
											<input type="password" required="" class="form-control"
												id="floatingPassword" placeholder="Password"> <label
												for="floatingPassword">비밀번호</label> <span
												class="invalid-feedback">Enter the password</span>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-3">

										</div>
										<button class="w-100 btn btn-lg btn-success" type="submit" onclick="location.href = '/xdmin/memberList'">로그인</button>
										<hr class="mt-4 mb-3">



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
 