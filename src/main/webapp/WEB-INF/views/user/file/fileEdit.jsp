<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<% pageContext.setAttribute("br", "\n"); %>
<% pageContext.setAttribute("replaceChar", "\n"); %>

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
	href="/resource/assets/vendor/css/choices.min.css">

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
<link rel="stylesheet" href="assets/css/style.min.css"
	id="switchThemeStyle">
	
<!-- 주소창아이콘 -->
<link rel="shortcut icon" href="https://ifh.cc/g/hTTRML.png" type="image/x-icon" />
	
</head>
<style>
.addScroll {
	overflow-y: auto;
	height: 180px;
	background-color: gainsboro;
}

.input-file-button {
	padding: auto;
	cursor: pointer;
}
</style>
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
<!-- 				<div class="toolbar py-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-4 mb-lg-0">
								<h3 class="mb-2">문서</h3>
							</div>
						</div>
					</div>
				</div> -->
				<!--//Page Toolbar End//-->

				<form id="formEdit" name="formEdit" method="post"
					action="/file/fileUpdt" enctype="multipart/form-data">

					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>"> 
						<input type="hidden" id="hydcSeq" name="hydcSeq" value="<c:out value="${vo.hydcSeq}"/>"> 
						<input type="hidden" id="hymmSeq" name="hymmSeq" value="<c:out value="${vo.hymmSeq}"/>">
						<input type="hidden" id="shHydcDelNy" name="shHydcDelNy"
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
									href="javascript:goFileView('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');"
									data-bs-placement="top" data-bs-toggle="tooltip" title="돌아가기"
									class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
									<i data-feather="arrow-left" class="fe-1x me-lg-1"></i> <span
									class="d-none d-lg-inline-block">Back</span>
								</a>

								<div class="btn-group btn-group-sm"></div>
							</div>

						</div>
					</div>
					<!--Email Header-->
									
									
					<!--Inbox Details-->
					<div class="px-4 position-relative px-lg-8 mb-4 h-100 flex-grow-1">
						<div class="card h-100">
							<div class="card-header">
								<div class="row justify-content-md-between">


											<div class="col-md-12 mb-3">
												제목
												<input type="text" class="form-control" name="hydcTitle" placeholder="" 	value="<c:out value="${item.hydcTitle}"/>" required>
												<div class="invalid-feedback">제목을 입력해주세요.</div>
											</div>

											<div class="col-md-12 mb-3">
												<div class="form-floating">
													내용
													<input type="text" class="form-control" style="height: 100px" autocomplete="off" id="hydcText" name="hydcText" value="	<c:out value="${fn:replace(item.hydcText, br, '<br/>')}"
										escapeXml="false" />" required>
													<div class="invalid-feedback">내용을 입력해주세요.</div>
												</div>
											</div>
											
								
								
							<!--Attachment image-->
								<div class="row">
									<div class="col-md-12 mb-3">
										<label for="file0" class="form-label input-file-button"> 첨부파일 <i data-feather="paperclip" class="fe-1x "></i>
										</label>
					
										<input id="file0" name="file0" type="file" multiple="multiple" style="display: none;" onChange="upload(0, 3);"
										<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>>
										
										<div class="addScroll">
											<ul id="ulFile0" class="list-group"></ul>
										</div>
									</div>
								</div>
								<!--Attachment image-->
								

								
							
								<div class="row text-center" style="width: 100%">
									<div style="width: 100%; float: none; margin: 0 auto">
						
										<a class="btn btn-primary ms-2"
											href="javascript:goFileUpdt('<c:out value="${item.hydcSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shHydcOption}"/>','<c:out value="${vo.shHydcValue}"/>');">저장</a>
									</div>
									<br> <br>
								</div>
							</div>
						</div>
					</div>

				</form>
			</main>
		</div>
	</div>

	<!--//Page content End//-->

	<!--//Page-footer//-->
	<footer class="pb-4 px-4 px-lg-8">
		<div class="container-fluid px-0">
			<span class="d-block lh-sm small text-muted text-end">&copy; <script>
				document.write(new Date().getFullYear())
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


	<script src="/resources/common/js/common.js"></script>
	<script src="/resources/common/js/commonXdmin.js"></script>
	<script src="/resources/common/js/constantsXdmin.js"></script>
	<script type="text/javascript">
	
		upload = function(seq, div) {

			$("#ulFile" + seq).children().remove();

			var fileCount = $("input[type=file]")[seq].files.length;

			if (checkUploadedTotalFileNumber(fileCount, seq) == false) {
				return false;
			}

			var totalFileSize;
			for (var i = 0; i < fileCount; i++) {
				if (div == 1) {
					if (checkUploadedFileExt($("input[type=file]")[seq].files[i].name, seq) == false) {
						return false;
					}
				} else if (div == 2) {
					if (checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {
						return false;
					}
				} else if (div == 3) {
					if (checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {
						return false;
					}
				} else {
					return false;
				}

				if (checkUploadedEachFileSize(
						$("input[type=file]")[seq].files[i].name, seq) == false) {
					return false;
				}
				totalFileSize += $("input[type=file]")[seq].files[i].size;
			}
			if (checkUploadedTotalFileSize(totalFileSize, seq) == false) {
				return false;
			}

			for (var i = 0; i < fileCount; i++) {
				addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
			}
		}

		addUploadLi = function(seq, index, name) {

			var ul_list = $("#ulFile0");

			li = '<li id= "li_'+ seq +'_' + index + '"class="list-group-item d-flex justify-content-between align-items-center"> ';
			li = li + name;
			li = li + '<span style="cursor : pointer;" class="badge bg-danger rounded-pill" onClick="delLi(' + seq + ',' + index + ')">X</span>';
			li = li + '</li>';

			$("#ulFile" + seq).append(li);
		}

		delLi = function(seq, index) {
			$("#li_" + seq + "_" + index).remove();
		}

	</script>
	
	<script type="text/javascript">
	
		/// 추가된 부분 2022-06-11 start
		function setDocumentType(){
			
			const file = document.getElementById("file0");

			let fileNy = false;
			let imgNy = false;
			
			for(var i = 0; i < file.files.length; i++){
				if (checkUploadedFileExt2(file.files[i].name) == true) {
					fileNy = true;
				}
				if (checkUploadedImageExt2(file.files[i].name) == true) {
					imgNy = true;
				}
			}
			
			if(fileNy && imgNy) {
				$("#hydcType").val("1");
			} else if(fileNy) {
				$("#hydcType").val("2");
			} else if(imgNy) {
				$("#hydcType").val("3");
			} else {
				$("#hydcType").val("0");
			}
			
		}
		</script>
	
	<script type="text/javascript">
		const sidebarLink = document.querySelectorAll('.Sidebar-link');
		console.log(sidebarLink);

		console.log(sidebarLink[4]);

		sidebarLink[4].className += ' current';
	</script>


	<script type="text/javascript">
		goFileView = function(seq) {
			$("#hydcSeq").val(seq)
			$("#formEdit").attr("action", "/file/fileView");
			$("#formEdit").submit();
		};

		goFileUpdt = function(seq) {
			$("#formEdit").attr("action", "/file/fileUpdt");
			$("#formEdit").submit();
		};
	</script>

<%@include file="../include/pageScripts.jsp"%>


</body>

</html>
