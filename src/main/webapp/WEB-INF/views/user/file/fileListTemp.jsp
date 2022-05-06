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
            <link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

            <!--Google web fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
        <!--Main style-->
        <link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
    </head>
<style>    
body {
	background-image: url('/resources/user/images/allround.jpg');
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;

}

.iconic {
	padding-bottom: 30px;
	padding-top: 30px;
}

</style>
    <body>
       	<!-- include 처리 1번 -->
	<%@include file="../include/loader.jsp"%>

        <!--App Start-->
        <div class="d-flex flex-column flex-root">
            <!--Page-->
            <div class="page d-flex flex-row flex-column-fluid">
           	<!-- include 처리 2번 -->
			<%@include file="../include/pageSideBar.jsp"%>

                <!--///Sidebar close button for 991px or below devices///-->
                <div
                class="sidebar-close d-lg-none">
                <a href="#"></a>
                </div>
                <!--///.Sidebar close end///-->


                <!--///////////Page content wrapper///////////////-->
                <main class="page-content d-flex flex-column flex-row-fluid">

                    <!--//page-header//-->
                    <header class="navbar py-0 page-header navbar-expand navbar-light px-4 px-lg-8">
                      <a href="index.html" class="navbar-brand d-block d-lg-none">
                        <div class="d-flex align-items-center flex-no-wrap text-truncate">
                          <!--Sidebar-icon-->
                          <span class="sidebar-icon bg-primary rounded-circle size-35 text-white">
                            A
                          </span>
                        </div>
                      </a>
                      <ul class="navbar-nav d-flex align-items-center h-100">
                        <li class="nav-item d-none d-lg-flex flex-column h-100 me-2 align-items-center justify-content-center">
                          <a href="javascript:void(0)"
                            class="sidebar-trigger nav-link size-35 d-flex align-items-center justify-content-center p-0">
                            <i data-feather="chevrons-left" class="fe-1x"></i>
                          </a>
                        </li>
                        <li class="nav-item d-flex flex-column me-2 h-100 justify-content-center dropdown">
                          <a href="javascript:void(0)" data-bs-toggle="dropdown"
                            class="d-flex align-items-center justify-content-center nav-link size-35 p-0"
                            data-bs-auto-close="outside" aria-expanded="false">
                            <i data-feather="search" class="fe-1x"></i>
                          </a>

                          <!--Search dropdown menu-->
                          <div class="dropdown-menu p-0 dropdown-menu-sm overflow-hidden mt-0">

                            <!--Search form-->
                            <form>
                              <div class="d-flex align-items-center p-1 border-bottom ps-4">
                                <div class="text-muted">
                                  <i data-feather="search" class="fe-1x"></i>
                                </div>
                                <input type="text" autofocus class="form-control bg-transparent rounded-0 py-3 ps-2 border-0 shadow-none"
                                  placeholder="Search everything...">
                              </div>
                            </form>

                            <!--Recently searched-->


                            <h6 class="d-block dropdown-header pb-0 pt-3">
                              <i data-feather="trending-up" class="fe-1x me-2"></i>
                              Top searches
                            </h6>
                            <div class="p-3 d-flex flex-wrap align-items-center">
                              <!--Recently searched item-->
                              <a href="#" class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
                                Campaign reports
                              </a>
                              <a href="#" class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
                                Project #4535
                              </a>
                              <a href="#" class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
                                Chat
                              </a>
                              <a href="#" class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
                                Tasks
                              </a>
                              <a href="#" class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
                                Affiliates
                              </a>
                              <a href="#" class="badge bg-tint-primary text-dark rounded-pill px-3 py-2 me-2 mb-2">
                                Faqs
                              </a>
                              <a href="#" class="badge bg-tint-primary text-secondary rounded-pill px-3 py-2 me-2 mb-2">
                                Inbox
                              </a>
                            </div>
                          </div>
                        </li>
                        <li class="nav-item d-flex flex-column me-2 h-100 justify-content-center dropdown">
                          <a href="#" data-bs-toggle="dropdown"
                            class="nav-link size-35 d-flex align-items-center justify-content-center p-0">
                            <i data-feather="grid" class="fe-1x"></i>
                          </a>
                          <div class="dropdown-menu overflow-hidden dropdown-menu-sm p-0 mt-0">
                            <!--Apps list-->
                            <div class="list-group list-group-flush">

                              <div class="list-group-item d-flex align-items-center justify-content-between px-3">
                                <h6 class="dropdown-header ps-0">Apps Shortcuts</h6>
                                <a href="#!" class="btn btn-primary btn-sm rounded-pill">View All Apps</a>
                              </div>
                              <!--App item-->
                              <a href="#!" class="list-group-item px-3 list-group-item-action d-flex align-items-center">
                                <!--App logo-->
                                <img src="/resources/assets/media/brand-logos/atlassian.svg" class="width-30 w-auto flex-shrink-0 me-4" alt="">
                                <div class="flex-grow-1">
                                  <h6 class="mb-0">Atlassian</h6>
                                  <small>Security and control across Cloud</small>
                                </div>
                              </a>

                              <!--App item-->
                              <a href="#!" class="list-group-item px-3 list-group-item-action d-flex align-items-center">
                                <!--App logo-->
                                <img src="/resources/assets/media/brand-logos/google-webdev.svg" class="width-30 w-auto flex-shrink-0 me-4" alt="">
                                <div class="flex-grow-1">
                                  <h6 class="mb-0">Google webdev</h6>
                                  <small>Work involved in developing a website</small>
                                </div>
                              </a>

                              <!--App item-->
                              <a href="#!" class="list-group-item px-3 list-group-item-action d-flex align-items-center">
                                <!--App logo-->
                                <img src="/resources/assets/media/brand-logos/slack.svg" class="width-30 w-auto flex-shrink-0 me-4" alt="">
                                <div class="flex-grow-1">
                                  <h6 class="mb-0">Slack</h6>
                                  <small>Email collaboration software</small>
                                </div>
                              </a>
                            </div>
                          </div>
                        </li>
                      </ul>
                      <ul class="navbar-nav ms-auto d-flex align-items-center h-100">
                        <li class="nav-item d-flex align-items-center justify-content-center flex-column h-100 me-2">
                          <div class="switch_modes nav-link p-0 size-35 d-flex align-items-center justify-content-center">
                            <a href="#" class="mode_dark text-reset p-0">
                              <i data-feather="sun" class="fe-1x"></i>
                            </a>
                            <a href="#" class="mode_light text-reset p-0">
                              <i data-feather="moon" class="fe-1x"></i>
                            </a>
                          </div>
                        </li>
                        <li class="nav-item dropdown d-flex align-items-center justify-content-center flex-column h-100 me-2">
                          <a href="#"
                            class="nav-link p-0 position-relative size-35 d-flex align-items-center justify-content-center"
                            aria-expanded="false" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                            <i data-feather="bell" class="fe-1x"></i>
                            <span
                              class="size-5 rounded-circle d-flex align-items-center justify-content-center position-absolute end-0 top-0 mt-2 me-1 bg-danger small"></span>
                          </a>


                          <div class="dropdown-menu mt-0 p-0 overflow-hidden dropdown-menu-end dropdown-menu-sm">
                            <div class="d-flex p-3 justify-content-between align-items-center border border-top-0 border-start-0 border-end-0">
                              <h5 class="me-3 mb-0">Notifications</h5>
                              <div class="flex-shrink-0">
                                <a href="#!" class="btn btn-primary btn-sm">View All</a>
                              </div>
                            </div>
                            <div class="height-290" data-simplebar>
                              <div class="list-group list-group-flush mb-0">
                                <!--//Notification item start//-->
                                 <a href="#" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
                                    <div class="d-block me-3">
                                      <div class="avatar avatar-status status-online">
                                        <img src="/resources/assets/media/avatars/01.jpg" class="img-fluid rounded-circle w-auto" alt="">
                                      </div>
                                    </div>

                                    <div class="flex-grow-1 flex-wrap pe-3">
                                      <span class="mb-0 d-block"><strong>Adam Danely</strong> assigned
                                        a task to
                                        you <strong>#PI-392</strong></span>
                                      <small class="text-muted">Just now</small>
                                    </div>
                                  </a>
                                <!--//Notification item start//-->
                                <a href="#" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
                                    <div class="d-block me-3">
                                      <div class="avatar avatar-status status-offline">
                                        <img src="/resources/assets/media/avatars/06.jpg" class="img-fluid rounded-circle w-auto" alt="">
                                      </div>
                                    </div>

                                    <div class="flex-grow-1 flex-wrap pe-3">
                                      <span class="mb-0 d-block"><strong>Vivianna Kiser
                                        </strong> just posted <span>"Lorem ipsum is placeholder text
                                          used in the graphic, print,
                                          and industries.
                                          "</span></span>
                                      <small class="text-muted">2h Ago</small>
                                    </div>
                                  </a>
                                <!--//Notification item start//-->
                                 <a href="#" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
                                    <span class="d-block me-3">
                                      <span
                                        class="d-flex align-items-center justify-content-center lh-1 size-50 bg-tint-success text-success rounded-circle">
                                        <i class="fe-2x" data-feather="tool"></i>
                                      </span>
                                    </span>

                                    <div class="flex-grow-1 flex-wrap pe-3">
                                      <span class="mb-0 d-block"><strong>Updated</strong> Your account
                                        password updated
                                        succuessfully</span>
                                      <small class="text-muted">2h Ago</small>
                                    </div>
                                  </a>
                                <!--//Notification item start//-->
                                <a href="#" class="list-group-item border-0 list-group-item-action px-4 d-flex align-items-center">
                                    <span class="d-block me-3">
                                      <span
                                        class="d-flex align-items-center justify-content-center lh-1 size-50 bg-tint-danger text-danger rounded-circle">
                                        <i class="fe-2x" data-feather="percent"></i>
                                      </span>
                                    </span>

                                    <div class="flex-grow-1 flex-wrap pe-3">
                                      <span class="mb-0 d-block"><strong>Pro discount</strong> Upgrade
                                        to pro plan with 30%
                                        discount, Apply coupon <span class="badge bg-primary">PRO30</span></span>
                                      <small class="text-muted">2h Ago</small>
                                    </div>
                                  </a>
                                </div>
                            </div>
                          </div>
                        </li>
                        <li class="nav-item dropdown d-flex align-items-center justify-content-center flex-column h-100">
                          <a href="#"
                            class="nav-link dropdown-toggle height-35 px-2 d-flex align-items-center justify-content-center"
                            aria-expanded="false" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                            <div class="d-flex align-items-center">

                              <!--Avatar with status-->
                              <div class="avatar-status status-online me-sm-2 avatar xs">
                                <img src="/resources/assets/media/avatars/01.jpg" class="rounded-circle img-fluid" alt="">
                              </div>
                              <span class="d-none d-md-inline-block">New Face</span>
                            </div>
                          </a>

                          <div class="dropdown-menu mt-0 p-0 dropdown-menu-end overflow-hidden">
                            <!--User meta-->
                            <div class="position-relative overflow-hidden px-3 pt-4 pb-9 bg-gradient-primary text-white">
                              <!--Divider-->
                              <svg style="transform: rotate(-180deg);" preserveAspectRatio="none"
                                class="position-absolute start-0 bottom-0 w-100 dropdown-wave" fill="currentColor" height="24" viewBox="0 0 1200 120"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                  d="M0 0v46.29c47.79 22.2 103.59 32.17 158 28 70.36-5.37 136.33-33.31 206.8-37.5 73.84-4.36 147.54 16.88 218.2 35.26 69.27 18 138.3 24.88 209.4 13.08 36.15-6 69.85-17.84 104.45-29.34C989.49 25 1113-14.29 1200 52.47V0z"
                                  opacity=".25" />
                                <path
                                  d="M0 0v15.81c13 21.11 27.64 41.05 47.69 56.24C99.41 111.27 165 111 224.58 91.58c31.15-10.15 60.09-26.07 89.67-39.8 40.92-19 84.73-46 130.83-49.67 36.26-2.85 70.9 9.42 98.6 31.56 31.77 25.39 62.32 62 103.63 73 40.44 10.79 81.35-6.69 119.13-24.28s75.16-39 116.92-43.05c59.73-5.85 113.28 22.88 168.9 38.84 30.2 8.66 59 6.17 87.09-7.5 22.43-10.89 48-26.93 60.65-49.24V0z"
                                  opacity=".5" />
                                <path
                                  d="M0 0v5.63C149.93 59 314.09 71.32 475.83 42.57c43-7.64 84.23-20.12 127.61-26.46 59-8.63 112.48 12.24 165.56 35.4C827.93 77.22 886 95.24 951.2 90c86.53-7 172.46-45.71 248.8-84.81V0z" />
                              </svg>
                              <div class="position-relative">
                                <h5 class="mb-1">New Face</h5>
                                <p class="text-muted small mb-0 lh-1">Full stack developer</p>
                              </div>
                            </div>
                            <div class="pt-2">
                              <a href="profile.html" class="dropdown-item"><i class="fe-1x me-3" data-feather="user"></i>Profile</a>
                              <a href="account-general.html" class="dropdown-item"><i class="fe-1x me-3" data-feather="tool"></i>Settings</a>
                              <a href="page-tasks.html" class="dropdown-item"> <i class="fe-1x me-3" data-feather="list"></i>Tasks</a>
                              <hr class="my-2">
                              <a href="page-auth-signin.html" class="dropdown-item d-flex align-items-center">
                                <i class="fe-1x me-3" data-feather="log-out"></i>
                                Sign out
                              </a>
                            </div>
                          </div>
                        </li>
                        <li
                          class="nav-item dropdown ms-2 d-flex d-lg-none align-items-center justify-content-center flex-column h-100">
                          <a href="javascript:void(0)"
                            class="nav-link sidebar-trigger-lg-down size-35 p-0 d-flex align-items-center justify-content-center">
                            <i data-feather="menu" class="fe-2x"></i>
                          </a>
                        </li>
                      </ul>
                    </header>
                    <!--Main Header End-->


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

                  <!--//Page content//-->
                    <div class="content overflow-hidden position-relative d-flex flex-column-fluid">
                        <!--Inbox content-->
                        <div id="mailList" class="position-absolute left-0 top-0 d-flex flex-column w-100 h-100" data-simplebar>
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
                                        <div class="col-md-6 col-xl-5 px-2 order-1 order-md-last mb-2 mb-md-0">
                                           <div class="d-flex justify-content-end">
                                               <form action="" class="position-relative flex-grow-1 me-2">
                                                   <!--Icon-->
                                                   <i data-feather="search" class="fe-1x position-absolute start-0 top-50 translate-middle-y ms-3"></i>
                                                   <input type="text" class="form-control search ps-8" placeholder="제목,등록자 검색">
                                               </form>
                                            <a href="fileForm"  class="btn btn-primary btn-sm d-inline-flex align-items-center">
                                                <i data-feather="edit-3" class="fe-2x me-md-2"></i>
                                                <span class="d-md-inline-block d-none">등록</span></a>
                                           </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Inbox mail list-->
                            <div class="list-group px-4 px-lg-8 mb-4 list">
                                <!--Inbox-item-->
                                <a href="fileView" class="list-group-item list-group-item-action">
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
                                                <img src="/resources/assets/media/avatars/02.jpg" class="img-fluid rounded-circle" alt="">
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden pe-4">
                                                <!--name class for search results-->
                                                <div class="d-flex align-items-center mb-1">
                                                    <div class="mb-0 me-2 flex-shrink-0 name">정미림</div>
                                                  <!--   <span class="badge label bg-danger flex-shrink-0 rounded-pill ms-auto">Friends</span> -->
                                                </div>
                                                <p class="small fw-bold mb-0"></p>
                                                <p class="lh-sm text-truncate mb-0">
                                                    <span class="fw-bolder me-2 me-lg-4"> 유지보수 계약건 입니다. </span>
                                          
                                                </p>
                                               </div>
                                            <div class="flex-shrink-0">
                                                <div class="d-flex flex-column align-items-end">
                                                    <!--New indicator-->
                                                    <div class="d-flex align-items-center mb-2">
                                                        <i data-feather="paperclip" class="fe-1x "></i>
                                     
                                                    </div>
                                                   
                                                    <!--Time-->
                                                    <span class="block small text-muted">Just Now</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <!--Inbox-item-->
                                <a href="fileView" class="list-group-item list-group-item-action">
                                    <div class="d-flex align-items-center">
                                        <!--check-->
                                        <div class="form-check shrink-0 mb-0 me-1 position-relative">
                                            <input type="checkbox" class="form-check-input" id="check_2">
                                        <label for="check_2" class="form-check-label"></label>
                                        </div>
                                        <div class="form-star shrink-0 mb-0 me-2 d-md-flex d-none position-relative">
                                            <input type="checkbox" class="form-star-input" id="starred_2">
                                        <label for="starred_2" class="form-star-label"></label>
                                        </div>
                                        <div class="shrink-0 d-flex flex-grow-1 ms-1 overflow-hidden align-items-center justify-content-start">
                                            <div class="size-35 me-2 me-lg-3 d-flex align-items-center justify-content-center rounded-circle flex-shrink-0 overflow-hidden">
                                                <img src="/resources/assets/media/avatars/03.jpg" class="img-fluid rounded-circle" alt="">
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden pe-4">
                                                <!--name class for search results-->
                                                <div class="d-flex align-items-center mb-1">
                                                    <div class="mb-0 me-2 flex-shrink-0 name">윤영민</div>
                                         <!--            <span class="badge label bg-success flex-shrink-0 rounded-pill ms-auto">Work</span> -->
                                                </div>
                                                <p class="small fw-bold mb-0"></p>
                                                <p class="lh-sm text-truncate mb-0">
                                             
                                                      <span class="fw-bolder me-2 me-lg-4"> 워크샵때 찍은 사진 공유드립니다. </span>
                                                
                                                </p>
                                               </div>
                                            <div class="flex-shrink-0">
                                                <div class="d-flex flex-column align-items-end">
                                                    <!--New indicator-->
                                                    <div class="d-flex align-items-center justify-content-end mb-2">
                                                        <i data-feather="image" class="fe-1x"></i>
                                                        <!-- <span class="size-10 bg-primary rounded-circle d-inline-block mb-2"></span> -->
                                                    </div>
                                                    <!--Time-->
                                                    <span class="block small text-muted">2d</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                               
                                <!--Inbox-item-->
                                <a href="fileView" class="list-group-item list-group-item-action">
                                    <div class="d-flex align-items-center">
                                        <!--check-->
                                        <div class="form-check shrink-0 mb-0 me-1 position-relative">
                                            <input type="checkbox" class="form-check-input" id="check_4">
                                        <label for="check_4" class="form-check-label"></label>
                                        </div>
                                        <div class="form-star shrink-0 mb-0 me-2 d-md-flex d-none position-relative">
                                            <input type="checkbox" class="form-star-input" id="starred_4">
                                        <label for="starred_4" class="form-star-label"></label>
                                        </div>
                                        <div class="shrink-0 d-flex flex-grow-1 ms-1 overflow-hidden align-items-center justify-content-start">
                                            <div class="size-35 me-2 me-lg-3 d-flex align-items-center justify-content-center rounded-circle flex-shrink-0 overflow-hidden">
                                                <img src="/resources/assets/media/avatars/04.jpg" class="img-fluid rounded-circle" alt="">
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden pe-4">
                                                <!--name class for search results-->
                                                <div class="d-flex align-items-center mb-1">
                                                    <div class="mb-0 me-2 flex-shrink-0 name">이건우</div>
                                            <!--         <span class="badge label bg-info flex-shrink-0 rounded-pill ms-auto">Family</span> -->
                                                </div>
                                                <p class="small fw-bold mb-0"></p>
                                                <p class="lh-sm text-truncate mb-0">
                                                   
                                                          <span class="fw-bolder me-2 me-lg-4"> 4월3주차 사업현황 리포트 입니다.  </span>
                                                </p>
                                               </div>
                                            <div class="flex-shrink-0">
                                                <div class="d-flex flex-column align-items-end">
                                                    <!--New indicator-->
                                                    <div class="d-flex align-items-center justify-content-end mb-2">
                                                        <i data-feather="image" class="fe-1x"></i>
                                                        <!-- <span class="size-10 bg-info rounded-circle d-inline-block mb-2"></span> -->
                                                    </div>
                                                    <!--Time-->
                                                    <span class="block small text-muted">16 Feb.</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                
                                <!--Inbox-item-->
                                <a href="fileView" class="list-group-item list-group-item-action">
                                    <div class="d-flex align-items-center">
                                        <!--check-->
                                        <div class="form-check shrink-0 mb-0 me-1 position-relative">
                                            <input type="checkbox" class="form-check-input" id="check_6">
                                        <label for="check_6" class="form-check-label"></label>
                                        </div>
                                        <div class="form-star shrink-0 mb-0 me-2 d-md-flex d-none position-relative">
                                            <input type="checkbox" class="form-star-input" checked id="starred_6">
                                        <label for="starred_6" class="form-star-label"></label>
                                        </div>
                                        <div class="shrink-0 d-flex flex-grow-1 ms-1 overflow-hidden align-items-center justify-content-start">
                                            <div class="size-35 me-2 me-lg-3 d-flex align-items-center justify-content-center rounded-circle flex-shrink-0 overflow-hidden">
                                                <img src="/resources/assets/media/avatars/05.jpg" class="img-fluid rounded-circle" alt="">
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden pe-4">
                                                <!--name class for search results-->
                                                <div class="d-flex align-items-center mb-1">
                                                    <div class="mb-0 me-2 flex-shrink-0 name">김나리</div>
                                                 
                                                </div>
                                                <p class="small fw-bold mb-0"></p>
                                                <p class="lh-sm text-truncate mb-0">
                                                   
                                                   <span class="fw-bolder me-2 me-lg-4"> Wedding Invitation </span>
                                                </p>
                                               </div>
                                            <div class="flex-shrink-0">
                                                <div class="d-flex flex-column align-items-end">
                                                    <!--New indicator-->
                                                    <div class="d-flex align-items-center mb-2">
                                                        <i data-feather="paperclip" class="fe-1x"></i>
                                                        <!-- <span class="size-10 bg-primary rounded-circle d-inline-block mb-2"></span> -->
                                                    </div>
                                                    <!--Time-->
                                                    <span class="block small text-muted">31 Dec 21</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                             
                            </div>
                            <!--Footer for emails-->
                            <div class="d-flex justify-content-between align-items-center mb-4 px-4 px-lg-8">
                             
                                <div>
                                    <small>1-12 of 999</small>
                                    <div class="btn-group btn-group-sm ms-3">
                                        <button class="btn btn-white btn-sm" type="button" disabled="disabled">
                                            <i data-feather="arrow-left" class="fe-1x"></i>   
                                            </button>
                                                    <button class="btn btn-white btn-sm" type="button">
                                                        <i data-feather="arrow-right" class="fe-1x"></i>       
                                                    </button>
                                    </div>
                                                </div>
                              </div>
                        </div>
                    </div>
                    <!--//Page content End//-->
                    
                </main>
                <!--///////////Page content wrapper End///////////////-->
            </div>
        </div>

          <!--Mail Compose Modal-->
   <div class="modal search_modal fade" id="modal_compose" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="position-relative d-flex rounded-top px-4 py-3 align-items-center justify-content-between bg-primary text-white">
                <h5 class="mb-0">문서등록</h5>
                <button
                    class="btn text-white shadow-none small"
                    data-bs-dismiss="modal" type="button">취소</button>
            </div>
            <div class="p-4 modal-body">
                <form>
                    <input type="text" class="form-control mb-3" placeholder="공유자검색">
                    <input type="text" class="form-control mb-3" placeholder="제목">
                       <!--Quill editor-->
                       <div class="mb-3" data-quill='{"placeholder": "Enter your message here..."}'></div>
                   
                   <input type="text" class="form-control mb-3" placeholder="내용" height="500px">
                   
                    <div class="d-flex justify-content-end pt-4">
                        <button type="button" class="btn btn-outline-secondary">임시저장</button>
                        <button type="button" class="btn btn-primary ms-2">등록</button>
                    </div>
                </form>
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
        
        <!--////////////Theme Core scripts Start/////////////////-->

        <script src="/resources/assets/vendor/feather.min.js"></script>
        <script src="/resources/assets/js/theme.bundle.js"></script>
        <script>
          feather.replace()
        </script>

        <!--////////////Theme Core scripts End/////////////////-->


    </body>

</html>
