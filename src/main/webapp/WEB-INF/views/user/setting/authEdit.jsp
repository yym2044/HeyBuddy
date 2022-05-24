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
#setTable tr td {
	height: 40px;
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
									<div class="row">
										<div class="col-4 ps-5">
											<div class="d-flex align-items-center">
											
												<c:choose>
													<c:when test="${empty rt.uuidFileName}">
														<img src="/resources/user/images/profileDefault.png" class="avatar rounded-pill me-3 flex-shrink-0" alt="Customer">
													</c:when>
													<c:otherwise>
														<img src="<c:out value="${rt.path}"/><c:out value="${rt.uuidFileName}"/>" class="avatar rounded-pill me-3 flex-shrink-0" alt="Customer">
													</c:otherwise>
												</c:choose>
												
												
												<div class="h6 mb-0 lh-1"><c:out value="${rt.hymmName}"/></div>
											</div>
										</div>
										<div class="col-12 p-3">
											<p class="fw-bold">접근 가능 메뉴</p>

											<div class="border p-3" style="height: 200px; overflow: auto;">

												<!-- 												<ul class="nav p-3">
													<li><input id="checkboxAll1" name="" type="checkbox" class="form-check-input mx-2"><label for="checkboxAll1" class="form-check-label fw-bold">스페이스 환경</label></li>
													<li><input id="checkbox1_1" name="checkbox1" type="checkbox" class="form-check-input mx-2"><label for="checkbox1_1" class="form-check-label">기본설정</label></li>
													<li><input id="checkbox1_2" name="checkbox1" type="checkbox" class="form-check-input mx-2"><label for="checkbox1_2" class="form-check-label">프로필설정</label></li>
												</ul>
												<ul class="nav p-3">
													<li><input id="checkboxAll2" name="" type="checkbox" class="form-check-input mx-2"><label for="checkboxAll2" class="form-check-label fw-bold">스페이스 멤버</label></li>
													<li><input id="checkbox2_1" name="checkbox2" type="checkbox" class="form-check-input mx-2"><label for="checkbox2_1" class="form-check-label">멤버관리</label></li>
													<li><input id="checkbox2_2" name="checkbox2" type="checkbox" class="form-check-input mx-2"><label for="checkbox2_2" class="form-check-label">그룹관리</label></li>
													<li><input id="checkbox2_3" name="checkbox2" type="checkbox" class="form-check-input mx-2"><label for="checkbox2_3" class="form-check-label">관리자설정</label></li>
												</ul> -->
												<div class="row mb-2">
													<div class="col-1">
														<div class="size-50 rounded-3 bg-tint-primary text-primary d-flex justify-content-center align-items-center">
															<i class="bi bi-sliders2-vertical"></i>
														</div>
													</div>
													<div class="col">
														<input id="checkboxAll1" name="" type="checkbox" class="form-check-input mx-2">
														<label for="checkboxAll1" class="form-check-label fw-bold fs-5">스페이스 환경</label>
														<ul class="nav p-2">
															<li><input id="checkbox1_1" name="checkbox1" type="checkbox" class="form-check-input mx-2"><label for="checkbox1_1" class="form-check-label">기본설정</label></li>
															<!-- <li><input id="checkbox1_2" name="checkbox1" type="checkbox" class="form-check-input mx-2"><label for="checkbox1_2" class="form-check-label">프로필설정</label></li> -->
														</ul>
													</div>
												</div>
												<div class="row mb-2">
													<div class="col-1">
														<div class="size-50 rounded-3 bg-tint-primary text-primary d-flex justify-content-center align-items-center">
															<i data-feather="user" class="fe-1x align-middle"></i>
														</div>
													</div>
													<div class="col">
														<input id="checkboxAll2" name="" type="checkbox" class="form-check-input mx-2">
														<label for="checkboxAll2" class="form-check-label fw-bold fs-5">스페이스 멤버</label>
														<ul class="nav p-2">
															<li><input id="checkbox2_1" name="checkbox2" type="checkbox" class="form-check-input mx-2"><label for="checkbox2_1" class="form-check-label">멤버관리</label></li>
															<!-- <li><input id="checkbox2_2" name="checkbox2" type="checkbox" class="form-check-input mx-2" checked><label for="checkbox2_2" class="form-check-label">그룹관리</label></li> -->
															<li><input id="checkbox2_3" name="checkbox2" type="checkbox" class="form-check-input mx-2"><label for="checkbox2_3" class="form-check-label">관리자설정</label></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="text-center pb-3">
										<a href="authList" class="btn btn-lg btn-secondary me-1">취소</a>
										<a href="javascript:showModal();" class="btn btn-lg btn-info">변경</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//Page content End//-->
				
				<!-- Update Modal -->
				<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">확인</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">관리 권한을 변경합니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
								<a href="javascript:goUpdtAuth();" type="button" class="btn btn-primary">확인</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Update Modal End -->
				
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
								<a href="javascript:goUpdtAuth();" type="button" class="btn btn-primary">확인</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Delete Modal End -->

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
	
	<form id="authEditForm" method="post">
		<input type="hidden" name="hysmSeq" value="${rt.hysmSeq}">
		<input type="hidden" id="hysmAuthCd" name="hysmAuthCd" value="${rt.hysmAuthCd}">
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
		$("#checkboxAll1").click(function() {
			if ($("#checkboxAll1").is(":checked")) {
				$("input[name=checkbox1]").prop("checked", true);
			} else {
				$("input[name=checkbox1]").prop("checked", false);
			}
		});

		$("input[name=checkbox1]").click(function() {
			var total = $("input[name=checkbox1]").length;
			var checked = $("input[name=checkbox1]:checked").length;

			if (total != checked) {
				$("#checkboxAll1").prop("checked", false);
			} else {
				$("#checkboxAll1").prop("checked", true);
			}
		});

		$(document).ready(function() {
			var total = $("input[name=checkbox1]").length;
			var checked = $("input[name=checkbox1]:checked").length;

			if (total != checked) {
				$("#checkboxAll1").prop("checked", false);
			} else {
				$("#checkboxAll1").prop("checked", true);
			}
		})

		$("#checkboxAll2").click(function() {
			if ($("#checkboxAll2").is(":checked")) {
				$("input[name=checkbox2]").prop("checked", true);
			} else {
				$("input[name=checkbox2]").prop("checked", false);
			}
		});

		$("input[name=checkbox2]").click(function() {
			var total = $("input[name=checkbox2]").length;
			var checked = $("input[name=checkbox2]:checked").length;

			if (total != checked) {
				$("#checkboxAll2").prop("checked", false);
			} else {
				$("#checkboxAll2").prop("checked", true);
			}
		});

		$(document).ready(function() {
			var total = $("input[name=checkbox2]").length;
			var checked = $("input[name=checkbox2]:checked").length;

			if (total != checked) {
				$("#checkboxAll2").prop("checked", false);
			} else {
				$("#checkboxAll2").prop("checked", true);
			}
		})
		
	</script>
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[5].className += ' current';
	</script>
	
	<script type="text/javascript">
	const check1 = document.querySelector("#checkbox1_1");
	const check2 = document.querySelector("#checkbox2_1");
	const check3 = document.querySelector("#checkbox2_3");
	
	if('<c:out value="${rt.hysmAuthCd}"/>' == 1){
		check1.checked = true;
		check2.checked = true;
		check3.checked = true;
	} else if('<c:out value="${rt.hysmAuthCd}"/>' == 2){
		check1.checked = true;
		check2.checked = true;
	} else if('<c:out value="${rt.hysmAuthCd}"/>' == 3){
		check1.checked = true;
		check3.checked = true;
	} else if('<c:out value="${rt.hysmAuthCd}"/>' == 4){
		check2.checked = true;
		check3.checked = true;
	} else if('<c:out value="${rt.hysmAuthCd}"/>' == 5){
		check1.checked = true;
	} else if('<c:out value="${rt.hysmAuthCd}"/>' == 6){
		check2.checked = true;
	} else if('<c:out value="${rt.hysmAuthCd}"/>' == 7){
		check3.checked = true;
	}
	
	$("input[type=checkbox]").on("click", function(){
		
		if(check1.checked == true && check2.checked == true && check3.checked == true){
			$("#hysmAuthCd").val(1);
		} else if(check1.checked == true && check2.checked == true){
			$("#hysmAuthCd").val(2);
		} else if(check1.checked == true && check3.checked == true){
			$("#hysmAuthCd").val(3);
		} else if(check2.checked == true && check3.checked == true){
			$("#hysmAuthCd").val(4);
		} else if(check1.checked == true){
			$("#hysmAuthCd").val(5);
		} else if(check2.checked == true){
			$("#hysmAuthCd").val(6);
		} else if(check3.checked == true){
			$("#hysmAuthCd").val(7);
		} else {
			$("#hysmAuthCd").val(0);
		}
	});

	showModal = function(){
		
		if($("#hysmAuthCd").val() == 0){
			$("#deleteModal").modal('show');
		} else {
			$("#updateModal").modal('show');
		}
		
	}
	
	goUpdtAuth = function(){
		$("#authEditForm").attr("action", "/setting/authUpdt").submit();
	}
	
	</script>
	

</body>

</html>
