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


<!--Page style = Date range picker-->
<link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />



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
	<!--////////////////// PreLoader Start//////////////////////-->
	<div class="loader">
		<!--Placeholder animated layout for preloader-->
		<div class="d-flex flex-column flex-root">
			<div class="page d-flex flex-row flex-column-fluid">

				<!--Sidebar start-->
				<aside class="page-sidebar aside-dark placeholder-wave">
					<div class="placeholder col-12 h-100 bg-gray"></div>
				</aside>
				<div class="page-content d-flex flex-column flex-row-fluid">
					<div class="content flex-column p-4 pb-0 d-flex justify-content-center align-items-center flex-column-fluid position-relative">
						<div class="w-100 h-100 position-relative d-flex align-items-center justify-content-center">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-loader spinner-grow  me-2">
								<line x1="12" y1="2" x2="12" y2="6" />
								<line x1="12" y1="18" x2="12" y2="22" />
								<line x1="4.93" y1="4.93" x2="7.76" y2="7.76" />
								<line x1="16.24" y1="16.24" x2="19.07" y2="19.07" />
								<line x1="2" y1="12" x2="6" y2="12" />
								<line x1="18" y1="12" x2="22" y2="12" />
								<line x1="4.93" y1="19.07" x2="7.76" y2="16.24" />
								<line x1="16.24" y1="7.76" x2="19.07" y2="4.93" /></svg>
							<div>
								<span>Loading...</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--////////////////// /.PreLoader END//////////////////////-->

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">
			<!--///////////Page sidebar begin///////////////-->
			<aside class="page-sidebar">
				<div class="h-100 flex-column d-flex justify-content-start">

					<!--Aside-logo-->
					<div class="aside-logo d-flex align-items-center flex-shrink-0 justify-content-start px-5 position-relative">
						<a href="memberList" class="d-block">
							<div class="d-flex align-items-center flex-no-wrap text-truncate">
								<!--Sidebar-icon-->
								<img src="/resources/user/images/xdminHeyBuddy.PNG" alt="..." width="200px">
							</div>
						</a>
					</div>
					<!--Aside-Menu-->
					<div class="aside-menu px-3 my-auto" data-simplebar>
						<nav class="flex-grow-1 h-100" id="page-navbar">
							<!--:Sidebar nav-->
							<ul class="nav flex-column collapse-group collapse d-flex">

								<li class="nav-item"><a href="memberList" class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic">
											<i data-feather="user" class="fe-1x"></i>
										</span>
										<!--Sidebar nav text-->
										<span class="sidebar-text"> 멤버 </span>
									</a></li>




							</ul>
					</div>
			</aside>
			<!--///////////Page Sidebar End///////////////-->

			<!--///Sidebar close button for 991px or below devices///-->
			<div class="sidebar-close d-lg-none">
				<a href="#"></a>
			</div>
			<!--///.Sidebar close end///-->


			<!--///////////Page content wrapper///////////////-->
			<main class="page-content d-flex flex-column flex-row-fluid">




				<!--//Page Toolbar//-->
				<div align="right">
					<div class="toolbar pb-4 pt-4 px-4 px-lg-8">
						<div class="position-relative container-fluid px-0">
							<div class="col-sm-7 mb-3 mb-sm-0">
								<h3 class="mb-2">
									<c:out value="${sessName }" />
									님, 반갑습니다👋
								</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="dropdown border-top"></div>

				<!--//Page Toolbar End//-->



				<!--//Page Toolbar//-->
				<div class="toolbar pt-4 px-4 px-lg-8">
					<div class="position-relative container-fluid px-0">
						<div class="row align-items-center position-relative">
							<div class="col-md-8 mb-4 mb-md-0">
								<h4 class="mb-2">회원등록</h4>
							</div>
						</div>
					</div>
				</div>
				<!--//Page Toolbar End//-->


				<form id="formList" name="formList" method="post" action="/xdmin/memberInst" enctype="multipart/form-data">

					<!-- 기본값히든처리 -->
					<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
					<input type="hidden" id="hymmSeq" name="hymmSeq" value="<c:out value="${vo.hymmSeq}"/>">
					<input type="hidden" id="shHymmDelNy" name="shHymmDelNy" value="<c:out value="${vo.shHymmDelNy}"/>">
					<input type="hidden" id="shHymmName" name="shHymmName" value="<c:out value="${vo.shHymmName}"/>">
					<input type="hidden" id="shMemberOption" name="shMemberOption" value="<c:out value="${vo.shMemberOption}"/>">
					<input type="hidden" id="shMemberValue" name="shMemberValue" value="<c:out value="${vo.shMemberValue}"/>">

					<!--//Page content//-->
					<div class="content py-4 px-4 px-lg-8 d-flex flex-column-fluid">
						<div class="container-fluid px-0"></div>
					</div>

					<div align="center">
						<div class="col-lg-9 h-100">
							<!--card-->
							<div class="card mb-4">
								<div class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between"></div>


								<div class="table-responsive">
									<div class="text-center">
										<label for="profilePhoto" style="cursor: pointer;"> <img id="img" src="/resources//user/images/profileUpload.png" style="width: 70px;">
										</label>
										<input id="profilePhoto" name="file0" type="file" style="display: none;">
										<p class="p-2 fw-bold">프로필 사진</p>
									</div>
									
									<!-- 	<table id="setTable"
									class="table table-sm table-nowrap table-card text-center"> -->
									<table id="setTable" class="table table-sm table-nowrap table-card">
										<tr>
											<td class="tableText">아이디</td>
											<td>
												<input type="text" class="form-control" name="hymmId" placeholder="영문+숫자 10자이내" value="" required>
												<div class="invalid-feedback">아이디를 입력해주세요.</div>
											</td>
										</tr>
										<tr>
											<td class="tableText">비밀번호</td>
											<td>
												<input type="password" class="form-control" name="hymmPassword" placeholder="" value="" required>
												<div class="invalid-feedback">패스워드를 입력해주세요.</div>
											</td>
										</tr>
										<tr>
											<td>이름</td>
											<td>
												<input type="text" class="form-control" name="hymmName" placeholder="" value="" required>
												<div class="invalid-feedback">이름을 입력해주세요.</div>
											</td>
										</tr>
										<tr>
											<td>성별</td>
											<td>
												<select class="form-control" name="hymmGenderCd" required>
													<option value="1">남성</option>
													<option value="2">여성</option>
												</select>
												<div class="invalid-feedback">성별 선택해주세요.</div>
											</td>
										</tr>
										<tr>
											<td>휴대전화</td>
											<td>
												<input type="text" class="form-control" name="hymmNumber" placeholder="' - '제외" required>
												<div class="invalid-feedback">휴대폰번호를 입력해주세요.</div>
											</td>
										</tr>

										<tr>
											<td>이메일</td>
											<td>
												<input type="text" class="form-control" name="hymmEmail" placeholder="you@example.com" required>

												<div class="invalid-feedback">이메일을 입력해주세요.</div>
											</td>

										</tr>
										<tr>
											<td>생일</td>
											<td>
												<!-- <input type="text" class="form-control"> -->
												<div class="position-relative flex-grow-1">
													<!--Icon-->
													<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar fe-1x position-absolute start-0 top-50 translate-middle-y ms-2">
													<rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
													<line x1="16" y1="2" x2="16" y2="6"></line>
															<line x1="8" y1="2" x2="8" y2="6"></line>
															<line x1="3" y1="10" x2="21" y2="10"></line>
													</svg>
													<input id="hymmDob" name="hymmDob" type="text" class="form-control ps-6">
												</div>


											</td>
										</tr>
										<tr>
											<td>상태메세지</td>
											<td>
												<input type="text" class="form-control" name="hymmDesc" placeholder="상태메세지(50자 이하)">
											</td>
										</tr>
										<tr>
											<td>개인정보유효기간</td>
											<td>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="hymmSaveCd" value="6">
													<label class="form-check-label" for="flexRadioDefault5">1년 </label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="hymmSaveCd" value="7">
													<label class="form-check-label" for="flexRadioDefault6"> 2년 </label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="hymmSaveCd" value="8">
													<label class="form-check-label" for="flexRadioDefault6"> 3년 </label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="hymmSaveCd" value="9">
													<label class="form-check-label" for="flexRadioDefault6">5년 </label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="hymmSaveCd" value="10">
													<label class="form-check-label" for="flexRadioDefault6">10년 </label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="hymmSaveCd" value="11">
													<label class="form-check-label" for="flexRadioDefault6">탈퇴시 </label>
												</div>
											</td>
										</tr>
										<tr>
											<td>SMS 마케팅동의</td>
											<td>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="hymmSmsConsentYes" name="hymmSmsConsentNy" value="1">
													<label class="form-check-label" for="hymmSmsConsentYes"> Yes </label>
												</div>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="hymmSmsConsentNo" name="hymmSmsConsentNy" value="0">
													<label class="form-check-label" for="hymmSmsConsentNo"> No </label>
												</div>
											</td>
										</tr>
										<tr>
											<td>이메일 마케팅동의</td>
											<td>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="hymmEmailConsentYes" name="hymmEmailConsentNy" value="1">
													<label class="form-check-label" for="hymmEmailConsentYes"> Yes </label>
												</div>
												&nbsp;&nbsp;&nbsp;&nbsp;

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="hymmEmailConsentNo" name="hymmEmailConsentNy" value="0">
													<label class="form-check-label" for="hymmEmailConsentNo"> No </label>
												</div>
											</td>

										</tr>



									</table>
									<div class="text-center pb-4">
										<a class="btn btn-secondary" href="javascript:goMemberList();">목록</a>
										<button type="submit" class="btn btn-info" id="btnSubmit">등록</button>

									</div>
								</div>
							</div>
						</div>

					</div>
				</form>



				<!--//Page content End//-->

				<!--//Page-footer//-->
				<footer class="pb-4 px-4 px-lg-8">
					<div class="container-fluid px-0">
						<span class="d-block lh-sm small text-muted text-end">
							&copy;
							<script>
								document.write(new Date().getFullYear())
							</script>
							. Copyright
						</span>
					</div>
				</footer>
				<!--/.Page Footer End-->

				<!--///////////Page content wrapper End///////////////-->


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
					Inputmask().mask(
							document.querySelectorAll("[data-inputmask]"));
				</script>

				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
				<script src="/resources/common/js/validation.js"></script>
				<!-- jquery ui -->
				<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>



				<script type="text/javascript">
					goMemberList = function() {
						$("#formList").attr("action", "/xdmin/memberList");
						$("#formList").submit();
					};
				</script>


				<script>
					$(function() {
						$('#hymmDob').daterangepicker({
							singleDatePicker : true,
							showDropdowns : true,
							minYear : 1901,
							maxYear : parseInt(moment().format('YYYY'), 10)
						});
					});
				</script>

				<script type="text/javascript">
					$("#btnSubmit").on(
							"click",
							function() {

								$("#formList").attr("action",
										"/xdmin/memberInst").submit();

							});
				</script>

	<!-- **************************************업로드************************************** -->
			<!-- <script type="text/javascript">
				upload = function(seq, div) {

					$("#ulFile" + seq).children().remove();

					var fileCount = $("input[type=file]")[seq].files.length;

					if (checkUploadedTotalFileNumber(fileCount, seq) == false) {
						return false;
					}

					var totalFileSize;
					for (var i = 0; i < fileCount; i++) {
						if (div == 1) {
							if (checkUploadedAllExt(
									$("input[type=file]")[seq].files[i].name,
									seq) == false) {
								return false;
							}
						} else if (div == 2) {
							if (checkUploadedImageExt(
									$("input[type=file]")[seq].files[i].name,
									seq) == false) {
								return false;
							}
						} else {
							return false;
						}

						if (checkUploadedEachFileSize(
								$("input[type=file]")[seq].files[i].name,
								seq) == false) {
							return false;
						}
						totalFileSize += $("input[type=file]")[seq].files[i].size;
					}
					if (checkUploadedTotalFileSize(totalFileSize, seq) == false) {
						return false;
					}

					for (var i = 0; i < fileCount; i++) {
						addUploadLi(seq, i,
								$("input[type=file]")[seq].files[i].name);
					}
				}

				addUploadLi = function(seq, index, name) {

					var ul_list = $("#ulFile0");

					li = '<li id= "li_  '+ seq +'_' + index + ' "class="list-group-item d-flex justify-content-between align-items-center"> ';
					li = li + name;
					li = li
							+ '<span class="badge bg-danger rounded-pill" onClick="delLi('
							+ seq
							+ ','
							+ index
							+ ')"><i class="fa-solid fa-x" style="cursor : pointer;"></i></span>';
					li = li + '</li>';

					$("#ulFile" + seq).append(li);
				}

				delLi = function(seq, index) {
					$("#li_" + seq + "_" + index).remove();
				}

				addUploadLi = function(seq, index, name) {

					var ul_list = $("#ulFile1");

					li = '<li id="li_'+seq+'_'+index+'"class="list-group-item d-flex justify-content-between align-items-center"> ';
					li = li + name;
					li = li
							+ '<span class="badge bg-danger rounded-pill" onClick="delLi('
							+ seq
							+ ','
							+ index
							+ ')"><i class="fa-solid fa-x" style="cursor : pointer;"></i></span>';
					li = li + '</li>';

					$("#ulFile" + seq).append(li);
				}

				delLi = function(seq, index) {
					$("#li_" + seq + "_" + index).remove();
				}
			</script>
	 -->			
	
	<script src="/resources/common/js/commonXdmin.js"></script>
	<script src="/resources/common/js/constantsXdmin.js"></script>
	<script src="/resources/common/js/common.js"></script>
				
	<!-- 프로필사진 이미지 프리뷰 바꾸는 script! 링크걸어서 사용해도 될 듯 -->
	<script type="text/javascript">
	let profileInput = document.getElementById("profilePhoto");
	let img = document.querySelector('label[for=profilePhoto] img')
	
	profileInput.onchange = (e) => {
		
		var ext = $("#profilePhoto")[0].files[0].name.split('.').pop().toLowerCase();
		if(extArrayImage.indexOf(ext) == -1){
			alert("허용된 확장자가 아닙니다.");
			return false;
		}
		
		img.classList.add('preview');
		img.src = URL.createObjectURL(e.target.files[0]);
	}
	</script>
				
				

</body>

</html>

