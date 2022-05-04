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

<!--Simplebar css-->
<link rel="stylesheet" href="assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="assets/vendor/css/choices.min.css">

<!--Bootstrap icons-->
<link href="assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">
<!--Main style-->
<link rel="stylesheet" href="assets/css/style.min.css"
	id="switchThemeStyle">
</head>
<style>
body {
	background-image: url('../../../../../user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.iconic {
	padding-bottom: 30px;
	padding-top: 30px;
}
</style>
<body>
	<!--////////////////// PreLoader Start//////////////////////-->
	<div class="loader">
		<!--Placeholder animated layout for preloader-->
		<div class="d-flex flex-column flex-root">
			<div class="page d-flex flex-row flex-column-fluid">

				<!--Sidebar start-->
				<aside class="page-sidebar aside-dark placeholder-wave">
					<div class="placeholder col-12 h-100 bg-gray"></div>
				</aside>
				<div class="page-content d-flex flex-column flex-row-fluid">
					<div
						class="content flex-column p-4 pb-0 d-flex justify-content-center align-items-center flex-column-fluid position-relative">
						<div
							class="w-100 h-100 position-relative d-flex align-items-center justify-content-center">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-loader spinner-grow  me-2">
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

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">
			<!--///////////Page sidebar begin///////////////-->
			<aside class="page-sidebar">
				<div class="h-100 flex-column d-flex justify-content-start">

					<!--Aside-logo-->
					<div
						class="aside-logo d-flex align-items-center flex-shrink-0 justify-content-start px-5 position-relative">
						<a href="index.html" class="d-block">
							<div class="d-flex align-items-center flex-no-wrap text-truncate">
								<!--Sidebar-icon-->
								
								<img src="../../../../../user/images/heybuddy.png" alt="..."
									width="200px">
						
							</div>
						</a>
					</div>
					<!--Aside-Menu-->
					<div class="aside-menu px-3 my-auto" data-simplebar>
						<nav class="flex-grow-1 h-100" id="page-navbar">
							<!--:Sidebar nav-->
							<ul class="nav flex-column collapse-group collapse d-flex">

								<li class="nav-item"><a href="index-analytics.html"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="user" class="fe-1x"></i>
									</span> <!--Sidebar nav text--> <span class="sidebar-text"> 멤버
									</span>
								</a></li>


				</div>
			</aside>
			<!--///////////Page Sidebar End///////////////-->

			<!--///Sidebar close button for 991px or below devices///-->
			<div class="sidebar-close d-lg-none">
				<a href="#"></a>
			</div>
			<!--///.Sidebar close end///-->


			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

			
 <!--//Page Toolbar//-->
 <div align="right">
          <div class="toolbar pb-4 pt-4 px-4 px-lg-8">
            <div class="position-relative container-fluid px-0">
                <div class="col-sm-7 mb-3 mb-sm-0">
                  <h3 class="mb-2"> 정미림 님, 반갑습니다👋</h3>
                </div>
              </div>
            </div>
            		</div>
     		<div class="dropdown border-top"></div>
     
          <!--//Page Toolbar End//-->

			
	
		<!--//Page Toolbar//-->
		<div class="toolbar pt-4 px-4 px-lg-8">
			<div class="position-relative container-fluid px-0">
				<div class="row align-items-center position-relative">
					<div class="col-md-8 mb-4 mb-md-0">
						<h4 class="mb-2">회원목록</h4>
					</div>
				</div>
			</div>
			</div>
			<!--//Page Toolbar End//-->

			<!--//Page content//-->
			<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
				<div class="container-fluid px-0">
					<div class="row ">
						<div class="col-12">
							<div class="card">
								<div class="table-responsive">
									<form class="row gx-3 gy-2 align-items-center">
									<br>
									
								<!-- 	
										<div class="col-lg-2 col-md-6 col-sm-12">
											<select class="form-select form-select-sm"
												name="shMemberOptionDate" id="shMemberOptionDate"
												style="width: 150px">
												
												<option value="">::날짜::</option>
															<option value="1" <c:if test="${vo.shMemberOptionDate eq 1}">selected</c:if>>등록일</option>
					<option value="2" <c:if test="${vo.shMemberOptionDate eq 2}">selected</c:if>>수정일</option>
					<option value="3" <c:if test="${vo.shMemberOptionDate eq 3}">selected</c:if>>생일</option>
											</select>
										</div>

										<div class="col-lg-2 col-md-6 col-sm-12">
												<fmt:parseDate value="${vo.shMemberDateEnd}" var="shMemberDateEnd" pattern="yyyy-MM-dd"/>
											<input class="form-control form-select-sm" type="date" id=""
												name="shMemberDateStart" style="width: 150px" value=""
												placeholder="시작일" class="" autocomplete="off">
										</div>

										<div class="col-lg-2 col-md-6 col-sm-12">
												<fmt:parseDate value="${vo.shMemberDateEnd}" var="shMemberDateEnd" pattern="yyyy-MM-dd"/>
											<input class="form-control form-select-sm" type="date" id=""
												name="shMemberDateEnd" style="width: 150px" value=""
												placeholder="종료일" class="" autocomplete="off">
										</div>

									</form> -->
									<br>

	&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="col-lg-2 col-md-6 col-sm-12">
											<select class="form-select form-select-sm" name="shIfmmDelNy"
												id="shIfmmDelNy" style="width: 150px">
												<option value="">::삭제여부::
													<!-- 				<option value="1"<c:if test="${vo.shIfmmDelNy eq 1 }">selected </c:if>>Y
							<option value="0"<c:if test="${vo.shIfmmDelNy eq 0 }">selected </c:if>>N -->
											</select>
										</div>

	&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="col-lg-2 col-md-6 col-sm-12">
											<select class="form-select form-select-sm"
												name="shIfmmDormancyNy" id="shIfmmDormancyNy"
												style="width: 150px">
												<option value="">::휴먼여부::
													<!-- 	<option value="0" <c:if test="${vo.shIfmmDormancyNy eq 0 }"> selected</c:if>>N
							<option value="1" <c:if test="${vo.shIfmmDormancyNy eq 1 }"> selected</c:if>>Y -->
											</select>
										</div>
	&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="col-lg-2 col-md-6 col-sm-12">
											<select class="form-select form-select-sm"
												name="shMemberOption" id="shMemberOption"
												style="width: 150px">
												<option value="">::검색구문::
													<!-- 		<option value="1" <c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름
							<option value="2" <c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디
							<option value="3" <c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>닉네임
							<option value="4" <c:if test="${vo.shMemberOption eq 4 }"> selected</c:if>>연락처 -->
											</select>
										</div>
	&nbsp;&nbsp;&nbsp;&nbsp;
										<div class="col-lg-2 col-md-6 col-sm-12">
											<input class="form-control form-control-sm" type="text"
												name="shMemberValue" id="shMemberValue" style="width: 150px"
												value="">
										</div>
	&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="col-lg-2 col-md-6 col-sm-12">
											<button class="btn btn-primary" type="submit" name="search"
												id="btnSearch">검색</button>
										</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>





			<!--//Page content//-->
			<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
				<div class="container-fluid px-0">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="table-responsive">
									<table id="datatable"
										class="table mt-0 table-striped table-card table-nowrap">
										<thead class="text-uppercase small text-muted">
											<tr>
												<th>No</th>
												<th>이름</th>
												<th>아이디</th>
												<th>생년월일</th>
												<th>성별</th>
												<th>연락처</th>
												<th>가입일</th>
												<th>상태</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>정미림</td>
												<td>mija345</td>
												<td>910907</td>
												<td>여자</td>
												<td>010-9245-6252</td>
												<td>2022.04.27 12:00:00</td>
												<td>활성</td>
											</tr>
											<tr>
												<td>2</td>
												<td>김나리</td>
												<td>narishkim</td>
												<td>930101</td>
												<td>여자</td>
												<td>010-1111-2222</td>
															<td>2022.04.27 12:00:00</td>
												<td>활성</td>
											</tr>
											<tr>
												<td>3</td>
												<td>윤영민</td>
												<td>yym1111r</td>
												<td>960505</td>
												<td>남자</td>
												<td>010-2222-3333</td>
															<td>2022.04.27 12:00:00</td>
												<td>활성</td>
											</tr>
											<tr>
												<td>4</td>
												<td>이건우</td>
												<td>jameshill</td>
												<td>970605</td>
												<td>남자</td>
												<td>010-3333-4444</td>
															<td>2022.04.27 12:00:00</td>
												<td>활성</td>
											</tr>
											<tr>
												<td>5</td>
												<td>윤이나</td>
												<td>yoon1</td>
												<td>900101</td>
												<td>여자</td>
												<td>010-4444-5555</td>
															<td>2022.04.27 12:00:00</td>
												<td>휴먼</td>
											</tr>
											<tr>
												<td>6</td>
												<td>차경석</td>
												<td>chacha123</td>
												<td>851010</td>
												<td>남자</td>
												<td>010-5555-6666</td>
															<td>2022.04.27 12:00:00</td>
												<td>활성</td>
											</tr>
											<tr>
												<td>7</td>
												<td>윤수빈</td>
												<td>soobinsoo</td>
												<td>950101</td>
												<td>여자</td>
												<td>010-6666-7777</td>
															<td>2022.04.27 12:00:00</td>
												<td>활성</td>
											</tr>

										</tbody>
									</table>
									
										<!--버튼 -->
			<div class="row text-center" style="width: 100%">
				<div style="width: 100%; float: none; margin: 0 auto">
		

<!-- 	
<a href="javascript:goMemberForm('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');">  -->
<button type="button" id ="goMemberForm" class="btn btn-sm btn-outline-success"> 회원등록 </button>

<button type="button" id="" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#btnModalNelete"> 삭제 </button> 
	
	<div class="modal fade" id="btnModalNelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="modal-title">
										<i class="fas fa-exclamation-circle"></i>삭제 확인!
									</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">정말 삭제하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									
<!-- 								<a href="javascript:goMemberMultiNelete
									('<c:out value="${item.ifmmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>',
									'<c:out value="${vo.shMemberValue}"/>','<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>',
									'<c:out value="${vo.shMemberDateEnd}"/>');">  -->
	
									<button type="button" class="btn btn-primary" id="btnModalNelete"  >확인</button></a>
				
								</div>
							</div>
						</div>
					</div>    
				</div>
			</div>	
			
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--//Page content End//-->


	

			<!--//Page content End//-->

				<!--//Page-footer//-->
				<footer class="pb-4 px-4 px-lg-8">
					<div class="container-fluid px-0">
						<span class="d-block lh-sm small text-muted text-end">&copy;
							<script>
								document.write(new Date().getFullYear())
							</script>. Copyright
						</span>
					</div>
				</footer>
				<!--/.Page Footer End-->

				<!--///////////Page content wrapper End///////////////-->

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="assets/vendor/feather.min.js"></script>
	<script src="assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->


	<!--Datatables-->
	<script
		src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.11.0/js/dataTables.bootstrap5.min.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Datatables Responsive
			$("#datatable").DataTable({
				"filter" : false,
				"length" : false
			});
		});
	</script>
</body>

</html>