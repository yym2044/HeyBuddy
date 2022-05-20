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

<!--Main style-->
<link rel="stylesheet" href="/resources/assets/css/style.min.css"
	id="switchThemeStyle">

<!-- Color Picker Css -->
<style type="text/css">

 .custom-radios div {
	 display: inline-block;
}
 .custom-radios input[type="radio"] {
	 display: none;
}
 .custom-radios input[type="radio"] + label {
	 color: #333;
	 font-family: Arial, sans-serif;
	 font-size: 14px;
}
 .custom-radios input[type="radio"] + label span {
	 display: inline-block;
	 width: 40px;
	 height: 40px;
	 margin: -1px 4px 0 0;
	 vertical-align: middle;
	 cursor: pointer;
	 border-radius: 50%;
   
	 border: 2px solid #fff;
	 box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.33);
	 background-repeat: no-repeat;
	 background-position: center;
	 text-align: center;
	 line-height: 44px;
}
 .custom-radios input[type="radio"] + label span img {
	 opacity: 0;
	 transition: all 0.3s ease;
}
 .custom-radios input[type="radio"]#color-1 + label span {
	 background-color: #2ecc71;
}

 .custom-radios input[type="radio"]#color-1:checked + label span {
	 box-shadow: 0 0 0 2px #2ecc71;
}
 .custom-radios input[type="radio"]#color-2 + label span {
	 background-color: #3498db;
}

 .custom-radios input[type="radio"]#color-2:checked + label span {
	 box-shadow: 0 0 0 2px #3498db;
}

 .custom-radios input[type="radio"]#color-3 + label span {
	 background-color: #f1c40f;
}

 .custom-radios input[type="radio"]#color-3:checked + label span {
	 box-shadow: 0 0 0 2px #f1c40f;
}

 .custom-radios input[type="radio"]#color-4 + label span {
	 background-color: #e74c3c;
}

 .custom-radios input[type="radio"]#color-4:checked + label span {
	 box-shadow: 0 0 0 2px #e74c3c;
}
 .custom-radios input[type="radio"]:checked + label span img {
	 opacity: 1;
}
 
</style>

<style type="text/css">
#setTable tr td {
	height: 70px;
}

