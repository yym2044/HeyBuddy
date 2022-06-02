<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%
pageContext.setAttribute("br", "\n");
%>
<!-- 설명엔터 -->


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

<style>
.pop_wrap {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .5);
	font-size: 0;
	text-align: center;
}

.pop_wrap:after {
	display: inline-block;
	height: 100%;
	vertical-align: middle;
	content: '';
}

.pop_wrap .pop_inner {
	display: inline-block;
	padding: 20px 30px;
	background: #fff;
	width: 500px;
	vertical-align: middle;
	font-size: 15px;
}
</style>


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


				<!--//Page Toolbar//-->
				<!-- 
				<div class="toolbar py-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-4 mb-lg-0">
								<h3 class="mb-2">문서</h3>


							</div>
						</div>
					</div>
				</div>
				 -->
				<!--//Page Toolbar End//-->

				<!-- 히든처리 -->
				<form id="formView" action="" method="post">

					<input type="hidden" id="thisPage" name="thisPage"
						value="<c:out value="${vo.thisPage}"/>"> 
				
				<input
						type="hidden" id="hydcSeq" name="hydcSeq"
						value="<c:out value="${vo.hydcSeq}"/>" >
						 <input
						type="hidden" id="hymmSeq" name="hymmSeq"
						value="<c:out value="${vo.hymmSeq}"/>"> <input
						type="hidden" id="shHydcDelNy" name="shHydcDelNy"
						value="<c:out value="${vo.shHydcDelNy}"/>"> <input
						type="hidden" id="shHydcTitle" name="shHydcTitle"
						value="<c:out value="${vo.shHydcTitle}"/>"> <input
						type="hidden" id="shHydcOption" name="shHydcOption"
						value="<c:out value="${vo.shHydcOption}"/>"> <input
						type="hidden" id="shHydcValue" name="shHydcValue"
						value="<c:out value="${vo.shHydcValue}"/>">

					<!--Email Header-->
					<div class="position-sticky top-0 mb-2 px-4 px-lg-8 z-index-fixed">
						<div
							class="d-flex align-items-center pb-2 flex-row justify-content-between">

							<div class="flex-grow-1">
								<a
									href="javascript:goFileList('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
								'<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');"
									data-bs-placement="top" data-bs-toggle="tooltip" title="리스트"
									class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
									<i data-feather="arrow-left" class="fe-1x me-lg-1"></i> <span
									class="d-none d-lg-inline-block">Back</span>
								</a>

								<c:if test="${item.hymmSeq eq sessSeq}">

									<a
										href="javascript:goFileNelete('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
								'<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');"
										data-bs-placement="top" data-bs-toggle="tooltip" title="삭제"
										class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
										<i class="bi bi-trash-fill" data-bs-toggle="modal"
										data-bs-target="#btnModalNelete"></i>
									</a>


									<a
										href="javascript:goFileEdit('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
								'<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');"
										data-bs-placement="top" data-bs-toggle="tooltip" title="수정"
										class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
										<i class="bi bi-pencil-fill"></i>
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
								</c:if>
							</div>
						</div>
					</div>
					<!--Email Header-->

					<!--Inbox Details-->
					<div class="px-4 position-relative px-lg-8 mb-4 h-100 flex-grow-1">
						<div class="card h-100">
							<div class="card-header">
								<div class="row justify-content-md-between">
									<div class="col-md d-flex mb-4 mb-md-0 align-items-center">
										<div class="avatar">


											<c:choose>
												<c:when test="${empty item.uuidFileName}">
													<img style="width: 50px; height: 50px;"
														src="/resources/user/images/profileDefault.png"
														class="rounded-circle" alt="">
												</c:when>
												<c:otherwise>
													<img style="width: 50px; height: 50px;"
														src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>"
														class="avatar rounded-pill flex-shrink-0" />
												</c:otherwise>
											</c:choose>
										</div>

										<div class="flex-1 ms-2">
											<h5 class="mb-0">
												<c:out value="${item.hydcTitle}" />
											</h5>
											<a class="text-800 fs--1" href="#!"> <span
												class="fw-semi-bold"> <c:out value="${item.hymmName}"></c:out>
											</span> <span class="ms-1 text-500"> &lt; <c:out
														value="${item.hymmEmail}"></c:out> &gt;
											</span>
											</a>
										</div>
										<div
											class="col-md-auto ms-auto justify-content-md-end d-flex align-items-center">
											<a href="#!" data-bs-toggle="tooltip" data-bs-placement="top"
												title="Print" class="d-inline-block me-3"> <i
												class="bi bi-printer"></i>
											</a> <small> <fmt:formatDate pattern="yyyy-MM-dd hh:mm"
													value="${item.regDateTime}" /></small>

										</div>
									</div>
								</div>
								<div class="card-body flex-grow-1">
									<label for="hydcText" class="form-label"></label>
									<p>
										<c:out value="${fn:replace(item.hydcText, br, '<br/>')}"
											escapeXml="false" />
									</p>

									<hr>




									<p>첨부파일</p>
									<div class="d-flex flex-wrap">

										<!--Attachment image-->
										<c:forEach items="${list}" var="fileUploaded"
											varStatus="status">
											<c:choose>
												<c:when test="${empty fileUploaded.uuidFileName}">
													<p>등록된 파일이 없습니다.</p>
												</c:when>
												
												
												<c:otherwise>

													<div class="card-hover me-2 position-relative width-90">
														<span
															class="hover-image mb-1 position-relative d-block overflow-hidden rounded-3">
															<img
															src="<c:out value="${fileUploaded.path}"/><c:out value="${fileUploaded.uuidFileName}"/>"
															width="200px" class="img-fluid" alt="" /> <span
															class="hover-image-overlay position-absolute start-0 top-0 w-100 h-100 d-flex justify-content-center align-items-center text-white">

																<span> <a
																	href="<c:out value="${fileUploaded.path}"/><c:out value="${fileUploaded.uuidFileName}"/>"
																	download="<c:out value="${fileUploaded.path}"/><c:out value="${fileUploaded.originalFileName}"/>">
																		<i data-feather="download" class="fe-2x"></i>
																</a>
															</span>
														</span>
														</span>
														<!--File description-->

														<c:forEach items="${list}" var="fileUploaded" varStatus="status">

															<!-- 이미지라면 -->
															<c:if test="${item.type eq 0}">
																<span class="d-block small text-body text-truncate">
																	<c:out value="${fileUploaded.originalFileName}" />

																</span>
																<span class="d-block small text-muted text-truncate">
																	<c:out value="${fileUploaded.size}" /> mb
																</span>
																<span class="d-block small text-muted text-truncate">

																	<a href="#pop" class="btn_open"> preview </a>
																</span>

																<!-- 이미지팝업 -->
																<div id="pop" class="pop_wrap" style="display: none;">
																	<div class="pop_inner">
																		<p class="dsc">Image Preview</p>
																		<img
																			src="<c:out value="${fileUploaded.path}"/><c:out value="${fileUploaded.uuidFileName}"/>"
																			width="500px" class="img-fluid" alt="" />
																		<button type="button" class="btn_close">Close</button>
																	</div>
																</div>
															</c:if>

															<!-- pdf라면 -->
															<c:if test="${fileUploaded.type eq 1}">
																
																<span class="d-block small text-body text-truncate">
																	<c:out value="${fileUploaded.originalFileName}" />

																</span>
																<span class="d-block small text-muted text-truncate">
																	<c:out value="${fileUploaded.size}" /> mb
																</span>
																	<span class="d-block small text-muted text-truncate">
																<a
																	href="<c:out value="${fileUploaded.path}"/><c:out value="${fileUploaded.uuidFileName}"/>">
																	preview </a> </span>
															</c:if>

														</c:forEach>
														<!-- <a href="/resources/pdfjs-2.14.305-dist/web/viewer.html?file=test.pdf"> view</a> -->
														<%-- <iframe src="/resources/pdfjs-2.14.305-dist/web/viewer.html?file=test.pdf" style="width:500px; height:300px; border:1px solid #00c;"></iframe>
