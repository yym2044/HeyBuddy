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
 
<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<style type="text/css">
#setTable tbody tr td {
	height: 70px;
}

#setTable tr {
	vertical-align: middle;
}

#setTable {
	text-align: center;
}
</style>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
</head>
<body>

	<form id="formList" method="post">

		<input type="hidden" id="hymmSeq" name="hymmSeq">
		<input type="hidden" id="hyspSeq" name="hyspSeq" value="${vo.hyspSeq}">
		<input type="hidden" id="thisPage" name="thisPage" value="${vo.thisPage}">
		
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
					<!-- 
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
				 -->
					<!--//Page Toolbar End//-->


					<!--//Page content//-->
					<div class="content pt-4 px-4 px-lg-8 d-flex flex-column-fluid">
						<div class="container-fluid px-0">

							<div class="row">

								<%@include file="../include/settingMenu.jsp"%>

								<div class="col-lg-9 h-100" data-aos="fade-up" data-aos-duration="1200">
									<!--card-->
									<div class="card mb-4 p-3">
										<div class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">

											<!-- card title -->
											<h3 class="card-title mb-md-0">멤버 관리</h3>

										</div>
										<h6 class="ps-4 mb-3">멤버를 등록하고 관리할 수 있습니다.</h6>
										<div class="row p-3">
											<div class="col-12"></div>
											<div class="col">
												<div class="position-relative flex-grow-1 me-2 me-lg-4">
													<!--Icon-->
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search fe-1x position-absolute start-0 top-50 translate-middle-y ms-2">
													<circle cx="11" cy="11" r="8"></circle>
													<line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
													<input type="text" class="form-control search ps-6 w-75" placeholder="멤버 이름을 검색해보세요">
												</div>
											</div>
											<div class="col text-end">
												<a class="btn btn-outline-danger" href="javascript:goForm()">멤버 등록</a>
												<a class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#excelModal">엑셀 파일</a>
											</div>
										</div>

										<div class="table-responsive">
											<table id="setTable" class="table table-sm table-nowrap table-card">
												<thead class="bg-body text-muted">
													<tr>
														<td>이름</td>
														<td>연락처</td>
														<td>Email</td>
														<td>계정 생성일</td>
														<td>멤버 상태</td>
														<td>계정 활성화</td>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${list}" var="item" varStatus="status">
														<tr>
															<td class="">
																<div class="d-flex align-items-center">
																	<c:choose>
																		<c:when test="${empty item.uuidFileName}">
																			<img src="/resources/user/images/profileDefault.png" class="avatar sm rounded-pill me-3 flex-shrink-0" alt="Customer">
																		</c:when>
																		<c:otherwise>
																			<img src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>" class="avatar sm rounded-pill me-3 flex-shrink-0" alt="Customer">
																		</c:otherwise>
																	</c:choose>
																	<div>
																		<div class="h6 mb-0 lh-1">
																			<a href="javascript:goView(<c:out value="${item.hymmSeq}"/>);">
																				<c:out value="${item.hymmName}" />
																				<c:if test="${item.hymmName eq sessName}"></c:if>
																			</a>
																			<c:if test="${item.hysmRoleCd eq 12}">
																				<span class="badge bg-danger ms-1">S</span>
																			</c:if>
																		</div>
																		<span id="Member<c:out value="${item.hymmSeq}"/>Text" class="text-muted small d-flex align-items-center onOffSpan"><span id="Member<c:out value="${item.hymmSeq}"/>Circle" class="align-middle me-1 size-5 border border-4 rounded-circle d-inline-block onOffSpan2"></span>Online</span>
																	</div>
																</div>
															</td>
															<td>
																<c:choose>
																	<c:when test="${fn:length(item.hymmNumber) eq 10 }">
																		<c:out value="${fn:substring(item.hymmNumber,0,3)}" />-<c:out value="${fn:substring(item.hymmNumber,3,6)}" />-<c:out value="${fn:substring(item.hymmNumber,6,10)}" />
																	</c:when>
																	<c:otherwise>
																		<c:out value="${fn:substring(item.hymmNumber,0,3)}" />-<c:out value="${fn:substring(item.hymmNumber,3,7)}" />-<c:out value="${fn:substring(item.hymmNumber,7,11)}" />
																	</c:otherwise>
																</c:choose>
															</td>
															<td>
																<c:out value="${item.hymmEmail}" />
															</td>
															<td>
																<fmt:formatDate value="${item.regDateTime}" pattern="yyyy-MM-dd" />
															</td>
															<td>
																<c:choose>
																	<c:when test="${item.hysmAcceptedNy eq 1}">
																참여중
															</c:when>
																	<c:otherwise>
																대기중
															</c:otherwise>
																</c:choose>
															</td>
															<td>
																<c:choose>
																	<c:when test="${item.hymmActiveNy eq 1}">
																활성
															</c:when>
																	<c:otherwise>
																비활성
															</c:otherwise>
																</c:choose>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<div class="d-flex justify-content-center">
											<ul class="pagination">
												
												<li class="paginate_button page-item previous <c:if test="${vo.startPage le vo.pageNumToShow}">disabled</c:if>" id="datatable_previous"><a href="javascript:goPage(<c:out value="${vo.startPage - 1}"/>)" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
												<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
													<li class="paginate_button page-item <c:if test="${vo.thisPage eq i.index}">active</c:if>"><a href="javascript:goPage(<c:out value="${i.index}"/>)" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link"><c:out value="${i.index}"/></a></li>
												</c:forEach>
												<li class="paginate_button page-item next <c:if test="${vo.endPage eq vo.totalPages}">disabled</c:if>" id="datatable_next"><a href="javascript:goPage(<c:out value="${vo.endPage + 1}"/>)" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">Next</a></li>
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
				</main>
				<!--///////////Page content wrapper End///////////////-->
			</div>
		</div>
		
		<!-- Excel Modal Start -->
		
		<div class="modal fade" id="excelModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<input type="hidden" name="checkboxExcelArray" id="checkboxExcelArray">
							<h5 class="modal-title fw-bold" id="staticBackdropLabel">Export data to Excel</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="bg-light text-center">
								<span class="fw-bold">파일명</span>
								<input id="excelFileName" name="excelFileName" type="text">
								<span class="fw-bold">.xlsx</span>
							</div>
							<br>
							<table class="table table-sm table-hover">
								<thead class="bg-light">
									<tr class="text-center">
										<td colspan="4">출력항목</td>
									</tr>
								</thead>
								<tr>
									<td>
										<input name="checkExcel" type="checkbox" class="form-check-input" id="ch1" value="1">
									</td>
									<td>
										<label for="ch1" class="form-check-label">아이디</label>
									</td>
									<td>
										<input name="checkExcel" type="checkbox" class="form-check-input" id="ch2" value="2">
									</td>
									<td>
										<label for="ch2" class="form-check-label">이름</label>
									</td>
								</tr>
								<tr>
									<td>
										<input name="checkExcel" type="checkbox" class="form-check-input" id="ch3" value="3">
									</td>
									<td>
										<label for="ch3" class="form-check-label">이메일</label>
									</td>
									<td>
										<input name="checkExcel" type="checkbox" class="form-check-input" id="ch4" value="4">
									</td>
									<td>
										<label for="ch4" class="form-check-label">휴대전화</label>
									</td>
								</tr>
								<tr>
									<td>
										<input name="checkExcel" type="checkbox" class="form-check-input" id="ch5" value="5">
									</td>
									<td>
										<label for="ch5" class="form-check-label">가입날짜</label>
									</td>
									<td>
										<input name="checkExcel" type="checkbox" class="form-check-input" id="ch6" value="6">
									</td>
									<td>
										<label for="ch6" class="form-check-label">생년월일</label>
									</td>
								</tr>
							</table>

						</div>
						<div class="modal-footer d-flex justify-content-center">
							<button onclick="submitExcel();" type="button" class="btn btn-primary">다운</button>
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Excel Modal End -->

	</form>

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



	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[5].className += ' current';
	</script>

	<script type="text/javascript">
		goView = function(hymmSeq) {
			$("#hymmSeq").val(hymmSeq);
			$("#formList").attr("action", "/setting/memberView").submit();
		}

		goForm = function() {
			$("#formList").attr("action", "/setting/memberForm").submit();
		}
		
		goPage = function(seq) {
			$("#thisPage").val(seq);
			$("#formList").attr("action", "/setting/memberList").submit();
		}
	</script>
	<%@include file="../include/pageScripts.jsp"%>
	
	<script type="text/javascript">
	
	socketOnline.onmessage = function(event){
		
		const userArrOnline = JSON.parse(event.data);
		console.log("online users : ",userArrOnline);
		
		const users = document.getElementsByClassName("onOffSpan");
		const users2 = document.getElementsByClassName("onOffSpan2");
		
		for(var i = 0; i < users.length; i++){
			users[i].innerHTML = users[i].innerHTML.replace("Online", "Offline");
			users2[i].classList.remove("border-success");
			
			for(var j = 0; j < userArrOnline.length; j++){
			
				if(users[i].id.replace("Member","").replace("Text","") == userArrOnline[j]){
					document.getElementById("Member" + userArrOnline[j] + "Text").innerHTML = document.getElementById("Member" + userArrOnline[j] + "Text").innerHTML.replace("Offline", "Online");
					document.getElementById("Member" + userArrOnline[j] + "Circle").classList.add("border-success");
					break;
				}
				
			}
		}
		
		//pageScripts.jsp
		paintOnlineMember();
		
	}
	</script>
	
	<script src="/resources/common/js/validation.js"></script>
	
	<script type="text/javascript">
	//체크박스 다수를 담을 배열
	
	submitExcel = function(){
		
		var checkboxExcelArray = [];
		
		if(!checkNull($("#excelFileName"), $("#excelFileName").val(), "파일명을 입력해주세요")) {
			return false;
		}
		
		$("input[name=checkExcel]:checked").each(function(){
			checkboxExcelArray.push($(this).val());
		});
		
		$("input[name=checkboxExcelArray]").val(checkboxExcelArray);
		
		$("#formList").attr("action", "/member/excelDownload").submit();
		
		setTimeout(() => {
			$("#excelModal").modal("hide");
		}, 2000);
		
	}
	</script>
	
</body>

</html>
