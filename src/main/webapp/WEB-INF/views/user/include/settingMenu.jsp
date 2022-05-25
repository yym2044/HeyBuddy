<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- Setting Menu Start -->
<div class="col-lg-3" style="height: 400px;">
	<div class="card py-2">
		<!--Account nav-->
		<ul class="nav nav-tabs nav-vertical h-100">
			<c:if test="${sessAuth eq 1 or sessAuth eq 2 or sessAuth eq 3 or sessAuth eq 5 or hostNy eq 1}">
				<li class="nav-item"><a href="#component-forms1" data-bs-toggle="collapse" aria-expanded="false" class="nav-link d-flex align-items-center text-truncate fw-bold">
						<i class="bi bi-sliders2-vertical align-middle me-2"></i>스페이스 환경
					</a>
					<ul id="component-forms1" class="sidebar-dropdown list-unstyled show px-0">
						<li class="sidebar-item"><a class="nav-link" href="space"> 기본정보</a></li>
						<!-- <li class="sidebar-item"><a class="nav-link" href="profile"> 프로필정보</a></li> -->
					</ul>
				</li>  
			</c:if>
			<c:if test="${sessAuth ne 5}">
				<li class="nav-item"><a href="#component-forms2" data-bs-toggle="collapse" aria-expanded="false" class="nav-link d-flex align-items-center text-truncate fw-bold">
						<i data-feather="user" class="fe-1x align-middle me-2"></i>스페이스 멤버
					</a>
					<ul id="component-forms2" class="sidebar-dropdown list-unstyled show px-0">
						<c:if test="${sessAuth ne 3 and sessAuth ne 5 and sessAuth ne 7}">					
							<li class="sidebar-item"><a class="nav-link" href="memberList"> 멤버관리</a></li>
						</c:if>
							<!-- <li class="sidebar-item"><a class="nav-link" href="group"> 그룹관리</a></li> -->
						<c:if test="${sessAuth ne 2 and sessAuth ne 5 and sessAuth ne 6}">					
							<li class="sidebar-item"><a class="nav-link" href="authList"> 관리자설정</a></li>
						</c:if>
					</ul>
				</li>
			</c:if>
		</ul>
	</div>
</div>
<!-- Setting Menu End -->