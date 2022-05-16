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
<link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

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
					<div
						class="content flex-column p-4 pb-0 d-flex justify-content-center align-items-center flex-column-fluid position-relative">
						<div
							class="w-100 h-100 position-relative d-flex align-items-center justify-content-center">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-loader spinner-grow  me-2">
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
					<div
						class="aside-logo d-flex align-items-center flex-shrink-0 justify-content-start px-5 position-relative">
						<a href="memberList" class="d-block">
							<div class="d-flex align-items-center flex-no-wrap text-truncate">
								<!--Sidebar-icon--> 
											<img src="/resources/user/images/xdminHeyBuddy.PNG" alt="..."
									width="200px">
							</div>
						</a>
					</div>
					<!--Aside-Menu-->
					<div class="aside-menu px-3 my-auto" data-simplebar>
						<nav class="flex-grow-1 h-100" id="page-navbar">
							<!--:Sidebar nav-->
							<ul class="nav flex-column collapse-group collapse d-flex">

								<li class="nav-item"><a href="memberList"
									class="nav-link d-flex align-items-center text-truncate ">
										<span class="sidebar-icon iconic"> <i
											data-feather="user" class="fe-1x"></i>
									</span> <!--Sidebar nav text--> <span class="sidebar-text"> 멤버
									</span>
								</a></li>


						

							</ul>
						</nav>
					</div>
				
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
                  <h3 class="mb-2">  <c:out value="${sessName }"/> 님, 반갑습니다👋</h3>
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
								<h4 class="mb-2">회원정보</h4>
							</div>
						</div>
					</div>
				</div>
				<!--//Page Toolbar End//-->


 <!-- 히든처리 -->
<form id="formView" action="" method="post">
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
							<div
								class="card-header border-bottom-0 d-md-flex align-items-md-center justify-content-md-between">
							</div>


							<div class="table-responsive">
								<div class="text-center">
									<label for="profilePhoto" style="cursor: pointer;"> 
									<img src="<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>" class="avatar rounded-pill flex-shrink-0" style="width: 100px; 
									height: 100px;" />
						<br>		
						<a href="<c:out value="${uploaded.path}"/><c:out value="${uploaded.uuidFileName}"/>" 
						download="<c:out value="${uploaded.path}"/><c:out value="${uploaded.originalFileName}"/>">
						다운로드 </a>
									</label> 
									<p class="p-2 fw-bold">프로필</p>
								</div>

								<table id="setTable"
									class="table table-sm table-nowrap table-card">
									<tr>
										<td class="tableText">상태</td>
									<td><c:if test="${item.hymmDormancyNy eq 0}">
																			<c:out value="활성" />
																		</c:if> <c:if test="${item.hymmDormancyNy eq 1}">
																			<c:out value="휴먼" />
																		</c:if></td>
									</tr>
									<tr>
										<td class="tableText">아이디</td>
										<th><c:out value="${item.hymmId}" /></th>
									</tr>
									<tr>
										<td class="tableText">이름</td>
										<th><c:out value="${item.hymmName}" /></th>
									</tr>
										<tr>
																				<td class="tableText">성별</td>
									<td class=""><c:if
																			test="${item.hymmGenderCd eq 1}">
																			<c:out value="남성" />
																		</c:if> <c:if test="${item.hymmGenderCd eq 2}">
																			<c:out value="여성" />
																		</c:if></td>		</tr>
										<tr>
										<td class="tableText">생일</td>
										<th><c:out value="${item.hymmDob}" /></th>
									</tr>
									<tr>
										<td class="tableText">휴대전화</td>
										<th><c:out value="${item.hymmNumber}" /></th>
									</tr>

									<tr>
										<td class="tableText">이메일</td>
										<td><c:out value="${item.hymmEmail}" /></td>
									</tr>
								
									<tr>
										<td class="tableText">상태메세지</td>
										<td><c:out value="${item.hymmDesc}" /></td>
									</tr>
									<tr>
										<td class="tableText">개인정보유효기간</td>
									<td><c:if test="${item.hymmSaveCd eq 6}">
								<c:out value="1년" />
							</c:if> <c:if test="${item.hymmSaveCd eq 7}">
								<c:out value="2년" />
							</c:if> <c:if test="${item.hymmSaveCd eq 8}">
								<c:out value="3년" />
							</c:if> <c:if test="${item.hymmSaveCd eq 9}">
								<c:out value="5년" />
							</c:if> <c:if test="${item.hymmSaveCd eq 10}">
								<c:out value="10년" />
							</c:if> <c:if test="${item.hymmSaveCd eq 11}">
								<c:out value="탈퇴시" />
							</c:if></td>
									</tr>
									<tr>
										<td class="tableText">SMS 마케팅 동의</td>
								<td><c:if test="${item.hymmSmsConsentNy eq 1}">
								<c:out value="동의" />
							</c:if> <c:if test="${item.hymmSmsConsentNy eq 0}">
								<c:out value="거절" />
							</c:if></td>
									</tr>
									<tr>
										<td class="tableText">이메일 마케팅 동의</td>
										<td><c:if test="${item.hymmEmailConsentNy eq 1}">
								<c:out value="동의" />
							</c:if> <c:if test="${item.hymmEmailConsentNy eq 0}">
								<c:out value="거절" />
							</c:if></td>
									</tr>
									<tr>
										<td class="tableText">가입일</td>
										<td><fmt:formatDate value="${item.regDateTime }"/></td>
									</tr>
									<tr>
										<td class="tableText">수정일</td>
										<td><fmt:formatDate value="${item.modDateTime }"/></td>
									</tr>


								</table>
								<div class="text-center pb-4">
								
								<a  class="btn btn-secondary" href="javascript:goMemberList('<c:out value="${item.hymmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>');">
								목록</a>
									
									
								<a  class="btn btn-info" href="javascript:goMemberEdit('<c:out value="${item.hymmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>','<c:out value="${vo.shMemberValue}"/>');"> 
								수정 </a>


<button type="button" id="" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#btnModalNelete"> 삭제 </button> 
	
	<div class="modal fade" id="btnModalNelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="modal-title">
										<i class="fas fa-exclamation-circle"></i>삭제 확인!
									</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">정말 삭제하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
									
									<a href="javascript:goMemberNelete
									('<c:out value="${item.hymmSeq}"/>','<c:out value="${vo.thisPage}"/>','<c:out value="${vo.shMemberOption}"/>',
									'<c:out value="${vo.shMemberValue}"/>' );"> 
	<button type="button" class="btn btn-primary" id=""  >확인</button></a>
								</div>
							</div>
						</div>
					</div>   
					
					
									
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
						<span class="d-block lh-sm small text-muted text-end">&copy;
							<script>
							document.write(new Date().getFullYear())
						</script>. Copyright
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


				<!--Datatables-->
				<script
					src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>
				<script
					src="https://cdn.datatables.net/1.11.0/js/dataTables.bootstrap5.min.js"></script>
				<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Datatables Responsive
			$("#datatable").DataTable({
				"filter" : false,
				"length" : false
			});
		});
	</script>
	
	<script type="text/javascript">
		goMemberList = function(){
	$("#formView").attr("action", "/xdmin/memberList");
	$("#formView").submit();
		};

		goMemberEdit = function(){
	$("#formView").attr("action", "/xdmin/memberEdit");
	$("#formView").submit();
		};
		
		goMemberNelete = function(seq){
	$("#formView").attr("action", "/xdmin/memberNele");
	$("#formView").submit();
		};
	</script>
	
	
</body>

</html>
