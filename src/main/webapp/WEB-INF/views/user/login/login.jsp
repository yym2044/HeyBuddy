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
<!-- Cursor css -->
<link href="/resources/assets/css/cursorOnly.css" rel="stylesheet">

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
	color:white;
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
								<img src="/resources/user/images/newHeyBuddy.PNG" alt="..."
									width="700px">
							</div>
							<div class="col-md-10 col-lg-7 col-xl-6" data-aos="fade-up"
								data-aos-duration="1200">
								<!--Logo-->

								<!--Card-->
								<div class="card card-body p-4"
									style="border: none; background: transparent;">

									<form action="/login/userLogin" class=" z-index-1 position-relative needs-validation"
										novalidate="">
										<div class="form-floating mb-3">
											<input type="text" onkeyup="enterkey();" class="form-control" required=""
												id="hymmId" name="hymmId" value="userTest"> <label
												for="hymmId">Account</label> <span
												class="invalid-feedback">Please enter a valid email
												address</span>
										</div>
										<div class="form-floating mb-3">
											<input type="password" onkeyup="enterkey();" required="" class="form-control"
												id="hymmPassword" name="hymmPassword" value="userTest"> <label
												for="hymmPassword">Password</label> <span
												class="invalid-feedback">Enter the password</span>
										</div>
										<div 
											class="d-flex align-items-center justify-content-between mb-3">
											<div class="form-check">
	 											<input class="form-check-input me-1" id="terms"
													type="checkbox" value=""> <label
													class="form-check-label text-mono fontB text-light" for="terms">Remember
													Me</label>
											</div>
											<div>
												<a href="page-auth-recover-pass.html"
													class="small text-light text-mono fontB">Forget Password?</a>
											</div>
										</div>
										<button class="w-100 btn btn-lg text-mono" id="btnLogin" name="btnLogin" type="button">Sign
											In</button>
										<hr class="mt-4 mb-3">
										<p class="text-center text-light fontB text-mono">
											Don’t have an account yet? <a href="/user/memberForm"
												class="ms-2 text-mono"><button type="button" class="btn">Sign Up</button></a>

										</p>
										<div class="d-flex align-items-center pb-3">
											<span class="flex-grow-1 border-bottom pt-1"></span> <span
												class="d-inline-flex align-items-center justify-content-center lh-1 size-30 rounded-circle text-light">or</span>
											<span class="flex-grow-1 border-bottom pt-1"></span>
										</div>


										<a href="javascript:kakaoLogin();"><img
											src="/resources/user/images/kakaologin.png" alt="..."
											width="100%"></a>
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
						<span class="d-block lh-sm small text-muted text-end">&copy;
							<script>
                              document.write(new Date().getFullYear())
                            </script>. Hey, Buddy All rights reserved.
						</span>
					</div>
				</footer>
				<!--/.Page Footer End-->
	</div>
	
	<form id="formKakao" method="post">
		<input id="hymmEmailKakao" name="hymmEmailKakao" type="hidden">
		<input id="uuidFileName" name="uuidFileName" type="hidden">
	</form>

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>

	<!--////////////Theme Core scripts End/////////////////-->
	

	<!-- *********************ajax******************************** -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- *********************카카오톡로그인******************************** -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

	<script>
//window.Kakao.init('34a7cb875c4bfe22aa44952d415d481f');	// 자바스크립트 키 입력
window.Kakao.init('e4fc7b792c48957b6ef06c9de0552373');	// 자바스크립트 키 입력
console.log(Kakao.isInitialized()); 
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname, account_email, profile_image', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account; 
                    console.log("kakao_account : ",kakao_account);
                    const emailKakao = kakao_account.email;
                    const photoKakao = kakao_account.profile.profile_image_url;
                    
                    console.log(emailKakao);
                    
                    //기존회원인지 아닌지 확인하는 ajax
                    
                    $.ajax({
                    	async: true
                    	, cache: false
                    	, type: "post"
                    	, url: "/member/loginProcKakao"
                    	, data: {hymmEmailKakao : emailKakao}
                    	, success : function(response) {
                    		console.log("ajax");
                    		console.log(response);
                    		
                    		if(response.rt == "success") {
                    			location.href = "/mySpace/mySpaceList";
                    		} else if (response.rt == "fail") {
                    			alert("회원가입 페이지로 이동합니다.");
                    			
                    			$("#hymmEmailKakao").val(emailKakao);
                    			$("#uuidFileName").val(photoKakao);
                    			$("#formKakao").attr("action", "/user/memberForm").submit();
                    			
                    		}
                    		
                    	}
                    	, error : function(jqXHR, textStatus, errorThrown){
                    		alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                    	}
                    })
                   
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            console.log(error);
        }
    });
}
</script>
	<!-- *********************카카오톡로그인******************************** -->

	<!-- *********************로그인S******************************** -->
	<script>
		$("#btnLogin").on(
				"click",
				function() {
					/* 	if(validation()==false) return false;
					if(!checkNull($("hymmId"), $.trim($("#hymmId").val()), "아이디를 확인해 주세요!")) return false;
					if(!checkNull($("hymmPassword"), $.trim($("#hymmPassword").val()), "비밀번호를 확인해 주세요!")) return false; */
					$.ajax({
						async : true,
						cache : false,
						type : "post",
						url : "/member/loginProc",
						data : {
							"hymmId" : $("#hymmId").val(),
							"hymmPassword" : $("#hymmPassword").val()
						},
						success : function(response) {
							if (response.rt == "success") {
								location.href = "/mySpace/mySpaceList";
							} else {
								alert("아이디 및 비밀번호를 확인해주세요");
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("ajaxUpdate " + jqXHR.textStatus + " : "
									+ jqXHR.errorThrown);
						}
					});
				});
		
		
		//엔터키 쳤을 때 로그인 하는 방법 (input id칸이랑 pwd칸에 [onkeyup="enterkey();"] 추가)
		function enterkey() {
	        if (window.event.keyCode == 13) {
	 				
	        	$.ajax({
					async : true,
					cache : false,
					type : "post",
					url : "/member/loginProc",
					data : {
						"hymmId" : $("#hymmId").val(),
						"hymmPassword" : $("#hymmPassword").val()
					},
					success : function(response) {
						if (response.rt == "success") {
							location.href = "/mySpace/mySpaceList";
						} else {
							alert("아이디 및 비밀번호를 확인해주세요");
						}
					},
					error : function(jqXHR, textStatus, errorThrown) {
						alert("ajaxUpdate " + jqXHR.textStatus + " : "
								+ jqXHR.errorThrown);
					}
				});
	        	
	             
	        	}
			}

</script>
	<!-- *********************로그인E******************************** -->
</body>

</html>
