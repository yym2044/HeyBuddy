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

			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">

				<!-- include 처리 3번 -->
				<%@include file="../include/pageHeader.jsp"%>

				<!--//Page Toolbar//-->
				<div class="toolbar py-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-4 mb-lg-0">
								<h3 class="mb-2">문서</h3>


							</div>
						</div>
					</div>
				</div>
				<!--//Page Toolbar End//-->

				<!-- post방식 -->
				<form id="formList" name="formList" method="post"
					action="/file/fileList">
					<input type="hidden" id="rowNumToShow" name="rowNumToShow"
						value="<c:out value="${vo.rowNumToShow}"/>"> <input
						type="hidden" id="checkboxSeqArray" name="checkboxSeqArray">
					<input type="hidden" id="thisPage" name="thisPage"
						value="<c:out value="${vo.thisPage}" default="1"/>"> <input
						type="hidden" id="hydcSeq" name="hydcSeq">
				</form>


				<!--//Page content//-->
				<div
					class="content overflow-hidden position-relative d-flex flex-column-fluid">
					<!--Inbox content-->
					<div id="mailList"
						class="position-absolute left-0 top-0 d-flex flex-column w-100 h-100"
						data-simplebar>
						<!--Email Header-->
						<div
							class="px-4 px-lg-8 pb-2 position-sticky top-0 pt-4 z-index-fixed">
							<div class="rounded-3 w-100 ps-md-3 top-0">
								<div class="row align-items-center mx-n2">
									<div class="col-md-6 col-xl-7 px-2 order-last">
										<div class="d-flex align-items-center ps-3 ps-md-0">
											<div class="form-check mb-0 me-2">
												<input type="checkbox" class="form-check-input"
													id="check_all"> <label for="check_all"
													class="form-check-label"></label>
											</div>

											<!--Selected mails action-->
											<div class="d-flex align-items-center">

												<div class="btn-group btn-group-sm">

													<a href="#!"
														class="btn border hover-bg-secondary size-30 p-0 d-flex align-items-center justify-content-center">
														<i data-feather="trash-2" class="fe-1x"></i>
													</a>

												</div>
											</div>
										</div>
									</div>
									<div
										class="col-md-6 col-xl-5 px-2 order-1 order-md-last mb-2 mb-md-0">
										<div class="d-flex justify-content-end">
											<form action="" class="position-relative flex-grow-1 me-2">
												<!--Icon-->
												<i data-feather="search"
													class="fe-1x position-absolute start-0 top-50 translate-middle-y ms-3"></i>
												<input type="text" class="form-control search ps-8"
													placeholder="제목,등록자 검색">
											</form>
											<div
												class="btn btn-primary btn-sm d-inline-flex align-items-center">
												<i data-feather="edit-3" class="fe-2x me-md-2"></i> 
												<span class="d-md-inline-block d-none"> 
												<a href="javascript:goFileForm('<c:out value="${item.hymmSeq}"/>','<c:out value="${vo.thisPage}"/>');">등록 </a></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td class="text-center" colspan="9">There is no data!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="item" varStatus="status">
									<div class="flex-grow-1 overflow-hidden pe-4">

										<!--Inbox mail list-->
										<div class="list-group px-4 px-lg-8 mb-4 list">
											<!--Inbox-item-->
											<div class="list-group-item list-group-item-action">
												<div class="d-flex align-items-center">




													<!--check-->
													<div
														class="form-check shrink-0 mb-0 me-1 position-relative">
														<input type="checkbox" class="form-check-input"
															id="check_1"> <label for="check_1"
															class="form-check-label"></label>
													</div>

													<div
														class="form-star shrink-0 mb-0 me-2 d-md-flex d-none position-relative">
														<input type="checkbox" class="form-star-input"
															id="starred_1"> <label for="starred_1"
															class="form-star-label"></label>
													</div>

													<div
														class="shrink-0 d-flex flex-grow-1 ms-1 overflow-hidden align-items-center justify-content-start">
														<div
															class="size-35 me-2 me-lg-3 d-flex align-items-center justify-content-center rounded-circle flex-shrink-0 overflow-hidden">
															<img src="/resources/assets/media/avatars/02.jpg"
																class="img-fluid rounded-circle" alt="">
														</div>


														<!--name class for search results-->

														<div class="d-flex align-items-center mb-1">
															<div class="mb-0 me-2 flex-shrink-0 name">
																<c:out value="${item.hymmName}" />
															</div>
															<!--   <span class="badge label bg-danger flex-shrink-0 rounded-pill ms-auto">Friends</span> -->
														</div>
														<p class="small fw-bold mb-0"></p>
														<p class="lh-sm text-truncate mb-0">
															<span class="fw-bolder me-2 me-lg-4"> 
															<a href="javaScript:goFileView('<c:out value="${item.hymmSeq}"/>')"> <c:out
																	value="${item.hydcTitle}" /> </a>
															</span>

														</p>


														<div class="flex-shrink-0">
															<div class="d-flex flex-column align-items-end">
																<!--New indicator-->
																<div class="d-flex align-items-center mb-2">
																	<i data-feather="paperclip" class="fe-1x "></i>

																</div>
																<!--Time-->
																<span class="block small text-muted">Just Now</span>
															</div>
														</div>


													</div>

												</div>

											</div>

										</div>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<!--Footer for emails-->
						<div
							class="d-flex justify-content-between align-items-center mb-4 px-4 px-lg-8">

							<div>
								<small>1-12 of 999</small>
								<div class="btn-group btn-group-sm ms-3">
									<button class="btn btn-white btn-sm" type="button"
										disabled="disabled">
										<i data-feather="arrow-left" class="fe-1x"></i>
									</button>
									<button class="btn btn-white btn-sm" type="button">
										<i data-feather="arrow-right" class="fe-1x"></i>
									</button>
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

	</main>
	<!--///////////Page content wrapper End///////////////-->
	</div>
	</div>

	<!--Mail Compose Modal-->
	<div class="modal search_modal fade" id="modal_compose" tabindex="-1"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div
					class="position-relative d-flex rounded-top px-4 py-3 align-items-center justify-content-between bg-primary text-white">
					<h5 class="mb-0">문서등록</h5>
					<button class="btn text-white shadow-none small"
						data-bs-dismiss="modal" type="button">취소</button>
				</div>
				<div class="p-4 modal-body">
					<form>
						<input type="text" class="form-control mb-3" placeholder="공유자검색">
						<input type="text" class="form-control mb-3" placeholder="제목">
						<!--Quill editor-->
						<div class="mb-3"
							data-quill='{"placeholder": "Enter your message here..."}'></div>

						<input type="text" class="form-control mb-3" placeholder="내용"
							height="500px">

						<div class="d-flex justify-content-end pt-4">
							<button type="button" class="btn btn-outline-secondary">임시저장</button>
							<button type="button" class="btn btn-primary ms-2">등록</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!--////////////Theme Core scripts Start/////////////////-->
	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
          feather.replace()
        </script>
	<!--////////////Theme Core scripts End/////////////////-->

	<!--Search email -->
	<script src="/resources/assets/vendor/list.min.js"></script>
	<script>
            var options = {
  valueNames: [ 'name', 'label', ]
};

