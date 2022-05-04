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
<link href="assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<!-- Cursor css -->
<link href="assets/css/cursorOnly.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.min.css"
	id="switchThemeStyle">

</head>
<style>
body {
	background-image: url('../../../../../user/images/teamwork.webp');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	margin-top: 2%;
	margin-bottom: 20%;
	margin-left: 20%;
	margin-right: 20%;
}

.fontB {
	font-weight: bold;
}
</style>
<body>
	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>
	<!--Theme mode switcher-->
	<div class="position-absolute end-0 top-0 size-40 z-index-fixed">
		<div class="switch_modes">
			<a href="#" class="mode_dark"> <i data-feather="moon"></i>
			</a> <a href="#" class="mode_light active"> <i data-feather="sun"></i>
			</a>
		</div>
	</div>


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
				class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid ">

				<!--//content//-->
				<div class="content p-1 d-flex flex-column-fluid position-relative">
					<div class="container py-4">
						<div class="row align-items-center justify-content-center">
							<div style="text-align: center;">
								<img src="../../../../../user/images/heybuddy.png" alt="..."
									width="600px">
							</div>
							<div class="col-md-10 col-lg-7 col-xl-6" data-aos="fade-up"
								data-aos-duration="1200">
								<!--Logo-->

								<!--Card-->
								<div class="card card-body p-4"
									style="border: none; background: transparent;">

									<form action="index.html"
										class=" z-index-1 position-relative needs-validation"
										novalidate="">
										<div class="form-floating mb-3">
											<input type="email" class="form-control" required=""
												id="floatingInput" placeholder="name@example.com"> <label
												for="floatingInput">Email address</label> <span
												class="invalid-feedback">Please enter a valid email
												address</span>
										</div>
										<div class="form-floating mb-3">
											<input type="password" required="" class="form-control"
												id="floatingPassword" placeholder="Password"> <label
												for="floatingPassword">Password</label> <span
												class="invalid-feedback">Enter the password</span>
										</div>
										<div
											class="d-flex align-items-center justify-content-between mb-3">
											<div class="form-check">
												<input class="form-check-input me-1" id="terms"
													type="checkbox" value=""> <label
													class="form-check-label fontB" for="terms">Remember
													Me</label>
											</div>
											<div>
												<a href="page-auth-recover-pass.html"
													class="small text-light fontB">Forget Password?</a>
											</div>
										</div>
										<button class="w-100 btn btn-lg btn-success" type="submit">Sign
											In</button>
										<hr class="mt-4 mb-3">
										<p class="text-center text-light fontB">
											Don’t have an account yet? <a href="page-auth-signup.html"
												class="ms-2 text-body">Sign Up</a>

										</p>
										<div class="d-flex align-items-center pb-3">
											<span class="flex-grow-1 border-bottom pt-1"></span> <span
												class="d-inline-flex align-items-center justify-content-center lh-1 size-30 rounded-circle text-mono">or</span>
											<span class="flex-grow-1 border-bottom pt-1"></span>
										</div>


										<a href="javascript:kakaoLogin();"><img
											src="../../../../../user/images/kakaologin.png" alt="..."
											width="100%"></a>
									</form>
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

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="assets/vendor/feather.min.js"></script>
	<script src="assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>

	<!--////////////Theme Core scripts End/////////////////-->
	<!-- Cursor Js -->
	<script src="assets/vendor/node_modules/js/gsap.min.js"></script>
	<script>
	    //cursor
	    var element = document.querySelector('.cursor');
	    let mouse = { x: 0, y: 0 };
	    window.addEventListener('mousemove', ev => mouse = getMousePos(ev));
	    const lerp = (a, b, n) => (1 - n) * a + n * b;
	    const getMousePos = e => {
	        return {
	            x: e.clientX,
	            y: e.clientY
	        };
	    };
	    class Cursor {
	        constructor(el) {
	            this.DOM = { el: el };
	            this.DOM.el.style.opacity = 0;
	            this.bounds = this.DOM.el.getBoundingClientRect();
	            this.renderedStyles = {
	                tx: { previous: 0, current: 0, amt: 0.2 },
	                ty: { previous: 0, current: 0, amt: 0.2 },
	                scale: { previous: 1, current: 1, amt: 0.2 },
	                opacity: { previous: 1, current: 1, amt: 0.2 }
	            };
	            this.onMouseMoveEv = () => {
	                this.renderedStyles.tx.previous = this.renderedStyles.tx.current = mouse.x - this.bounds.width / 2;
	                this.renderedStyles.ty.previous = this.renderedStyles.ty.previous = mouse.y - this.bounds.height / 2;
	                gsap.to(this.DOM.el, { duration: 0.9, ease: 'Power3.easeOut', opacity: 1 });
	                requestAnimationFrame(() => this.render());
	                window.removeEventListener('mousemove', this.onMouseMoveEv);
	            };
	            window.addEventListener('mousemove', this.onMouseMoveEv);
	        }
	        enter() {
	            element.classList.add('cHover');
	        }
	        leave() {
	            this.renderedStyles['scale'].current = 1;
	            this.renderedStyles['opacity'].current = 1;
	            element.classList.remove('cHover');
	        }
	        render() {
	            this.renderedStyles['tx'].current = mouse.x - this.bounds.width / 2;
	            this.renderedStyles['ty'].current = mouse.y - this.bounds.height / 2;
	
	            for (const key in this.renderedStyles) {
	                this.renderedStyles[key].previous = lerp(this.renderedStyles[key].previous, this.renderedStyles[key].current, this.renderedStyles[key].amt);
	            }
	            this.DOM.el.style.transform = `translateX(${(this.renderedStyles['tx'].previous)}px) translateY(${this.renderedStyles['ty'].previous}px) scale(${this.renderedStyles['scale'].previous})`;
	            this.DOM.el.style.opacity = this.renderedStyles['opacity'].previous;
	            requestAnimationFrame(() => this.render());
	        }
	    }
	    const cursor = new Cursor(document.querySelector('.cursor'));
	    [...document.querySelectorAll('a,.btn')].forEach(link => {
	        link.addEventListener('mouseenter', () => cursor.enter());
	        link.addEventListener('mouseleave', () => cursor.leave());
	    });
	</script>



	<!-- *********************카카오톡로그인******************************** -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

	<script>
window.Kakao.init('34a7cb875c4bfe22aa44952d415d481f');	// 자바스크립트 키 입력
console.log(Kakao.isInitialized()); 
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account; 
                    const profile_nickname = res.properties.nickname; 
                    console.log(kakao_account)		// 받아온 정보들을 출력
                    console.log(profile_nickname)		// 받아온 정보들을 출력
                    $.ajax({
            			async: true 
            			,cache: false
            			,type: "post"
            			,url: "/member/KakaoLgProc"
            			,data : {"hybdName" : profile_nickname}
            			,success: function(response) {
            				if(response.item == "success") {
            					location.href = "url적는곳";
            				} else {
            					alert("카카오 로그인이 실패하였습니다. ");
            				}
            			}
            			,error : function(jqXHR, textStatus, errorThrown){
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


</body>

</html>