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

<!--Simplebar css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
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


				<!-- post방식 -->
				<form id="formList" name="formList" method="post" action="/file/fileList">
					<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<input type="hidden" id="checkboxSeqArray" name="checkboxSeqArray">
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" id="hydcSeq" name="hydcSeq">
					<input type="hidden" id="hymmSeq" name="hymmSeq">
				</form>

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

				<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
					<div class="container-fluid px-0">
						<div class="row">
							<div class="col-12">
								<div class="card" style="min-height: 490px;">
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											<div style="height: 490px;" class="d-flex align-items-center justify-content-center">
												<div class="text-center">
													<h1 class="d-block">등록된 문서가 없습니다</h1>
													<img src="/resources/user/images/cuteOwl.png" style="width: 200px;">
												</div>
											</div>
										</c:when>
										<c:otherwise>



											<!--Email Header-->
											<div class="px-4 px-lg-8 pb-2 position-sticky top-0 pt-4 z-index-fixed">
												<div class="rounded-3 w-100 ps-md-3 top-0">
													<div class="row align-items-center mx-n2">
														<div class="col-md-6 col-xl-7 px-2 order-last">
															<div class="d-flex align-items-center ps-3 ps-md-0">
																<div class="form-check mb-0 me-2">
																	<input type="checkbox" class="form-check-input" id="check_all">
																	<label for="check_all" class="form-check-label"></label>
																</div>

																<!--Selected mails action-->
																<div class="d-flex align-items-center">

																	<div class="btn-group btn-group-sm">

																		<a href="#!" class="btn border hover-bg-secondary size-30 p-0 d-flex align-items-center justify-content-center">
																			<i data-feather="trash-2" class="fe-1x"></i>
																		</a>

																	</div>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>





											<div class="flex-grow-1 overflow-hidden pe-4">

												<!--Inbox mail list-->
												<div class="list-group px-4 px-lg-8 mb-4 list">

													<c:forEach items="${list}" var="item" varStatus="status">
														<!--Inbox-item-->
														<div class="list-group-item list-group-item-action">
															<div class="d-flex align-items-center">

																<!--check-->
																<div class="form-check shrink-0 mb-0 me-1 position-relative">
																	<input type="checkbox" class="form-check-input" id="check_1">
																	<label for="check_1" class="form-check-label"></label>
																</div>
																<div class="form-star shrink-0 mb-0 me-2 d-md-flex d-none position-relative">
																	<input type="checkbox" class="form-star-input" id="starred_1">
																	<label for="starred_1" class="form-star-label"></label>
																</div>
																<div class="shrink-0 d-flex flex-grow-1 ms-1 overflow-hidden align-items-center justify-content-start">
																	<div class="size-35 me-2 me-lg-3 d-flex align-items-center justify-content-center rounded-circle flex-shrink-0 overflow-hidden">


																		<label for="profilePhoto" style=""> <c:choose>
																				<c:when test="${empty uploaded.uuidFileName}">
																					<img style="width: 100%; height: 100%;" src="/resources/user/images/profileDefault.png" class="rounded-circle" alt="">
																				</c:when>
																				<c:otherwise>
																					<img style="width: 100px; height: 100px;" src="<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>" class="avatar rounded-pill flex-shrink-0" />
																				</c:otherwise>
																			</c:choose>
																		</label>

																	</div>

																	<!--name class for search results-->
																	<div class="d-flex align-items-center mb-1">
																		<div class="mb-0 me-2 flex-shrink-0 name">
																			<a href="#modalMember" data-bs-toggle="modal">
																				<c:out value="${item.hymmName}" />
																			</a>
																		</div>
																		<!--   <span class="badge label bg-danger flex-shrink-0 rounded-pill ms-auto">Friends</span> -->
																	</div>
																	<p class="small fw-bold mb-0"></p>
																	<p class="lh-sm text-truncate mb-0">
																		<span class="fw-bolder me-2 me-lg-4">
																			<a href="javaScript:goFileView(<c:out value="${item.hydcSeq}"/>, <c:out value="${item.hymmSeq}"/>)">
																				<c:out value="${item.hydcTitle}" />
																			</a>
																		</span>
																	</p>

																	<!--Time-->
																	<div>
																		<span class="block small text-muted">
																			<fmt:formatDate value="${item.regDateTime }" />
																		</span>
																	</div>



																	<%-- 														<div class="flex-shrink-0">
															<div class="d-flex flex-column align-items-end">
																<!--New indicator-->
																<div class="d-flex align-items-end">
																	<i data-feather="paperclip" class="fe-1x "></i>

																</div>

																<!--Time-->
																<div>
																	<span class="block small text-muted"><fmt:formatDate
																			value="${item.regDateTime }" /></span>
																</div>

															</div>
														</div>
 --%>

																</div>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
										</c:otherwise>
									</c:choose>


									<!--포스트 페이징과 버튼 -->
									<div class="row text-center" style="width: 100%">
										<div style="width: 100%; float: none; margin: 0 auto">
											<br>
											<br>
											<nav aria-label="...">
												<ul class="pagination  justify-content-center">
													<c:if test="${vo.startPage gt vo.pageNumToShow}">
														<li class="page-item"><a class="page-link" href="javascript:goFileList( <c:out value='${vo.startPage - 1}'/>);"> Previous</a></li>
													</c:if>
													<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
														<c:choose>
															<c:when test="${i.index eq vo.thisPage}">
																<li class="page-item active"><a class="page-link" href="javascript:goFileList( <c:out value='${i.index}'/>);">${i.index}</a></li>
															</c:when>
															<c:otherwise>
																<li class="page-item"><a class="page-link" href="javascript:goFileList( <c:out value='${i.index}'/>);">${i.index}</a></li>
															</c:otherwise>
														</c:choose>
													</c:forEach>
													<c:if test="${vo.endPage ne vo.totalPages}">
														<li class="page-item"><a class="page-link" href="javascript:goFileList( <c:out value='${vo.endPage + 1 }'/>);">Next</a></li>
													</c:if>
												</ul>
											</nav>

											<a href="javascript:goFileForm('<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');">
												<button type="button" id="goFileForm" class="btn btn-success">문서등록</button>
											</a>

											<button type="button" id="" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#btnModalNelete">삭제</button>

											<div class="modal fade" id="btnModalNelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="modal-title">
																<i class="fas fa-exclamation-circle"></i>삭제 확인!
															</h5>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">정말 삭제하시겠습니까?</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>

															<a href="javascript:goFileMultiNelete
									('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shHydcOption}"/>',
									'<c:out value="${vo.shHydcValue}"/>' );">
																<button type="button" class="btn btn-primary" id="">확인</button>
															</a>
														</div>
													</div>
												</div>
											</div>




											<br>
											<br>


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






	<div class="modal fade" id="modalMember" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content border-0">

				<div class="card">

					<!--Card body-->
					<div class="card-body">
						<!--Contact-->
						<div class="text-center">

							<!-- Avatar -->
							<a href="#!" class="avatar mb-3 mx-auto xl rounded-cirlce d-block">
								<img src="/resources/assets/media/avatars/02.jpg" alt="..." class="img-fluid rounded-circle">
							</a>
							<!-- Title -->
							<h5 class="mb-0">
								<a href="#!" class="text-reset"> 정미림</a>
							</h5>

							<!-- Email -->
							<p class="small text-muted mb-0">
								<a class="d-block text-reset text-truncate" href="#!mailto:noah.pierre@company.com"> noah.pierre@mail.com</a>
							</p>

							<!-- Phone -->
							<p class="small text-muted mb-3">
								<a class="d-block text-reset text-truncate" href="#"> 010-1234-5678</a>
							</p>


							<!-- Split dropdown user button -->
							<div class="btn-group">
								<button type="button" class="btn btn-outline-gray text-body">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-square fe-1x me-2 align-middle">
													<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path></svg>
									Send Message
								</button>
								<button type="button" class="btn btn-outline-gray text-body dropdown-toggle-split rounded-end" data-bs-toggle="dropdown" aria-expanded="false">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical fe-1x">
													<circle cx="12" cy="12" r="1"></circle>
													<circle cx="12" cy="5" r="1"></circle>
													<circle cx="12" cy="19" r="1"></circle></svg>
								</button>
								<ul class="dropdown-menu dropdown-menu-end" style="">
									<li><a class="dropdown-item" href="#">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-info fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="12" y1="16" x2="12" y2="12"></line>
															<line x1="12" y1="8" x2="12.01" y2="8"></line></svg>
											View detail
										</a></li>
									<li><a class="dropdown-item" href="#">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-slash fe-1x align-middle me-2 opacity-50">
															<circle cx="12" cy="12" r="10"></circle>
															<line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
											Block contact
										</a></li>
								</ul>
							</div>
						</div>
					</div>
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
		
		goFileList = function(seq) {
			alert(seq);
			$("#thisPage").val(seq);
			$("#formList").submit();
		};
		
		goFileView = function(hydcSeq, hymmSeq) {
			alert(hymmSeq + "번 멤버가 올린 문서 " + hydcSeq + "번");
			$("#hydcSeq").val(hydcSeq);
			$("#hymmSeq").val(hymmSeq);
			$("#formList").attr("action", "/file/fileView");
			$("#formList").submit();
		}; 
		goFileForm = function(seq) {
			$("#formList").attr("action", "/file/fileForm");
			$("#formList").submit();
		};
		goFileMultiNelete = function(seq) {
			$("#formList").attr("action", "/file/fileMultiNele");
			$("#formList").submit();
		};
		</script>

	<script type="text/javascript">
		$("#checkboxAll").click(function() {  //전체선택
		if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
		else $("input[name=checkboxSeq]").prop("checked", false);
		});

		$("input[name=checkboxSeq]:checked").each(function() { 
			var total = $("input[name=checkboxSeq]").length;
			var checked = $("input[name=checkboxSeq]:checked").length;
			if(total != checked) $("#checkboxAll").prop("checked", false);
			else $("#checkboxAll").prop("checked", true);
		});
		</script>
</body>

</html>
