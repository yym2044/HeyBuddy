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
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

</head>
 
<style>
body {
	background-image: url('/resources/user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.mySpaceZone {
	margin-top: 2%;
	margin-bottom: 20%;
	margin-left: 20%;
	margin-right: 20%;
}
</style>

<body>

	<!--Theme mode switcher-->
	<div class="position-absolute end-0 top-0 size-40 z-index-fixed">
		<div class="switch_modes">
			<a href="#" class="mode_dark"> <i data-feather="moon"></i>
			</a> <a href="#" class="mode_light active"> <i data-feather="sun"></i>
			</a>
		</div>
	</div>

		<%@include file="../include/loader.jsp"%>

	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!--///////////Page content wrapper///////////////-->
			<main
				class="page-content overflow-hidden ms-0 d-flex flex-column flex-row-fluid">

				<div class="container-fluid px-0">


					<div class="row mySpaceZone">
						<div style="text-align: center;">
							<img src="/resources/user/images/mySpace.PNG" alt="..."
								width="700px">
						</div>
						<!--col-->
						<div class="col-sm-6 col-xl-4">
							<!--card-->
							<div class="card mb-4">

								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar --> 
										<a href="#!"
											class="avatar mb-3 mx-auto xxl rounded-cirlce d-block"> <img
											src="/resources/user/images/Beer-drinking.jpeg" alt="..."
											class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 팀부엉 </a>
										</h5>

										<!-- Email -->
										<br>
										<br>
										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-gray">
												<i class="fe-1x me-2" data-feather="award"></i> GO
											</button>
											<button type="button"
												class="btn btn-gray dropdown-toggle-split rounded-end"
												data-bs-toggle="dropdown" aria-expanded="false">
												<i class="fe-1x" data-feather="more-vertical"></i>
											</button>
											<ul class="dropdown-menu dropdown-menu-end">
												<li><a class="dropdown-item" href="#"><i
														class="fe-1x me-2 align-middle" data-feather="user-plus"></i>
														멤버 초대 </a></li>
												<li><a class="dropdown-item" href="#"><i
														class="fe-1x me-2 align-middle" data-feather="slash"></i>
														스페이스 삭제 </a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--col-->
						<div class="col-sm-6 col-xl-4">
							<!--card-->
							<div class="card mb-4">

								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar -->
										<a href="#!"
											class="avatar mb-3 mx-auto xxl rounded-cirlce d-block"> <img
											src="/resources/user/images/Cocktail-drinking.jpg" alt="..."
											class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 공주나라 </a>
										</h5>

										<!-- Email -->
										<br>
										<br>
										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-gray">
												<i class="fe-1x me-2" data-feather="thumbs-up"></i> GO
											</button>


										</div>
									</div>
								</div>
							</div>
						</div>

						<!--col-->
						<div class="col-sm-6 col-xl-4">
							<!--card-->
							<div class="card mb-4">

								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar -->
										<a href="#!"
											class="avatar mb-3 mx-auto xxl rounded-cirlce d-block"> <img
											src="/resources/user/images/Soju-drinking.jpg" alt="..."
											class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 왕자나라 </a>
										</h5>

										<!-- Email -->
										<br>
										<br>
										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-gray">
												<i class="fe-1x me-2" data-feather="thumbs-up"></i> GO
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--col-->
						<div class="col-sm-6 col-xl-4">
							<!--card-->
							<div class="card mb-4 mb-xl-0">

								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar -->
										<a href="#!"
											class="avatar mb-3 mx-auto xxl rounded-cirlce d-block"> <img
											src="/resources/user/images/Whiskey-drinking.jpg" alt="..."
											class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 너와나의연결고리 </a>
										</h5>

										<!-- Email -->
										<br>
										<br>
										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-gray">
												<i class="fe-1x me-2" data-feather="thumbs-up"></i> GO
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--col-->
						<div class="col-sm-6 col-xl-4">
							<!--card-->
							<div class="card mb-4">

								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar -->
										<a href="#!"
											class="avatar mb-3 mx-auto xxl rounded-cirlce d-block"> <img
											src="/resources/user/images/Wine-drinking.jpg" alt="..."
											class="img-fluid rounded-circle">
										</a>
										<!-- Title -->
										<h5 class="mb-0">
											<a href="#!" class="text-reset"> 이젠아이티 </a>
										</h5>

										<!-- Email -->
										<br>
										<br>
										<!-- Split dropdown user button -->
										<div class="btn-group">
											<button type="button" class="btn btn-gray">
												<i class="fe-1x me-2" data-feather="thumbs-up"></i> GO
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!--col-->
						<div class="col-sm-6 col-xl-4">
							<!--card-->
							<div class="card mb-4">
<br>
										<br>
								<!--Card body-->
								<div class="card-body">
									<!--Contact-->
									<div class="text-center">

										<!-- Avatar -->
										<a href="#!"
											class="avatar mb-3 mx-auto xxl d-block"> <img
											src="/resources/user/images/newspaceplus.png" alt="...">
										</a>
									

										<!-- Email -->
										
										<br><br>
										
									
									</div>
								</div>

							</div>
							<!--/.row-->
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
