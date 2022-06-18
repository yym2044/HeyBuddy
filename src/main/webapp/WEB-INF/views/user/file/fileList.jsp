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
<style type="text/css">

td{
vertical-align: middle;
height:30px;
}

</style>



<body>
	<!-- include 처리 1번 -->
	<%@include file="../include/loader.jsp"%>

	<!-- include 처리 2번 -->
	<%@include file="../include/pageSideBar.jsp"%>

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


		<!--Email Header-->
		<div class="top-0 mb-2 px-4 px-lg-8 ">
			<div
				class="d-flex align-items-center pb-2 flex-row justify-content-between">

				<div class="flex-grow-1">


					<div data-bs-placement="top" data-bs-toggle="tooltip" title="삭제"
						class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
						<i class="bi bi-trash-fill" data-bs-toggle="modal"
							data-bs-target="#btnModalNelete"></i>
					</div>
					<a
						href="javascript:goFileForm('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
								'<c:out value="${vo.shHydcValue}"/>');"
						data-bs-placement="top" data-bs-toggle="tooltip" title="등록"
						class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
						<i class="bi bi-pencil-fill"></i>
					</a> <a
						href="javascript:goFileListTemp('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
							'<c:out value="${vo.shHydcValue}"/>');"
						data-bs-placement="top" data-bs-toggle="tooltip" title="임시저장리스트"
						class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
						<i class="bi bi-bookmark-check-fill"></i>
					</a>


					<div class="modal" id="btnModalNelete" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="modal-title">
										<i class="fas fa-exclamation-circle"></i>삭제 확인!
									</h5>
									<!-- 	<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button> -->
								</div>
								<div class="modal-body">정말 삭제하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">취소</button>

									<a
										href="javascript:goFileMultiNelete
									('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>',
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



		<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
			<div class="col-md-12 mx-auto">
				<div class="sticky-top top-0">
					<!--Search form-->
					<div class="pb-5">
						<%-- 				<select class="form-select form-select" name="shHydcOption"
										id="shHydcOption" style="">
										<option value="">검색구문
											<option value="1"
											<c:if test="${vo.shHydcOption eq 1 }"> selected</c:if>>제목
										<option value="2"
											<c:if test="${vo.shHydcOption eq 2 }"> selected</c:if>>내용			
										<option value="3"
											<c:if test="${vo.shHydcOption eq 3 }"> selected</c:if>>작성자
										<option value="3"
											<c:if test="${vo.shHydcOption eq 4 }"> selected</c:if>>파일명
										
									</select> --%>
						<input class="form-control form-control" type="text"
							name="shHydcValue" id="shHydcValue"
							placeholder=" 검색어를입력해주세요(제목,내욕,파일명,작성자)  UI공사중이에요~~">
						<button class="btn btn-primary" type="submit" name="search"
							id="btnSearch" style="display: none;"></button>
					</div>
				</div>
			</div>
		</div>

		<!--//Page content//-->

		<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
			<div class="container-fluid px-0">
				<div class="col-12">
					<div class="card" style="height:430px;">
						<div class="table-responsive">
							<table class=" table-nowrap mb-0 table table-borderless">

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
												<tbody id="">
													<tr>
														<td><input type="checkbox" id="checkboxSeq"
															name="checkboxSeq"
															value="<c:out value="${item.hydcSeq}" />"></td>

														<td class=""><c:choose>
																<c:when test="${empty item.uuidFileName}">
																	<img style="width: 50px; height: 50px;"
																		src="/resources/user/images/profileDefault.png"
																		class="rounded-circle" alt="">
																</c:when>
																<c:otherwise>
																	<img style="width: 30px; height: 30px;"
																		src="<c:out value="${item.path}"/><c:out value="${item.uuidFileName}"/>"
																		class="avatar rounded-pill flex-shrink-0" />
																</c:otherwise>
															</c:choose></td>

														<td class="">
															<div class="mb-0 me-2 flex-shrink-0 name">
																<a href="#modalMember" data-bs-toggle="modal"> <c:out
																		value="${item.hymmName}" />
																</a>

																<!--   <span class="badge label bg-danger flex-shrink-0 rounded-pill ms-auto">Friends</span> -->
															</div>
														</td>

														<td class="">
															<p class="lh-sm text-truncate mb-0">
																<span class="fw-bolder me-2 me-lg-4"> <a
																	href="javaScript:goFileView(<c:out value="${item.hydcSeq}"/>, <c:out value="${item.hymmSeq}"/>)">
																		<c:out value="${item.hydcTitle}" />
																</a> <c:if
																		test="${item.hydcType eq 1 or item.hydcType eq 2}">
																		<i class="bi bi-paperclip"></i>
																		<!--  파일이면클립아이콘 -->
																	</c:if> <c:if
																		test="${item.hydcType eq 1 or item.hydcType eq 3}">
																		<i class="bi bi-image-fill"></i>
																		<!-- 사진이면이미지아이콘 -->
																	</c:if>
																	
																	<!-- 댓글카운트 -->
																<%-- 	 &nbsp;&nbsp;(<i data-feather="message-square"
																	class="fe-1x me-1 align-middle-sm"></i> <span><c:out
																			value="${vo.totalRowsC}" />)</span> --%>

																</span>
															</p>

														</td>


														<td class=""><fmt:formatDate
																pattern="yyyy-MM-dd hh:mm" value="${item.regDateTime }" /></td>


													</tr>
												</tbody>
											</c:forEach>
										</c:otherwise>
									</c:choose>
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
				</div>
			</div>
		</div>

		<!--//Page content End//-->


		<!--//Page-footer//-->
		<footer class="pb-4 px-4 px-lg-8">
			<div class="container-fluid px-0">
				<span class="d-block lh-sm small text-muted text-end"> &copy;
					<script>
						document.write(new Date().getFullYear())
					</script> . Hey, Buddy All rights reserved.
				</span>
			</div>
		</footer>
		<!--/.Page Footer End-->
	</main>
	<!--///////////Page content wrapper End///////////////-->



	<!--////////////Theme Core scripts Start/////////////////-->
	<script src="/resources/assets/vendor/feather.min.js"></script>
	<script src="/resources/assets/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>
	<!--////////////Theme Core scripts End/////////////////-->

	<!--Search email//기본템플릿인데 나중에 활용해보기 -->
	<script src="/resources/assets/vendor/list.min.js"></script>
	<script>
		var options = {
			valueNames : [ 'name', 'label', ]
		};

		var userList = new List('mailList', options);
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
			$("#hymmSeq").val(hymmSeq);
			$("#hydcSeq").val(hydcSeq);
			$("#formList").attr("action", "/file/fileView");
			$("#formList").submit();
		};
		goFileForm = function(seq) {
			$("#formList").attr("action", "/file/fileForm");
			$("#formList").submit();
		};
		goFileListTemp = function() {
			$("#formList").attr("action", "/file/fileListTemp");
			$("#formList").submit();
		};
		/* 				goFileMultiNelete = function(seq) {
		 $("#formList").attr("action", "/file/fileMultiNele");
		 $("#formList").submit();
		 }; */
	</script>

	<script>
		var goFileMultiNelete = "/file/fileMultiNele";
		var seq = $("input:hidden[name=hydcSeq]");
		var form = $("form[name=formList]");
		var checkboxSeqArray = [];

		$("#btnModalNelete").on("click", function() {
			$("input[name=checkboxSeq]:checked").each(function() { // check된것을 찾고 체크된 값만 넘김
				checkboxSeqArray.push($(this).val()); // check 해당된 값을 담는다.
			});

			$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
			$("#modalConfirm").modal("hide");
			form.attr("action", goFileMultiNelete).submit();
		});
	</script>

	<!-- 			<script type="text/javascript">
				$("#checkboxAll").click(function() { //전체선택 인데 ui구성상 전체선택은 뺴버림..ㅎㅎ
					if ($("#checkboxAll").is(":checked"))
						$("input[name=checkboxSeq]").prop("checked", true);
					else
						$("input[name=checkboxSeq]").prop("checked", false);
				});

				$("input[name=checkboxSeq]:checked").each(function() {
					var total = $("input[name=checkboxSeq]").length;
					var checked = $("input[name=checkboxSeq]:checked").length;
					if (total != checked)
						$("#checkboxAll").prop("checked", false);
					else
						$("#checkboxAll").prop("checked", true);
				});
			</script> -->



	<%@include file="../include/pageScripts.jsp"%>
</body>

</html>
