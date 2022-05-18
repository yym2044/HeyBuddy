
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
<!-- jquery ui CSS 220510 추가-->
<link
	href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">

</head>

<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">

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
								<h3 class="mb-2">
									<c:out value="${sessName }" />
									님, 반갑습니다👋
								</h3>
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
						<div class="row text-center">
							<div class="col-12">
								<div class="card">
									<div class="table-responsive">

										<table
											class="table-card align-middle table-nowrap mb-0 table table-borderless">

											<thead class="small text-uppercase text-muted">
												<tr>
													<th><select
														class="form-select form-select" name="shHymmDelNy"
														id="shHymmDelNy" style="">
															<option value="">삭제여부
															<option value="1"
																<c:if test="${vo.shHymmDelNy eq 1 }">selected </c:if>>Y

															<option value="0"
																<c:if test="${vo.shHymmDelNy eq 0 }">selected </c:if>>N

													</select></th>
													<th><select
														class="form-select form-select" name="shHymmDormancyNy"
														id="shHymmDormancyNy" style="">
															<option value="">휴먼여부
															<option value="0"
																<c:if test="${vo.shHymmDormancyNy eq 0 }"> selected</c:if>>N

															<option value="1"
																<c:if test="${vo.shHymmDormancyNy eq 1 }"> selected</c:if>>Y

													</select></th>
													<th><select
														class="form-select form-select" name="shMemberOption"
														id="shMemberOption" style="">
															<option value="">검색구문
															<option value="1"
																<c:if test="${vo.shMemberOption eq 1 }"> selected</c:if>>이름

															<option value="2"
																<c:if test="${vo.shMemberOption eq 2 }"> selected</c:if>>아이디

															<option value="3"
																<c:if test="${vo.shMemberOption eq 3 }"> selected</c:if>>연락처
															
													</select></th>
													<th><input
														class="form-control form-control" type="text"
														name="shMemberValue" id="shMemberValue" style="" value=""
														placeholder="검색어를입력해주세요"></th>
														
													<th class="text-end" rowspan="2"><button
															class="btn btn-primary" type="submit" name="search"
															id="btnSearch">검색</button></th>

												</tr>
											</thead>
											<tbody>

												<tr>

													<th class="text-center">No</th>
													<th class="text-center">이름</th>
													<th class="text-center">아이디</th>
													<th class="text-center">성별</th>
													<th class="text-center">생년월일</th>
													<th class="text-center">연락처</th>
													<th class="text-center">가입일</th>
													<th class="text-center">상태</th>
												</tr>


												<c:choose>
													<c:when test="${fn:length(list) eq 0}">
														<tr>
															<td class="text-center" colspan="9">There is no
																data!</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list}" var="item" varStatus="status">
															<tbody id="mainTable_tbody">
																<tr>

																	<td  class="text-center">
																		<%-- <div class="m_check_wrap">
																			<input type="checkbox" id="checkboxSeq"
																				name="checkboxSeq"
																				value="<c:out value="${item.hymmSeq}" />">
																			&nbsp;&nbsp;
																			<c:out value="${item.hymmSeq}" />
																		</div> --%> <c:out value="${item.hymmSeq}" />
																	</td>

																	<td class="text-center"><a
																		href="javaScript:goMemberView('<c:out value="${item.hymmSeq}"/>')"><c:out
																				value="${item.hymmName}" /></a></td>

																	<td class="text-center"><c:out
																			value="${item.hymmId}" /></td>

																	<td class="text-center"><c:if
																			test="${item.hymmGenderCd eq 1}">
																			<c:out value="남성" />
																		</c:if> <c:if test="${item.hymmGenderCd eq 2}">
																			<c:out value="여성" />
																		</c:if></td>

																	<td class="text-center"><c:out
																			value="${item.hymmDob}" /></td>

																	<td class="text-center"><c:set var="numberPhone"
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

																	<td class="text-center"><fmt:formatDate value="${item.regDateTime }"/></td>

																	<td class="text-center"><c:if
																			test="${item.hymmDormancyNy eq 0}">
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

										<!--포스트 페이징과 버튼 -->
										<div class="row text-center" style="width: 100%">
											<div style="width: 100%; float: none; margin: 0 auto">
												<br> <br>
												<nav aria-label="...">
													<ul class="pagination  justify-content-center">
														<c:if test="${vo.startPage gt vo.pageNumToShow}">
															<li class="page-item"><a class="page-link"
																href="javascript:goMemberList( <c:out value='${vo.startPage - 1}'/>);">
																	Previous</a></li>
														</c:if>
														<c:forEach begin="${vo.startPage}" end="${vo.endPage}"
															varStatus="i">
															<c:choose>
																<c:when test="${i.index eq vo.thisPage}">
																	<li class="page-item active"><a class="page-link"
																		href="javascript:goMemberList(<c:out value='${i.index}'/>);">${i.index}</a></li>
																</c:when>
																<c:otherwise>
																	<li class="page-item"><a class="page-link"
																		href="javascript:goMemberList( <c:out value='${i.index}'/>);">${i.index}</a></li>
																</c:otherwise>
															</c:choose>
														</c:forEach>
														<c:if test="${vo.endPage ne vo.totalPages}">
															<li class="page-item"><a class="page-link"
																href="javascript:goMemberList( <c:out value='${vo.endPage + 1 }'/>);">Next</a></li>
														</c:if>
													</ul>
												</nav>

												<a
													href="javascript:goMemberForm('<c:out value="${item.hymmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>');">
													<button type="button" id="goMemberForm"
														class="btn btn-success">회원등록</button>
												</a> <br> <br>


											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
						</div> 
	</form>
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

						<script src="/resources/assets/vendor/feather.min.js"></script>
						<script src="/resources/assets/js/theme.bundle.js"></script>
						<script>
						feather.replace()
						</script>

						<!--////////////Theme Core scripts End/////////////////-->


	<script type="text/javascript">
		$("#btnSearch").on(
				"click", function() {
				if (!checkNull($("#shMemberOption"), $("#shMemberOption").val(),"검색구문을 선택해 주세요!")) 
					return
					false;
				if (!checkNull($("#shMemberValue"), $("#shMemberValue").val(),"검색어를 입력 해 주세요!"))
					retrun
				false;
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
