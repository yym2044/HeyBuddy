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
</head>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
<body>
	<!-- include 처리 1번 -->
	<%@include file="../include/loader.jsp"%>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">
			<!-- include 처리 2번 -->
			<%@include file="../include/pageSideBar.jsp"%>

			<!--///Sidebar close button for 991px or below devices///-->
			<div class="sidebar-close d-lg-none">
				<a href="#"></a>
			</div>
			<!--///.Sidebar close end///-->


			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">


				<!-- include 처리 3번 -->
				<%@include file="../include/pageHeader.jsp"%>

				<!-- post방식 -->
				<form id="formList" name="formList" method="post"
					action="/file/fileList">
					<input type="hidden" id="rowNumToShow" name="rowNumToShow"
						value="<c:out value="${vo.rowNumToShow}"/>"> <input
						type="hidden" id="checkboxSeqArray" name="checkboxSeqArray">
					<input type="hidden" id="thisPage" name="thisPage"
						value="<c:out value="${vo.thisPage}" default="1"/>"> <input
						type="hidden" id="hydcSeq" name="hydcSeq"> <input
						type="hidden" id="hymmSeq" name="hymmSeq">
				</form>


				<!--//Page Toolbar//-->
				<!-- 			<div class="toolbar py-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-4 mb-lg-0">
								<h3 class="mb-2">문서</h3>


							</div>
						</div>
					</div>
				</div> -->
				<!--//Page Toolbar End//-->

				<!--Email Header-->
				<div class="position-sticky top-0 mb-2 px-4 px-lg-8 z-index-fixed">
					<div
						class="d-flex align-items-center pb-2 flex-row justify-content-between">

						<div class="flex-grow-1">
							<a
								href="javascript:goFileList('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
								'<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');"
								data-bs-placement="top" data-bs-toggle="tooltip" title="뒤로"
								class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
								<i data-feather="arrow-left" class="fe-1x me-lg-1"></i> <span
								class="d-none d-lg-inline-block">Back</span>
							</a> <a
								href="javascript:goFileNelete('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
								'<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');"
								data-bs-placement="top" data-bs-toggle="tooltip" title="삭제"
								class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
								<i class="bi bi-trash-fill" data-bs-toggle="modal"
								data-bs-target="#btnModalNelete"></i>
							</a>

							<div class="modal fade" id="btnModalNelete" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="modal-title">
												<i class="fas fa-exclamation-circle"></i>삭제 확인!
											</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">정말 삭제하시겠습니까?</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">취소</button>

											<a
												href="javascript:goFileNelete
									('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shHydcOption}"/>',
									'<c:out value="${vo.shHydcValue}"/>' );">
												<button type="button" class="btn btn-primary" id="">확인</button>
											</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!--Email Header-->

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


													<!-- 	검색 -->

												</tr>
											</thead>
											<tbody>

						


												<c:choose>
													<c:when test="${fn:length(list) eq 0}">
														<div style="height: 490px;"
															class="d-flex align-items-center justify-content-center">
															<div class="text-center">
																<h1 class="d-block">등록된 문서가 없습니다</h1>
																<img src="/resources/user/images/cuteOwl.png"
																	style="width: 200px;">
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list}" var="item" varStatus="status">
															<tbody id="mainTable_tbody">
																					<tr>

													<th class="text-center"><input type="checkbox"
														id="checkboxAll" name="checkboxAll"></th>
												
													<th class="text-center">제목</th>
													<th class="text-center">등록일</th>

												</tr>
																<tr>

																	<td class="text-center"><input type="checkbox"
																		id="checkboxSeq" name="checkboxSeq"
																		value="<c:out value="${item.hydcSeq}" />"></td>
																

																	<td class="text-center"><span
																		class="fw-bolder me-2 me-lg-4"> <a
																			href="javaScript:goFileEdit(<c:out value="${item.hydcSeq}"/>, <c:out value="${item.hymmSeq}"/>)">
																				<c:out value="${item.hydcTitle}" />
																		</a>
																	</span></td>
																	<td class="text-center"><fmt:formatDate pattern="yyyy-MM-dd hh:mm"
																			value="${item.regDateTime }" /></td>
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
																href="javascript:goFileList( <c:out value='${vo.startPage - 1}'/>);">
																	Previous</a></li>
														</c:if>
														<c:forEach begin="${vo.startPage}" end="${vo.endPage}"
															varStatus="i">
															<c:choose>
																<c:when test="${i.index eq vo.thisPage}">
																	<li class="page-item active"><a class="page-link"
																		href="javascript:goFileList( <c:out value='${i.index}'/>);">${i.index}</a></li>
					 											</c:when>
																 <c:otherwise>
																	<li class="page-item"><a class="page-link"
																		href="javascript:goFileList( <c:out value='${i.index}'/>);">${i.index}</a></li>
																</c:otherwise>
															</c:choose>
														</c:forEach>
														<c:if test="${vo.endPage ne vo.totalPages}">
															<li class="page-item"><a class="page-link"
																href="javascript:goFileList( <c:out value='${vo.endPage + 1 }'/>);">Next</a></li>
														</c:if>
													</ul>
												</nav>

												<br> <br>


											</div>
										</div>
										
								
									</div>

								</div>

								<!--//Page content End//-->




								<!--////////////Theme Core scripts Start/////////////////-->
								<script src="/resources/assets/vendor/feather.min.js"></script>
								<script src="/resources/assets/js/theme.bundle.js"></script>
								<script>
									feather.replace()
								</script>
								<!--////////////Theme Core scripts End/////////////////-->



								<!--//Page-footer//-->
								<footer class="pb-4 px-4 px-lg-8">
									<div class="container-fluid px-0">
										<span class="d-block lh-sm small text-muted text-end">&copy;
											<script>
												document.write(new Date()
														.getFullYear())
											</script>. Hey, Buddy All rights reserved.
										</span>
									</div>
								</footer>
								<!--/.Page Footer End-->


								<!--////////////Theme Core scripts Start/////////////////-->

								<script src="/resources/assets/vendor/feather.min.js"></script>
								<script src="/resources/assets/js/theme.bundle.js"></script>
								<script>
									feather.replace()
								</script>

								<!--////////////Theme Core scripts End/////////////////-->
								<script type="text/javascript">
									const sidebarLink = document
											.querySelectorAll('.Sidebar-link');
									console.log(sidebarLink);

									console.log(sidebarLink[4]);

									sidebarLink[4].className += ' current';
								</script>

								<script type="text/javascript">
									var seq = $("input:hidden[name=hydcSeq]");

									goFileList = function(seq) {
										$("#formList").attr("action",
												"/file/fileList");
										$("#formList").submit();
									};

									goFileEdit = function(hydcSeq, hymmSeq) {
										alert(hymmSeq + "번 멤버가 올린 문서 "
												+ hydcSeq + "번");
										$("#hydcSeq").val(hydcSeq);
										$("#hymmSeq").val(hymmSeq);
										$("#formList").attr("action",
												"/file/fileEditTemp");
										$("#formList").submit();
									};
								</script>
</body>

</html>
