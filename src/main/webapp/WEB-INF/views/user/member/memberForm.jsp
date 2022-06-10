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
<!-- Cursor css -->
<link href="assets/css/cursorOnly.css" rel="stylesheet">
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

.card {
	box-shadow: 2px 5px 10px #119C8D;
}
</style>
<body>
	<form id="memberSignUp" name="memberSignUp" method="post" class="z-index-1 position-relative needs-validation" novalidate="">
	
	<input id="hymmEmailKakao" name="hymmEmailKakao" type="hidden" value="${dto.hymmEmailKakao}">
	<input id="uuidFileName" name="uuidFileName" type="hidden" value="${dto.uuidFileName}">
	
<!--//page-header//-->
<header class="navbar py-0 page-header navbar-expand navbar-light">

	<ul class="navbar-nav d-flex align-items-center h-100">
		<li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center"><a href="/login/userLogin" class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
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
						<div class="row h-100 align-items-center justify-content-center">
							<div style="text-align: center;">
								<img src="/resources/user/images/SignUp.PNG" alt="..."
									width="600px">
							</div>
							<br> <br>
							<div class="col-md-8 col-lg-5 col-xl-4">
								<!--Logo-->

								<!--Card-->
								<div class="card card-body p-4" data-aos="fade-up"
									data-aos-duration="1200">										
										
										<div class="form-floating mb-3">
											<input type="text" class="form-control" required=""
												id="hymmName" name="hymmName" placeholder="name@example.com">
											<label for="hymmName"> Name </label> <span
												class="invalid-feedback">Please enter your name</span>
										</div>
										<div class="form-floating mb-3">
											<input type="text" class="form-control" required=""
												id="hymmId" name="hymmId" placeholder="name@example.com">
											<label for="hymmId"> ID </label> <span
												class="invalid-feedback">Please enter your ID</span>
										</div>
										<div class="form-floating mb-3">
											<input type="email" class="form-control" required=""
												id="hymmEmail" name="hymmEmail" placeholder="name@example.com">
											<label for="hymmEmail"> Email </label> <span
												class="invalid-feedback">Please enter a valid full email
												address</span>
										</div>
										<div class="form-floating mb-3">
											<input type="password" required="" class="form-control"
												id="hymmPassword" name="hymmPassword" placeholder="Password"> <label
												for="hymmPassword">Password</label> <span
												class="invalid-feedback">Enter the password</span>
										</div>
										<div class="form-floating mb-3">
											<input type="password" required="" class="form-control"
												id="Password" name="Password" placeholder="Password"> <label
												for="Password">Confirm Password</label> <span
												class="invalid-feedback">Enter the same password as
												above</span>
										</div>
										<div
											class="d-flex align-items-strech justify-content-between mb-3">
											<div class="form-check">
												<input class="form-check-input me-1" required id="terms"
													type="checkbox" value=""> <label
													class="form-check-label" for="terms">Agree to our <a
													href="#!.html">Terms & conditions</a></label> <span
													class="invalid-feedback">You must be agree to terms
													& conditions</span> 
											</div> 
										</div>
										<a href="javascript:goInst();"><button class="w-100 btn btn-lg btn-success" type="button">Sign
											Up</button></a>
										<!-- 	
										<div class="d-flex align-items-center pb-3">
											<span class="flex-grow-1 border-bottom pt-1"></span> <span
												class="d-inline-flex align-items-center justify-content-center lh-1 size-30 rounded-circle text-mono">or</span>
											<span class="flex-grow-1 border-bottom pt-1"></span>
										</div>
										 -->
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
				<!--/.Page Footer End-->
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
		goInst = function() {
			$("#memberSignUp").attr("action", "/user/memberSignUp");
			$("#memberSignUp").submit();
		}
	</script>

	<!-- 사이드바 Hover 유지시켜주는 작업-->
      <script type="text/javascript">
    	const sidebarLink = document.querySelectorAll('.Sidebar-link');
    	console.log(sidebarLink);
    	
    	console.log(sidebarLink[0]);
    	
    	sidebarLink[0].className += ' current';
    </script>
</body>

</html>
