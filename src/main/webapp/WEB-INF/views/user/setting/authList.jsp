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
										<h3 class="card-title mb-md-0">관리자 설정</h3>

									</div>
									<div class="row px-3 pb-1 d-flex">
										<div class="col ps-4 mb-3">워크스페이스 내 관리자를 설정하고, 관리자별 접근 가능한 메뉴를 제한할 수 있습니다.</div>

										<div class="col-3 text-end">
											<a class="btn btn-outline-danger" href="authForm">관리자 추가</a>
										</div>
									</div>

									<div class="table-responsive">
										<table id="setTable" class="table table-sm table-nowrap table-card table-borderless">
											<thead>
												<tr class="table-light">
													<td>멤버 정보</td>
													<td>접근 가능 메뉴</td>
													<td>편집</td>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${list}" var="item" varStatus="status">
													<c:if test="${item.hysmAcceptedNy eq 1 and item.hymmActiveNy eq 1 and (item.hysmAuthCd ne 0 or item.hysmRoleCd eq 12)}">
														<tr>
															<td>
																<div class="d-flex align-items-center">
																	<c:choose>
																		<c:when test="${empty item.uuidFileName}">
																			<img src="/resources/user/images/profileDefault.png" class="avatar sm rounded-pill me-3 flex-shrink-0" alt="Customer">
																		</c:when>
																		<c:otherwise>
																			<img src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>" class="avatar sm rounded-pill me-3 flex-shrink-0" alt="Customer">
																		</c:otherwise>
																	</c:choose>
																	<div class="h6 mb-0 lh-1 d-flex align-items-center">
																		<a href="javascript:showProfileModal(<c:out value="${item.hymmSeq}"/>);"><c:out value="${item.hymmName}"/></a>
																		<c:if test="${item.hysmRoleCd eq 12}">
																			<span class="badge bg-danger ms-1">S</span>
																		</c:if>
																	</div>
																</div>
															</td>
															<td id="authMenu${status.index}">
																<c:choose>
																	<c:when test="${item.hysmRoleCd eq 12}">기본정보, 멤버관리, 관리자설정</c:when>
																	<c:otherwise>
																		<c:if test="${item.hysmAuthCd eq 1}">기본정보, 멤버관리, 관리자설정</c:if>
																		<c:if test="${item.hysmAuthCd eq 2}">기본정보, 멤버관리</c:if>
																		<c:if test="${item.hysmAuthCd eq 3}">기본정보, 관리자설정</c:if>
																		<c:if test="${item.hysmAuthCd eq 4}">멤버관리, 관리자설정</c:if>
																		<c:if test="${item.hysmAuthCd eq 5}">기본정보</c:if>
																		<c:if test="${item.hysmAuthCd eq 6}">멤버관리</c:if>
																		<c:if test="${item.hysmAuthCd eq 7}">관리자설정</c:if>
																	</c:otherwise>
																</c:choose>
															</td>
															<td>
																<c:choose>
																	<c:when test="${item.hysmRoleCd eq 12}">
																		<a href="javascript:changeHostModal();">호스트 변경</a>
																	</c:when>
																	<c:otherwise>
																		<a class="btn btn-info position-relative p-0 size-30 justify-content-center align-items-center d-inline-flex" href="javascript:goEdit(<c:out value="${item.hymmSeq}"/>)">
																			<i class="bi bi-pencil-square"></i>
																		</a>
																		<button onclick="javascript:showDeleteModal(<c:out value="${item.hysmSeq}"/>,<c:out value="${item.hymmSeq}"/>)" class="btn btn-danger position-relative p-0 size-30 justify-content-center align-items-center d-inline-flex">
																			<i class="bi bi-trash3"></i>
																		</button>
																	</c:otherwise>
																</c:choose>
															</td>
														</tr>
													</c:if>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//Page content End//-->

				<!-- Delete Modal -->
				<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">확인</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">관리 권한을 삭제합니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button id="btnAuthDelete" type="button" class="btn btn-primary">확인</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Delete Modal End -->
				
				<!-- Change Host Modal -->
				<div class="modal fade" id="changeHostModal" tabindex="-1" aria-labelledby="changeHostModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="">호스트 변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<h4>마이스페이스 호스트를 변경합니다.</h4>
								<div class="card">
									<select id="selectHost" class="form-select">
										<c:forEach items="${list}" var="item" varStatus="status">
											<c:if test="${item.hysmRoleCd ne 12 and item.hysmAcceptedNy eq 1 and item.hymmActiveNy eq 1}">
												<option value="${item.hymmSeq}"><c:out value="${item.hymmName}"/></option>								
											</c:if>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<button onclick="changeHost();" type="button" class="btn btn-primary">확인</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Change Host Modal End -->

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
	
	<form id="authListForm" method="post">
		<input type="hidden" name="hymmSeq" id="hymmSeq">
		<input type="hidden" name="hysmAuthCd" value="0">
		<input type="hidden" name="hysmSeq" id="hysmSeq">
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
	
	showDeleteModal = function(hysmSeq, hymmSeq){
		
		if("<c:out value='${sessSeq}'/>" == hymmSeq){
			alert("자신의 권한은 삭제할 수 없습니다. 호스트에게 요청하세요!");
			return false;
		}
		
		$("#hysmSeq").val(hysmSeq);
		$("#deleteModal").modal("show");
		
	}
	
	$("#btnAuthDelete").on("click", function(){
		$("#authListForm").attr("action", "/setting/authUpdt").submit();
	});
	
	
	goEdit = function(hymmSeq){
		$("#hymmSeq").val(hymmSeq);
		$("#authListForm").attr("action", "/setting/authEdit").submit();
	}
	
	changeHostModal = function(){
		if('<c:out value="${hostNy}"/>' == 1){
			$("#changeHostModal").modal("show");
		} else {
			alert("호스트만 가능합니다.");
		}
	}
	
	changeHost = function(){
		
		$.ajax({
			async: true
			, cache: false
			, type: "post"
			, url: "/user/selectOneAjax"
			, data : { "hymmSeq" : $("#selectHost").val() }
			, success: function(data){

				if(data.hysmAuthCd > 0){
					alert("관리권한을 먼저 삭제해야 합니다.");
					return false;
				}
				
				$("#hymmSeq").val(data.hymmSeq);
				
				$("#authListForm").attr("action", "/setting/changeHost").submit();
				
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
		console.log($("#selectHost").val());
		
//		$("#authListForm").attr("action", "/setting/changeHost").submit();
	}
	
	</script>
	
	<script type="text/javascript">
	console.log($("#selectHost"));
	</script>
	
	
	<%@include file="../include/pageScripts.jsp"%>
</body>

</html>
