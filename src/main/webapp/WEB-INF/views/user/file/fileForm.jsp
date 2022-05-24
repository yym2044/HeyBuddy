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
<style>
.addScroll {
	overflow-y: auto;
	height: 90px;
	background-color: gainsboro;
}

.input-file-button {
	padding: auto;
	cursor: pointer;
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



				<form id="formList" name="formList" method="post" action="/file/fileInst" enctype="multipart/form-data">

					<!-- 기본값히든처리 -->
						<input type="hidden" id="hyspSeq" name="hyspSeq" value="${vo.hyspSeq}">
						<input type="hidden" id="hymmSeq" name="hymmSeq" value="${vo.hymmSeq}">
						
					 	<input type="hidden" id="hyspSeq" name="hyspSeq" value="<c:out value="${vo.hyspSeq}"/>"> 
						<input type="hidden" id="hydcSeq" name="hydcSeq" value="<c:out value="${vo.hydcSeq}"/>"> 
						<input type="hidden" id="hymmSeq" name="hymmSeq" value="<c:out value="${vo.hymmSeq}"/>"> 
						
						<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>"> 
						<input type="hidden" id="shHydcTitle" name="shHydcTitle" value="<c:out value="${vo.shHydcTitle}"/>"> 
						<input type="hidden" id="shHydcOption" name="shHydcOption" value="<c:out value="${vo.shHydcOption}"/>"> 
						<input type="hidden" id="shHydcValue" name="shHydcValue" value="<c:out value="${vo.shHydcValue}"/>">

					<!--Email Header-->
					<div class="position-sticky top-0 mb-2 px-4 px-lg-8 z-index-fixed">
						<div
							class="d-flex align-items-center pb-2 flex-row justify-content-between">

							<div class="flex-grow-1">
								<a href="fileList" data-bs-placement="top"
									data-bs-toggle="tooltip" title="리스트"
									class="border text-body hover-bg-secondary btn btn-sm"> <i
									data-feather="arrow-left" class="fe-1x me-lg-1"></i> <span
									class="d-none d-lg-inline-block">Back</span>
								</a> <a href="fileListTemp" data-bs-placement="top"
									data-bs-toggle="tooltip" title="임시저장불러오기"
									class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
									<i class="bi bi-pencil-fill"></i>
								</a>

							</div>
						</div>
					</div>



					<!--Inbox Details-->
					<div class="px-4 position-relative px-lg-8 mb-4 h-100 flex-grow-1">
						<div class="card h-100">
							<div class="card-header">
								<div class="row justify-content-md-between">
									<div class="col-md d-flex mb-4 mb-md-0 align-items-center">


										<div class="col-md-12 mb-3">
											공유자추가 <select multiple class="form-control"
												data-choices='{"silent": true,"removeItems": "true","removeItemButton": "true"}'>
												<option value="1">김나리</option>
												<option value="2">윤영민</option>
												<option value="3">정미림</option>
												<option value="4">이건우</option>

											</select>

											<div class="col-md-12 mb-3">
												제목 <input type="text" class="form-control" name="hydcTitle"
													placeholder="" value="" required>
												<div class="invalid-feedback">제목을 입력해주세요.</div>
											</div>

											<div class="col-md-12 mb-3">
												<div class="form-floating">
													내용 <input type="text" class="form-control"
														style="height: 100px" autocomplete="off" id="hydcText"
														name="hydcText" value="" required>
													<div class="invalid-feedback">내용을 입력해주세요.</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="card-body flex-grow-1">

								<!--Attachment image-->
								<div class="row">
									<div class="col-md-12 mb-3">
										<label for="file" class="form-label input-file-button">
											첨부파일 수정중 <i data-feather="paperclip" class="fe-1x "></i>
										</label>
													
										 <input class="form-control" id="file" name="file0"
											type="file" multiple="multiple" style="display: none;"
											onChange="upload(0,2);"> 
										
										
							<!-- 			
										 <input class="form-control" id="file0" name="file0"
											type="file" multiple="multiple" style="display: none;"
											onChange="upload(0,2);"> 
										
										 <input class="form-control"
											id="file1" name="file1" type="file" multiple="multiple"
											style="display: none;" onChange="upload(1,1);"> -->

										<div class="addScroll">
											<ul id="ulFile0" class="list-group"></ul>
									
						<!-- 					<ul id="ulFile1" class="list-group"></ul> -->
										</div>
									</div>
								</div>

							</div>
							<div class="row text-center" style="width: 100%">
								<div style="width: 100%; float: none; margin: 0 auto">

									<a href="javascript:goFileListTemp();">
										<button type="button" class="btn btn-outline-secondary">임시저장</button>
									</a>

									<button type="submit" class="btn btn-primary ms-2"
										id="btnSubmit">등록</button>

								</div>

								<br> <br>

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

	<!--Compose message editor-->
	<!--  <script src="assets/vendor/quill.min.js"></script>
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
</script>  -->

	<script type="text/javascript">
    	const sidebarLink = document.querySelectorAll('.Sidebar-link');
    	console.log(sidebarLink);
    	
    	console.log(sidebarLink[4]);
    	
    	sidebarLink[4].className += ' current';
    </script>

	<script type="text/javascript">
					goFileList = function() {
						$("#formList").attr("action", "/file/fileList");
						$("#formList").submit();
					};
					goFileListTemp = function() {
						$("#formList").attr("action", "/file/fileListTemp");
						$("#formList").submit();
					};
					goFileView = function() {
						$("#formList").attr("action", "/file/fileView");
						$("#formList").submit();
					};
		</script>


	<!-- 프로필사진 이미지 프리뷰 바꾸는 script! 링크걸어서 사용해도 될 듯 -->
	<script type="text/javascript">
	let profileInput = document.getElementById("file");
	let img = document.querySelector('label[for=file] img')
	
	profileInput.onchange = (e) => {
		
		var ext = $("#file")[0].files[0].name.split('.').pop().toLowerCase();
		if(extArrayImage.indexOf(ext) == -1){
			alert("허용된 확장자가 아닙니다.");
			return false;
		}
		
		img.classList.add('preview');
		img.src = URL.createObjectURL(e.target.files[0]);
	}
	</script>

	<script type="text/javascript">
		
		upload = function(seq,div){
			
		$("#ulFile"+ seq).children().remove();
		
		var fileCount = $("input[type=file]")[seq].files.length;
		
		if(checkUploadedTotalFileNumber(fileCount,seq) == false) {return false;}
		
		var totalFileSize;
		for (var i = 0; i < fileCount; i++){
			if(div == 1){
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name,seq)==false) {return false;}
			}else if (div == 2){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name,seq)==false) {return false;}
			}else{
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name,seq)==false) {return false;}
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		if(checkUploadedTotalFileSize(totalFileSize,seq)==false) {return false;}
		
		for (var i = 0 ; i<fileCount ; i ++){
			addUploadLi(seq,i,$("input[type=file]")[seq].files[i].name);
		}
		}	
		
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id= "li_  '+ seq +'_' + index + ' "class="list-group-item d-flex justify-content-between align-items-center"> ';
			li = li + name; 
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi(' + seq + ',' +  index + ')"><i class="fa-solid fa-x" style="cursor : pointer;"></i></span>';
			li = li + '</li>';

			$("#ulFile" + seq).append(li);
		}
		
			delLi = function (seq,index){
			$("#li_" + seq +"_"+index).remove();
		}
			
		addUploadLi = function (seq, index, name){
	
			var ul_list = $("#ulFile1");
			
			li = '<li id="li_'+seq+'_'+index+'"class="list-group-item d-flex justify-content-between align-items-center"> ';
			li = li + name; 
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+  index +')"><i class="fa-solid fa-x" style="cursor : pointer;"></i></span>';
			li = li + '</li>';

			$("#ulFile"+seq).append(li);
		}
		
			delLi = function(seq,index){
			$("#li_" +seq+"_"+index).remove();
		}
			
			
		</script>


</body>

</html>
