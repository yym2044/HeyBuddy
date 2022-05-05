<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!--///////////Page sidebar begin///////////////-->
<aside class="page-sidebar">
	<div class="h-100 flex-column d-flex justify-content-start">

		<!--Aside-logo-->
		<div class="aside-logo d-flex align-items-center flex-shrink-0 justify-content-start px-5 position-relative">
			<a href="#" class="d-block">
				<div class="d-flex align-items-center flex-no-wrap text-truncate">
					<!--Sidebar-icon-->
					<span class="sidebar-icon fs-5 lh-1 text-white rounded-circle bg-primary fw-bold"> 팀 </span>
					<span class="sidebar-text">
						<!--Sidebar-text-->
						<span class="sidebar-text text-truncate fs-4 ms-3 fw-bolder"> 팀부엉 </span>
					</span>
				</div>
			</a>
		</div>
		<!--Aside-Menu-->
		<div class="aside-menu px-3 my-auto" data-simplebar>
			<nav class="flex-grow-1 h-100" id="page-navbar">
				<!--:Sidebar nav-->
				<ul class="nav flex-column collapse-group collapse d-flex">

					<li class="nav-item"><a href="app-chat.html" class="nav-link d-flex align-items-center text-truncate ">
							<span class="sidebar-icon iconic">
								<i data-feather="user" class="fe-1x"></i>
							</span>
							<span class="sidebar-text">멤버</span>
						</a></li>

					<li class="nav-item"><a href="/chat/chat" class="nav-link d-flex align-items-center text-truncate ">
							<span class="sidebar-icon iconic">
								<i data-feather="message-circle" class="fe-1x"></i>
							</span>
							<span class="sidebar-text">채팅</span>
						</a></li>

					<li class="nav-item"><a href="meetList" class="nav-link d-flex align-items-center text-truncate ">
							<span class="sidebar-icon iconic">
								<i data-feather="video" class="fe-1x"></i>
							</span>
							<span class="sidebar-text">화상</span>
						</a></li>



					<li class="nav-item"><a href="/plan/planList" class="nav-link d-flex align-items-center text-truncate ">
							<span class="sidebar-icon iconic">
								<i data-feather="calendar" class="fe-1x"></i>
							</span>
							<span class="sidebar-text">일정</span>
						</a></li>


					<li class="nav-item"><a href="/file/fileList" class="nav-link d-flex align-items-center text-truncate ">
							<span class="sidebar-icon iconic">
								<i data-feather="edit" class="fe-1x"></i>
							</span>
							<span class="sidebar-text">문서</span>
						</a></li>

					<!-- 
						<li class="nav-item"><a href="#component-forms" data-bs-toggle="collapse" aria-expanded="false" class="nav-link d-flex align-items-center text-truncate ">
								<span class="sidebar-icon iconic">
									<i data-feather="edit" class="fe-1x"></i>
								</span>
								Sidebar nav text
								<span class="sidebar-text">문서</span>
							</a>
							<ul id="component-forms" class="sidebar-dropdown list-unstyled collapse">
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-bootstrap.html"> Bootstrap</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-editor.html"> Editor</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-stepper.html"> Stepper</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-upload.html"> Upload</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-daterange-picker.html"> Daterangepicker</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-validation.html"> Validation</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-choices.html"> Choices</a></li>
								<li class="sidebar-item"><a class="sidebar-link" href="ui-form-inputmask.html"> Inputmask</a></li>
							</ul>
						</li>
						 -->
				</ul>
			</nav>
		</div>
		<!--Aside-footer-->
		<footer class="aside-footer position-relative p-3">
			<ul class="nav flex-column collapse-group collapse d-flex">
				<li class="nav-item"><a href="/mySpace/mySpaceList" class="nav-link d-flex align-items-center text-truncate ">
						<span class="sidebar-icon">
							<i class="bi bi-arrow-left-right" class="fe-1x"></i>
						</span>
						<span class="sidebar-text">마이스페이스</span>
					</a></li>
				<li class="nav-item"><a href="/setting/space" class="nav-link d-flex align-items-center text-truncate ">
						<span class="sidebar-icon">
							<i data-feather="settings" class="fe-1x"></i>
						</span>
						<span class="sidebar-text">환경 설정</span>
					</a></li>

			</ul>
		</footer>
	</div>
</aside>
<!--///////////Page Sidebar End///////////////-->

<!--///Sidebar close button for 991px or below devices///-->
<div class="sidebar-close d-lg-none">
	<a href="#"></a>
</div>
<!--///.Sidebar close end///-->