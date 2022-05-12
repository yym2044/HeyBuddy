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
<link rel="stylesheet"
	href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/assets/vendor/css/choices.min.css">

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">
<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">
<!-- jquery ui CSS 220510
추가-->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">

</head>
<style>
body {
	background-image: url('/resources/user/images/allround.jpg');
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
						<a href="memberList" class="d-block">
							<div class="d-flex align-items-center flex-no-wrap text-truncate">

								<!--Sidebar-icon-->

								<img src="/resources/user/images/xdminHeyBuddy.PNG" alt="..."
									width="200px">

							</div>
						</a>
					</div>

					<!--Aside-Menu-->
					<div class="aside-menu px-3 my-auto" data-simplebar>
						<nav class="flex-grow-1 h-100" id="page-navbar">

							<!--:Sidebar nav-->
							<ul class="nav flex-column collapse-group collapse d-flex">

								<li class="nav-item"><a href="memberList"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="user" class="fe-1x"></i>
									</span> <!--Sidebar nav text--> <span class="sidebar-text"> 멤버
									</span>
								</a></li>
							</ul>
						</nav>
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
								<h3 class="mb-2">정미림 님, 반갑습니다👋</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="dropdown border-top"></div>

				<!--//Page Toolbar End//-->


				<!-- post방식 -->
				<form id="formList" name="formList" method="post" action="/xdmin/memberList">
					<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>"> 
					<input type="hidden" id="checkboxSeqArray" name="checkboxSeqArray">
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>"> 
					<input type="hidden" id="hymmSeq" name="hymmSeq">
				</form>


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
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="table-responsive">
										

										<form class="row gx-3 gy-2 align-items-center">
											<div class="col-lg-2 col-md-6 col-sm-12">
												<select class="form-select form-select-sm"
													name="shHymmDelNy" id="shHymmDelNy" style="width: 150px">
													<option value="">::삭제여부::
													<option value="1"
														<c:if test="${vo.shHymmDelNy eq 1 }">selected </c:if>>Y
													<option value="0"
														<c:if test="${vo.shHymmDelNy eq 0 }">selected </c:if>>N

												</select>
											</div>

											&nbsp;&nbsp;&nbsp;&nbsp;
											<div class="col-lg-2 col-md-6 col-sm-12">
												<select class="form-select form-select-sm"
													name="shHymmDormancyNy" id="shHymmDormancyNy"
													style="width: 150px">
													<option value="">::휴먼여부::
													<option value="0"
														<c:if test="${vo.shHymmDormancyNy eq 0 }"> selected</c:if>>N

													<option value="1"
														<c:if test="${vo.shHymmDormancyNy eq 1 }"> selected</c:if>>Y


													
												</select>
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div class="col-lg-2 col-md-6 col-sm-12">
												<select class="form-select form-select-sm"
													name="shMemberOption" id="shMemberOption"
													style="width: 150px">
													<option value="">::검색구문::
													<option value="1"
														<c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름

													<option value="2"
														<c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디

													<option value="4"
														<c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>연락처

												</select>
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div class="col-lg-2 col-md-6 col-sm-12">
												<input class="form-control form-control-sm" type="text"
													name="shMemberValue" id="shMemberValue"
													style="width: 150px" value="">
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div class="col-lg-2 col-md-6 col-sm-12">
												<button class="btn btn-primary" type="submit" name="search"
													id="btnSearch">검색</button>
											</div>
										</form>

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
													<th>성별</th>
													<th>생년월일</th>
													<th>연락처</th>
													<th>가입일</th>
													<th>상태</th>
												</tr>
											</thead>
											<tbody>

												<c:choose>
													<c:when test="${fn:length(list) eq 0}">
														<tr>
															<td class="text-center" colspan="9">There is no data!</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list}" var="item" varStatus="status">
															<tbody id="mainTable_tbody">
																<tr>
																	<td scope="row">
																		<div class="m_check_wrap">
																			<input type="checkbox" id="checkboxSeq" name="checkboxSeq"
																				value="<c:out value="${item.hymmSeq}" />">
																			&nbsp;&nbsp;
																			<c:out value="${item.hymmSeq}" />
																		</div>
																	</td>
																	<td><a
																		href="javaScript:goMemberView('<c:out value="${item.hymmSeq}"/>')"><c:out
																				value="${item.hymmName}" /></a></td>
																	<td><c:out value="${item.hymmId}" /></td>
																	<td><c:if test="${item.hymmGenderCd eq 1}"> <c:out value="남성" />
																		</c:if> <c:if test="${item.hymmGenderCd eq 2}"> <c:out value="여성" />
																		</c:if></td>
																	<td><c:out value="${item.hymmDob}" /></td>
																	<td><c:set var="numberPhone"
																			value="${item.hymmNumber}" /> <c:choose>
																			<c:when test="${fn:length(numberPhone) eq 10 }">
																				<c:out value="${fn:substring(numberPhone,0,3)}" />
															- <c:out value="${fn:substring(numberPhone,3,6)}" />
															- <c:out value="${fn:substring(numberPhone,6,10)}" />
																			</c:when>
																			<c:otherwise>
																				<c:out value="${fn:substring(numberPhone,0,3)}" />
															- <c:out value="${fn:substring(numberPhone,3,7)}" />
															- <c:out value="${fn:substring(numberPhone,7,11)}" />
																			</c:otherwise>
																		</c:choose></td>
																	<td><c:out value="${item.regDateTime}" /></td>

																	<td><c:if test="${item.hymmDormancyNy eq 0}">
																			<c:out value="활성" />
																		</c:if> <c:if test="${item.hymmDormancyNy eq 1}">
																			<c:out value="휴먼" />
																		</c:if></td>
																</tr>
															</tbody>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
										<!--버튼 -->
										<div class="row text-center" style="width: 100%">
											<div style="width: 100%; float: none; margin: 0 auto">



												<a
													href="javascript:goMemberForm('<c:out value="${item.hymmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>',
'<c:out value="${vo.shMemberOptionDate}"/>','<c:out value="${vo.shMemberDateStart}"/>','<c:out value="${vo.shMemberDateEnd}"/>');">
													<button type="button" id="goMemberForm"
														class="btn btn-sm btn-success">회원등록</button>
												</a>



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



	<!--//Page-footer//-->
	<footer class="pb-4 px-4 px-lg-8">
		<div class="container-fluid px-0">
			<span class="d-block lh-sm small text-muted text-end">&copy; <script>
				document.write(new Date().getFullYear())
			</script>. Copyright
			</span>
		</div>
	</footer>
	<!--/.Page Footer End-->

	<!--///////////Page content wrapper End///////////////-->

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
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

	<script type="text/javascript">
		var seq = $("input:hidden[name=hymmSeq]");

		goMemberList = function(seq) {
			alert(seq);
			$("#thisPage").val(seq);
			$("#formList").submit();
		};
		goMemberView = function(seq) {
			alert(seq);
			$("#hymmSeq").val(seq);
			$("#formList").attr("action", "/xdmin/memberView");
			$("#formList").submit();
		};
		goMemberForm = function(seq) {
			$("#formList").attr("action", "/xdmin/memberForm");
			$("#formList").submit();
		};
		goMemberMultiNelete = function(seq) {
			$("#formList").attr("action", "/xdmin/memberMultiNele");
			$("#formList").submit();
		};
	</script>
</body>

</html>
