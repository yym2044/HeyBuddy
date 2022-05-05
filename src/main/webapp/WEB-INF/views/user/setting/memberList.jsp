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
#setTable tbody tr td {
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
										<h3 class="card-title mb-md-0">멤버 관리</h3>

									</div>
									<h6 class="ps-4 mb-3">멤버를 등록하고 관리할 수 있습니다.</h6>
									<div class="row p-3">
										<div class="col-12">
											
										</div>
										<div class="col">
											<div class="position-relative flex-grow-1 me-2 me-lg-4">
												<!--Icon-->
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" viewBox="0 0 24 24" fill="none"
													stroke="currentColor" stroke-width="2"
													stroke-linecap="round" stroke-linejoin="round"
													class="feather feather-search fe-1x position-absolute start-0 top-50 translate-middle-y ms-2">
													<circle cx="11" cy="11" r="8"></circle>
													<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
												<input type="text" class="form-control search ps-6 w-75"
													placeholder="멤버 이름을 검색해보세요">
											</div>
										</div>
										<div class="col text-end">
											<a class="btn btn-outline-danger" href="memberForm">멤버 등록</a> <a
												class="btn btn-outline-success" href="#!">엑셀 파일</a>
										</div>
									</div>

									<div class="table-responsive">
										<table id="setTable"
											class="table table-sm table-nowrap table-card">
											<thead class="bg-body text-muted">
												<tr>
													<td>이름</td>
													<td>소속</td>
													<!-- <td>직위</td> -->
													<td>Email</td>
													<td>계정 생성일</td>
													<td>멤버 상태</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="">
													<div class="d-flex align-items-center">
						                                <img src="/resources/assets/media/avatars/08.jpg" class="avatar sm rounded-pill me-3 flex-shrink-0" alt="Customer">
						                                <div>
						                                  <div class="h6 mb-0 lh-1"><a href="heyBuddyHostMenu3View.html">윤영민</a></div>
						                                </div>
						                              </div>
													</td>
													<td></td>
													<!-- <td></td> -->
													<td>yym2044@naver.com</td>
													<td>2022.04.26</td>
													<td>참여중</td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<!-- <td></td> -->
													<td></td>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<!-- <td></td> -->
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="d-flex justify-content-center">
										<ul class="pagination">
											<li class="paginate_button page-item previous disabled" id="datatable_previous">
												<a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
											</li>
											<li class="paginate_button page-item active">
												<a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a>
											</li>
											<!-- 
											<li class="paginate_button page-item ">
												<a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a>
											</li>
											 -->
											<li class="paginate_button page-item next disabled" id="datatable_next">
												<a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">Next</a>
											</li>
										</ul>
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