#setTable tr {
	vertical-align: middle;
}
</style>
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
</head>
<body>

	<form id="spaceForm" method="post">
	
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
										<li class="breadcrumb-item">환경설정</li>
										<li class="breadcrumb-item">스페이스 환경</li>
										<li class="breadcrumb-item active">기본정보</li>
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
										<h3 class="card-title mb-md-0">기본정보</h3>

									</div>
									<h6 class="ps-4 mb-3">마이스페이스에 대한 기본 정보를 설정합니다.</h6>
									<div class="table-responsive">
										<table id="setTable"
											class="table table-sm table-nowrap table-card">

											<tr>
												<td>호스트</td>
												<td>
												<div class="d-flex align-items-center">
					                                <c:choose>
														<c:when test="${empty uuidFileName}">
															<img src="/resources/user/images/profileDefault.png" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
														</c:when>
														<c:otherwise>
															<img src="<c:out value="${path}"/><c:out value="${uuidFileName}"/>" class="avatar rounded-pill me-3 flex-shrink-0" alt="">
														</c:otherwise>
													</c:choose>
					                                <div>
					                                    <div class="h6 mb-0 lh-1"><c:out value="${sessName}"/> <c:out value="${sessEmail}"/></div>
					                                </div>
					                            </div>
												</td>
												<td></td>
												<!-- <td><button class="btn btn-info">변경하기</button></td> -->
											</tr>
											<tr>
												<td>마이스페이스 이름</td>
												<td colspan="2"><input name="hyspName" class="form-control" value="<c:out value="${hyspName}"/>"></td>
											</tr>
											<tr>
												<td>마이스페이스 아이디</td>
												<td colspan="2">__heybuddy@1649227056_3FF8122770C2CDE1D2321C959890155C__</td>
											</tr>
											<tr>
												<td>마이스페이스 로고</td>
												<td>
													<input id="spaceLogo" type="file" class="form-control" style="display: none;">
													<!-- <input id="spaceLogoText" type="text" class="form-control" readonly placeholder="이미지 권장 사이즈는 300 * 60 입니다. 배경화면은 투명으로 제작해주세요."> -->
													
													<div class="position-relative flex-grow-1 me-2 me-lg-4">
														<!--Img-->
														<span id="sidebarIcon2" class="sidebar-icon lh-1 text-white rounded-circle bg-success fw-bold fe-1x position-absolute start-0 top-50 translate-middle-y ms-2" style="width: 24px; height: 24px;"></span>
														<!-- <img id="sidebarLogoPreview" class="feather feather-search fe-1x position-absolute start-0 top-50 translate-middle-y ms-2" style="width: 24px; height: 24px;" src="/resources/user/images/profileDefault.png"> -->
														<input id="spaceLogoText" type="text" class="form-control ps-8" readonly placeholder="이미지 권장 사이즈는 300 * 60 입니다.">
													</div>
													
												</td>
												<td><label for="spaceLogo"><a class="btn btn-info">찾아보기</a></label></td>
											</tr>
											<tr>
												<td>스페이스 색상</td>
												<td colspan="2">
													<div class="custom-radios">
													  <div>
													    <input type="radio" id="color-1" name="hyspColorCd" value="14" <c:if test="${space.hyspColorCd eq 14 or empty space.hyspColorCd}">checked</c:if>>
													    <label for="color-1">
													      <span>
													        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" class="pb-2" />
													      </span>
													    </label>
													  </div>
													  
													  <div>
													    <input type="radio" id="color-2" name="hyspColorCd" value="15" <c:if test="${space.hyspColorCd eq 15}">checked</c:if>>
													    <label for="color-2">
													      <span>
													        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" class="pb-2" />
													      </span>
													    </label>
													  </div>
													  
													  <div>
													    <input type="radio" id="color-3" name="hyspColorCd" value="16" <c:if test="${space.hyspColorCd eq 16}">checked</c:if>>
													    <label for="color-3">
													      <span>
													        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" class="pb-2" />
													      </span>
													    </label>
													  </div>
													
													  <div>
													    <input type="radio" id="color-4" name="hyspColorCd" value="17" <c:if test="${space.hyspColorCd eq 17}">checked</c:if>>
													    <label for="color-4">
													      <span>
													        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" class="pb-2" />
													      </span>
													    </label>
													  </div>
													</div>
												</td>
											</tr>
											<tr>
												<td>서비스 탈퇴</td>
												<td colspan="2"><button class="btn btn-danger">서비스 탈퇴</button></td>
											</tr>

										</table>
										<div class="text-center pb-3">
											<button class="btn btn-lg btn-secondary me-1">원래대로</button>
											<button type="button" id="btnApply" data-bs-toggle="modal" data-bs-target="#saveModal" class="btn btn-lg btn-info">적용</button>
										</div>
										
										<!-- SaveModal -->
										<%@include file="../include/saveModal.jsp"%>
										
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
	<script>
            Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
        </script>
        
        
        
    <script type="text/javascript">
    
    let backUrl;
    
    $("input[name='hyspColorCd']").on("click", function(){
    	if($(this).val() == '14'){
    		backUrl = 1;
    		document.body.style.backgroundImage = "url('/resources/user/images/allround.jpg')";
    	} else if($(this).val() == '15'){
    		backUrl = 2;
    		document.body.style.backgroundImage = "url('/resources/user/images/allround2.png')";
    	} else if($(this).val() == '16'){
    		backUrl = 3;
    		document.body.style.backgroundImage = "url('/resources/user/images/allround3.jpg')";
    	} else if($(this).val() == '17'){
    		backUrl = 4;
    		document.body.style.backgroundImage = "url('/resources/user/images/allround4.png')";
    	}
    });
    
	$("#btnSubmit").on("click", function(){
		localStorage.setItem("backUrl", backUrl);
	});
    
    </script>
    
    <script type="text/javascript">
	const sidebarLink = document.querySelectorAll('.Sidebar-link');
	
	console.log(sidebarLink[6]);
	
	sidebarLink[5].className += ' current';
	</script>
	
	<script type="text/javascript">
	$("#spaceLogo").on("change", function(){
		$("#spaceLogoText").val($(this)[0].files[0].name);
	});
	</script>
    
    <script type="text/javascript">
	document.querySelector('#sidebarIcon2').innerText = "<c:out value="${hyspName}"/>".charAt(0);
	</script>
	
	<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
		$("#spaceForm").attr("action", "/setting/updateMySpaceHost").submit();
	});
	</script>
    
</body>

</html>
