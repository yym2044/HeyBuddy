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

<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />

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

<!--Page style = Date range picker-->
<link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">

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
	<form id="formView" method="post">
	
	<input id="hymmSeq" name="hymmSeq" type="hidden">
	
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
									<div
										class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">

										<!-- card title -->
										<h3 class="card-title mb-md-0">멤버 상세</h3>

									</div>

									
									<div class="table-responsive">
										<div class="text-center">
											<!-- <img src="../../../../../user/images/profileUpload.png" style="width: 70px;"> -->
											<!-- <img src="/resources/assets/media/avatars/08.jpg" class="avatar rounded-pill flex-shrink-0" alt="Customer"> -->
											<c:choose>
												<c:when test="${empty uploaded.uuidFileName}">
													<img src="/resources/user/images/profileDefault.png" class="avatar rounded-pill flex-shrink-0">
												</c:when>
												<c:otherwise>
													<img src="<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>" class="avatar rounded-pill flex-shrink-0" />
												</c:otherwise>
											</c:choose>
											<p class="p-2 fw-bold">프로필 사진</p>
										</div>
										
										<table id="setTable" class="table table-sm table-nowrap table-card">
											<tr>
												<td class="tableText">구분</td>
												<td><c:choose><c:when test="${item.hysmRoleCd eq 12}">호스트</c:when><c:otherwise>게스트</c:otherwise></c:choose></td>
											</tr>
											<tr>
												<td class="tableText">아이디</td>
												<td><c:out value="${item.hymmId}"/></td>
											</tr>
											<tr>
												<td class="tableText">이름</td>
												<td><c:out value="${item.hymmName}"/></td>
											</tr>
											<tr>
												<td class="tableText">휴대전화</td>
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
											</tr>
											<tr>
												<td class="tableText">이메일</td>
												<td><c:out value="${item.hymmEmail}"/></td>
											</tr>
											<tr>
												<td class="tableText">생일</td>
												<td>
													<c:out value="${item.hymmDob}"/>
												</td>
											</tr>
											<tr>
												<td class="tableText">상태메세지</td>
												<td><c:out value="${item.hymmDesc}"/></td>
											</tr>
										</table>
										<div class="text-center pb-4">
											<a class="btn btn-secondary" href="memberList">목록</a>
											<a class="btn btn-info" href="javascript:goEdit(<c:out value="${item.hymmSeq}"/>);">수정</a>
											<c:if test="${item.hysmRoleCd ne 12}">
												<a class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</a>
											</c:if>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//Page content End//-->
				
				<!-- Modal -->
				<div class="modal fade" id="deleteModal" tabindex="-1"
                aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">확인
                            </h5>
                            <button type="button" class="btn-close"
                                data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            회원을 삭제합니다.
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                data-bs-dismiss="modal">취소</button>
                            <a href="javascript:goDelete(<c:out value="${item.hymmSeq}"/>)" type="button" class="btn btn-primary">확인</a>
                        </div>
                    </div>
                </div>
            </div>
				

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
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<script>
            Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
        </script>
    
     
    
    <script>
	$(function() {
		$('#hybdMmDob').daterangepicker({
			singleDatePicker: true,
			showDropdowns: true,
			minYear: 1901,
			maxYear: parseInt(moment().format('YYYY'),10)
		});
	});
	</script>
	<script type="text/javascript">
	const sidebarLink = document.querySelectorAll('.Sidebar-link');
	
	sidebarLink[5].className += ' current';
</script>
    
<script type="text/javascript">

goEdit = function(hymmSeq){
	$("#hymmSeq").val(hymmSeq);
	$("#formView").attr("action", "/setting/memberEdit").submit();
}

goDelete = function(hymmSeq){
	$("#hymmSeq").val(hymmSeq);
	$("#formView").attr("action", "/setting/deleteMemberFromMySpace").submit();
}

</script>    
<%@include file="../include/pageScripts.jsp"%>
</body>

</html>