<iframe src="<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>" style="width:500px; height:300px; border:1px solid #00c;"></iframe>
			 --%>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</div>
								</div>
								<div class="d-flex mb-3 align-items-center small">

									<br> <br>

									<!--Comments-->
									<a href="#!"
										class="d-flex align-items-center btn btn-sm btn-white border rounded-2 px-2 ms-auto">
										<i data-feather="message-square"
										class="fe-1x me-1 align-middle"></i> <span>3</span>
									</a>

									<!--Shares-->
									<a href="#!"
										class="d-flex align-items-center btn btn-sm btn-white border rounded-2 px-2 ms-1">
										<i data-feather="share" class="fe-1x me-1 align-middle"></i> <span>4</span>
									</a>
								</div>


								<br> <br>


								<!--Comments list-->
								<!-- 			<ul class="list-group">
					<li class="list-group-item">
						<div class="d-flex align-items-stretch">
							<a href="#!" class="flex-shrink-0 d-block me-2"> <img
								src="/resources/assets/media/avatars/01.jpg"
								class="avatar sm rounded-circle" alt="">
							</a>
							Coomments and replies
							<div>
								<div class="py-2 mb-1 px-3 bg-body rounded-3">
									<div class="d-flex justify-content-between">
										<h6 class="mb-0">윤영민</h6>
										<small class="text-muted">2022.04.27 11:16</small>
									</div>
									<p class="mb-0">확인 했습니다.</p>
								</div>
								Reply link
								<div class="mb-2 small">
									<a href="#!" class="text-reset">Reply</a>
								</div>
								Reply
								<div class="d-flex align-items-stretch">
									Reply icon
									<div class="me-2 text-muted">
										<i data-feather="corner-down-right"
											class="fe-1x me-1 align-middle"></i>
									</div>
									<a href="#!" class="flex-shrink-0 d-block me-2"> <img
										src="/resources/assets/media/avatars/02.jpg"
										class="avatar xs rounded-circle" alt="">
									</a>
									Reply
									<div>
										<div class="py-2 mb-1 px-3 bg-body rounded-3">
											<div class="d-flex justify-content-between">
												<h6 class="mb-0">정미림</h6>
												<small class="text-muted">2022.04.27 12:16</small>
											</div>
											<p class="mb-0">감사합니다.</p>
										</div>
										Reply link
										<div class="mb-0 small">
											<a href="#!" class="text-reset">Reply</a>
										</div>
									</div>

								</div>
							</div>
						</div>
					</li>
					<li class="list-group-item">
						<div class="d-flex align-items-stretch">
							<a href="#!" class="flex-shrink-0 d-block me-2"> <img
								src="/resources/assets/media/avatars/03.jpg"
								class="avatar sm rounded-circle" alt="">
							</a>
							Coomments and replies
							<div>
								<div class="py-2 mb-1 px-3 bg-body rounded-3">
									<div class="d-flex justify-content-between">
										<h6 class="mb-0">이건우</h6>
										<small class="text-muted">2022.04.27 16:11</small>
									</div>
									<p class="mb-0">감사합니다. 😀</p>
								</div>
								Reply link
								<div class="mb-2 small">
									<a href="#!" class="text-reset">Reply</a>
								</div>
							</div>
						</div>
					</li>
					<li class="list-group-item bg-body">
					
					
						Add comment
						<h6>Add new comment</h6> <textarea name="addComment" rows="2"
							class="form-control mb-2"></textarea>
						<div class="text-end">
							<button type="button" class="btn btn-primary btn-sm">등록</button>
						</div>

					</li>
				</ul> -->

							</div>
						</div>
				</form>
				<!--//Page content End//-->


				<!--//Page-footer//-->
				<footer class="pb-4 px-4 px-lg-8">
					<div class="container-fluid px-0">
						<span class="d-block lh-sm small text-muted text-end">
							&copy; <script>
								document.write(new Date().getFullYear())
							</script> . Hey, Buddy All rights reserved.
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
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');
		console.log(sidebarLink);

		console.log(sidebarLink[4]);

		sidebarLink[4].className += ' current';
	</script>


	<script type="text/javascript">
		goFileList = function() {
			$("#formView").attr("action", "/file/fileList");
			$("#formView").submit();
		};

		goFileEdit = function() {
			$("#formView").attr("action", "/file/fileEdit");
			$("#formView").submit();
		};

		goFileNelete = function(seq) {
			$("#formView").attr("action", "/file/fileNele");
			$("#formView").submit();
		};
	</script>


	<!-- 이미지 팝업으로 크게보기 -->
	<script>
		// 팝업 열기
		var target = document.querySelectorAll('.btn_open');
		var btnPopClose = document.querySelectorAll('.pop_wrap .btn_close');
		var targetID;

		// 팝업 열기
		for (var i = 0; i < target.length; i++) {
			target[i].addEventListener('click', function() {
				targetID = this.getAttribute('href');
				document.querySelector(targetID).style.display = 'block';
			});
		}

		// 팝업 닫기
		for (var j = 0; j < target.length; j++) {
			btnPopClose[j].addEventListener('click', function() {
				this.parentNode.parentNode.style.display = 'none';
			});
		}
	</script>
	<!-- 이미지 팝업으로 크게보기 -->

</body>

</html>
