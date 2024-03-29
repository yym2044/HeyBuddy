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

<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />
<title id="ctl00_headerTitle">hey, Buddy!</title>

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<!-- Cursor css -->
<link href="/resources/assets/css/cursorOnly.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

</head>
<style>
body {
	background-image: url('/resources/user/images/TeamheyBuddy.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	margin-top: 5%;
	margin-left: 20%;
	margin-right: 20%;
}

.fontB {
	font-weight: bold;
}

.btn {
	background-color: #1E293B;
	color: white;
}
</style>
<body>

	<!--Theme mode switcher-->
	<div class="position-absolute end-0 top-0 size-40 z-index-fixed">
		<div class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
			<a href="#" class="mode_dark text-reset p-0">
				<i data-feather="sun" class="fe-1x"></i>
			</a>
			<a href="#" class="mode_light text-reset p-0">
				<i data-feather="moon" class="fe-1x"></i>
			</a>
		</div>
	</div>


	<%@include file="../include/loader.jsp"%>

	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid ">

				<!--//content//-->
				<div class="content p-1 d-flex flex-column-fluid position-relative">
					<div class="container py-4">
						<div class="row align-items-center justify-content-center">
							<div style="text-align: center;">
								<img src="/resources/user/images/newHeyBuddy.PNG" alt="..." width="700px">
							</div>
							<div class="col-md-10 col-lg-7 col-xl-6" data-aos="fade-up" data-aos-duration="1200">
								<!--Logo-->

								<!--Card-->
								<div class="card card-body p-4" style="border: none; background: transparent;">

									<h4 class="text-center text-white">헤이버디에 오신 것을 환영합니다!</h4>
									<h4 class="text-center text-white">비밀번호를 설정하면 가입이 완료됩니다.</h4>

									<form class=" z-index-1 position-relative needs-validation" novalidate="">
									
										<input type="hidden" id="hymmEmail" name="hymmEmail" value="${vo.hymmEmail}">
										
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="hymmPassword" name="hymmPassword" value="">
											<label for="hymmPassword">비밀번호</label>
											<span class="invalid-feedback">Please enter a valid password</span>
										</div>
										<div class="form-floating mb-3">
											<input type="password" required="" class="form-control" id="hymmPasswordConfirm" value="">
											<label for="hymmPasswordConfirm">비밀번호 확인</label>
											<span class="invalid-feedback">Please enter a valid password</span>
										</div>
										<button class="w-100 btn btn-lg text-mono" id="btnSetPwd" name="btnSetPwd" type="button">비밀번호 설정</button>
										<!-- 
										<div class="d-flex align-items-center justify-content-between mb-3">
											<div class="form-check">
												<input class="form-check-input me-1" id="terms" type="checkbox" value="">
												<label class="form-check-label text-mono fontB text-light" for="terms">Remember Me</label>
											</div>
											<div>
												<a href="page-auth-recover-pass.html" class="small text-light text-mono fontB">Forget Password?</a>
											</div>
										</div>
										<hr class="mt-4 mb-3">
										<p class="text-center text-light fontB text-mono">
											Don’t have an account yet?
											<a href="/user/memberForm" class="ms-2 text-mono">
												<button type="button" class="btn">Sign Up</button>
											</a>

										</p>
										 -->
										<!--  
										<div class="d-flex align-items-center pb-3">
											<span class="flex-grow-1 border-bottom pt-1"></span>
											<span class="d-inline-flex align-items-center justify-content-center lh-1 size-30 rounded-circle text-light">or</span>
											<span class="flex-grow-1 border-bottom pt-1"></span>
										</div>
										 -->
									</form>
								</div>
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
	</div>

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->


	<!-- *********************ajax******************************** -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$("#hymmEmail").val("<c:out value='${vo.hymmEmail}'/>.com");
	});
	</script>

	<script>
		$("#btnSetPwd").on("click", function() {
					$.ajax({
						async : true,
						cache : false,
						type : "post",
						url : "/member/updatePwd",
						data : {
							"hymmEmail" : $("#hymmEmail").val(),
							"hymmPassword" : $("#hymmPassword").val()
						},
						success : function(response) {
							if (response.rt == "success") {
								alert("비밀번호 설정이 완료되었습니다.");
								location.href = "/login/userLogin";
							} else {
								alert("에러");
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("ajaxUpdate " + jqXHR.textStatus + " : "
									+ jqXHR.errorThrown);
						}
					});
				});
	</script>

</body>

</html>
