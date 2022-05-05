<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- Setting Menu Start -->
<div class="col-lg-3" style="height: 400px;">
	<div class="card py-2">
		<!--Account nav-->
		<ul class="nav nav-tabs nav-vertical mb-4 h-100">
			<li class="nav-item"><a href="#component-forms1" data-bs-toggle="collapse" aria-expanded="false" class="nav-link d-flex align-items-center text-truncate">
					<i class="bi bi-sliders2-vertical align-middle me-2"></i>스페이스 환경
				</a>
				<ul id="component-forms1" class="sidebar-dropdown list-unstyled show">
					<li class="sidebar-item"><a class="sidebar-link" href="space"> 기본정보</a></li>
					<li class="sidebar-item"><a class="sidebar-link" href="profile"> 프로필정보</a></li>
				</ul></li>

			<li class="nav-item"><a href="#component-forms2" data-bs-toggle="collapse" aria-expanded="false" class="nav-link d-flex align-items-center text-truncate ">
					<i data-feather="user" class="fe-1x align-middle me-2"></i>스페이스 멤버
				</a>
				<ul id="component-forms2" class="sidebar-dropdown list-unstyled show">
					<li class="sidebar-item"><a class="sidebar-link" href="memberList"> 멤버관리</a></li>
					<li class="sidebar-item"><a class="sidebar-link" href="group"> 그룹관리</a></li>
					<li class="sidebar-item"><a class="sidebar-link" href="authList"> 관리자설정</a></li>
				</ul></li>
		</ul>
	</div>
</div>
<!-- Setting Menu End -->