var userList = new List('mailList', options);
        </script>

	<!--Compose message editor-->
	<script src="/resources/assets/vendor/quill.min.js"></script>
	<script>
    var initQuill = document.querySelectorAll("[data-quill]");
    initQuill.forEach((qe) => {
        const qt = {
            ...(qe.dataset.quill ? JSON.parse(qe.dataset.quill) : {}),
            modules: {
                toolbar: [
                [{ header: [1, 2, false] }],
                    ["bold", "underline"],
                    ["link", "image"]
                ]
            },
            theme: "snow"
        };
        new Quill(qe, qt);
    });
</script>

	<script type="text/javascript">
    	const sidebarLink = document.querySelectorAll('.Sidebar-link');
    	console.log(sidebarLink);
    	
    	console.log(sidebarLink[4]);
    	
    	sidebarLink[4].className += ' current';
    </script>
    
        <script type="text/javascript">
		var seq = $("input:hidden[name=hydcSeq]");


		goFileView = function(seq) {
			alert(seq);
			$("#hymmSeq").val(seq);
			$("#formList").attr("action", "/file/fileView");
			$("#formList").submit();
		};
		goFileForm = function(seq) {
			$("#formList").attr("action", "/file/fileForm");
			$("#formList").submit();
		};
		</script>


</body>

</html>
