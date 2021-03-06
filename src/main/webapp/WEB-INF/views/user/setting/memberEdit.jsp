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

<!--Page style = Date range picker-->
<link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">

<link rel="stylesheet" href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css">

<style type="text/css">
#setTable tr td {
	height: 40px;
}

#setTable tr {
	vertical-align: middle;
}

table tr .tableText {
	width: 25%;
	text-align: center;
}

table tr .form-control {
	background-color: ghostwhite;
}
</style>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
</head>
<body>
	
	<form id="formEdit" method="post">
	
	<input id="hymmSeq" name="hymmSeq" type="hidden">

	<!-- include ?????? 1??? -->
	<%@include file="../include/loader.jsp"%>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">

			<!-- include ?????? 2??? -->
			<%@include file="../include/pageSideBar.jsp"%>

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

				<!-- include ?????? 3??? -->
				<%@include file="../include/pageHeader.jsp"%>

				<!--//Page Toolbar//-->
				<!-- 
				<div class="toolbar pt-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-3 mb-lg-0">
								<h3 class="mb-2 fw-bold">????????????</h3>
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0">
										<li class="breadcrumb-item"><a href="#!">Home</a></li>
										<li class="breadcrumb-item active">????????????</li>
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
										<h3 class="card-title mb-md-0">?????? ??????</h3>

									</div>


									<div class="table-responsive">
										<div class="text-center">
											<label for="profilePhoto" style="cursor: pointer;">
												<c:choose>
													<c:when test="${empty uploaded.uuidFileName}">
														<img src="/resources/user/images/profileDefault.png" class="avatar rounded-pill flex-shrink-0 flex-shrink-0">
													</c:when>
													<c:otherwise>
														<img src="<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>" class="avatar rounded-pill flex-shrink-0" />
													</c:otherwise>
												</c:choose>
											</label>
											<input id="profilePhoto" type="file" style="display: none;">
											<p class="p-2 fw-bold">????????? ??????</p>
										</div>

										<table id="setTable" class="table table-sm table-nowrap table-card text-center">
											<tr>
												<td class="tableText">?????????</td>
												<td>
													<input type="text" class="form-control" placeholder="????????? ??? ????????? ?????????" value="<c:out value="${item.hymmId}"/>" readonly>
												</td>
											</tr>
											<tr>
												<td>??????</td>
												<td>
													<input type="text" class="form-control" placeholder="??????(50??? ??????)" value="<c:out value="${item.hymmName}"/>" readonly>
												</td>
											</tr>
											<tr>
												<td>????????????</td>
												<td>
													<input type="text" name="hymmNumber" class="form-control" placeholder="????????????" value="<c:out value="${item.hymmNumber}"/>">
												</td>
											</tr>
											<tr>
												<td>?????????</td>
												<td>
													<input type="text" name="hymmEmail" class="form-control" placeholder="?????????" value="<c:out value="${item.hymmEmail}"/>">
												</td>
											</tr>
											<tr>
												<td>??????</td>
												<td>
													<div class="position-relative flex-grow-1">
														<!--Icon-->
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar fe-1x position-absolute start-0 top-50 translate-middle-y ms-2">
													<rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
													<line x1="16" y1="2" x2="16" y2="6"></line>
															<line x1="8" y1="2" x2="8" y2="6"></line>
															<line x1="3" y1="10" x2="21" y2="10"></line>
													</svg>
														<input id="hymmDob" name="hymmDob" type="text" class="form-control ps-6" value="<c:out value="${item.hymmDob}"/>">
													</div>

												</td>
											</tr>
											<tr>
												<td>???????????????</td>
												<td>
													<input id="hymmDesc" name="hymmDesc" type="text" class="form-control" placeholder="???????????????(50??? ??????)" value="<c:out value="${item.hymmDesc}"/>">
												</td>
											</tr>
										</table>
										<div class="text-center pb-4">
											<a class="btn btn-secondary" href="javascript:goView(<c:out value="${item.hymmSeq}"/>)">??????</a>
											<a class="btn btn-info" href="javascript:goUpdt(<c:out value="${item.hymmSeq}"/>)">??????</a>
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
	<script src="/resources/assets/vendor/daterangepicker.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	
	<script>
		Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
	</script>
	
	 

	<script>
		$(document).ready(function(){
			$("#hymmDob").datepicker();
		});
		
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '?????? ???',
		    nextText: '?????? ???',
		    monthNames: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
		    monthNamesShort: ['1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???', '9???', '10???', '11???', '12???'],
		    dayNames: ['???', '???', '???', '???', '???', '???', '???'],
		    dayNamesShort: ['???', '???', '???', '???', '???', '???', '???'],
		    dayNamesMin: ['???', '???', '???', '???', '???', '???', '???'],
		    showMonthAfterYear: true,
		    yearSuffix: '???'
		});
		
	</script>
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');

		sidebarLink[5].className += ' current';
	</script>
	
	<script type="text/javascript">
	
	goView = function(hymmSeq){
		$("#hymmSeq").val(hymmSeq);
		$("#formEdit").attr("action", "/setting/memberView").submit();
	}
	
	goUpdt = function(hymmSeq){
		$("#hymmSeq").val(hymmSeq);
		$("#formEdit").attr("action", "/setting/memberUpdt").submit();
	}
	
	</script>
	
	<script src="/resources/common/js/commonXdmin.js"></script>
	<script src="/resources/common/js/constantsXdmin.js"></script>
	<script src="/resources/common/js/common.js"></script>
	
	<!-- ??????????????? ????????? ????????? ????????? script! ??????????????? ???????????? ??? ??? -->
	<script type="text/javascript">
	let profileInput = document.getElementById("profilePhoto");
	let img = document.querySelector('label[for=profilePhoto] img')
	
	profileInput.onchange = (e) => {
		
		var ext = $("#profilePhoto")[0].files[0].name.split('.').pop().toLowerCase();
		if(extArrayImage.indexOf(ext) == -1){
			alert("????????? ???????????? ????????????.");
			return false;
		}
		
		img.classList.add('preview');
		img.src = URL.createObjectURL(e.target.files[0]);
	}
	</script>
	<%@include file="../include/pageScripts.jsp"%>
</body>

</html>
