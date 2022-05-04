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
            <link href="assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

            <!--Google web fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">

        <!--Simplebar css-->
        <link rel="stylesheet" href="assets/vendor/css/simplebar.min.css">

        <!--Choices css-->
        <link rel="stylesheet" href="assets/vendor/css/choices.min.css">

        <!--dropzone-->
        <link rel="stylesheet" href="assets/vendor/css/dropzone.min.css">

        <!--Main style-->
        <link rel="stylesheet" href="assets/css/style.min.css" id="switchThemeStyle">
    </head>
    <style>
body {
	background-image: url('../../../../../user/images/allround.jpg');
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
                    <div class="w-100 h-100 position-relative d-flex align-items-center justify-content-center">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-loader spinner-grow  me-2"><line x1="12" y1="2" x2="12" y2="6"/><line x1="12" y1="18" x2="12" y2="22"/><line x1="4.93" y1="4.93" x2="7.76" y2="7.76"/><line x1="16.24" y1="16.24" x2="19.07" y2="19.07"/><line x1="2" y1="12" x2="6" y2="12"/><line x1="18" y1="12" x2="22" y2="12"/><line x1="4.93" y1="19.07" x2="7.76" y2="16.24"/><line x1="16.24" y1="7.76" x2="19.07" y2="4.93"/></svg>
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
                      <a href="index.html" class="d-block">
                        <div class="d-flex align-items-center flex-no-wrap text-truncate">
                          <!--Sidebar-icon-->
                          <span class="sidebar-icon fs-5 lh-1 text-white rounded-circle bg-primary fw-bold"> 팀 </span>
                          <span class="sidebar-text">
                            <!--Sidebar-text-->
                            <span class="sidebar-text text-truncate fs-4 ms-3 fw-bolder">
                              팀부엉
                            </span>
                          </span>
                        </div>
                      </a>
                    </div>
                    <!--Aside-Menu-->
                    <div class="aside-menu px-3 my-auto" data-simplebar>
                      <nav class="flex-grow-1 h-100" id="page-navbar">
                        <!--:Sidebar nav-->
                        <ul class="nav flex-column collapse-group collapse d-flex">
                        
                          <li class="nav-item">
                            <a href="index-analytics.html" class="nav-link d-flex align-items-center text-truncate ">
                              <span class="sidebar-icon iconic">
                                <i data-feather="user" class="fe-1x"></i>
                              </span>
                              <!--Sidebar nav text-->
                              <span class="sidebar-text"> 멤버 </span>
                            </a>
                          </li>
                          
                            
                          <li class="nav-item">
                            <a href="app-chat.html"
                              class="nav-link d-flex align-items-center text-truncate ">
                              <span class="sidebar-icon iconic">
                                <i data-feather="message-circle" class="fe-1x"></i>
                              </span>
                              <span class="sidebar-text"> 채팅 </span>
                            </a>
                          </li>
                          
                          <li class="nav-item">
                            <a href="index-finance.html" class="nav-link d-flex align-items-center text-truncate ">
                              <span class="sidebar-icon iconic">
                                <i data-feather="video" class="fe-1x"></i>
                              </span>
                              <!--Sidebar nav text-->
                              <span class="sidebar-text"> 화상 </span>
                            </a>
                          </li>
          
                       
                          <li class="nav-item">
                            <a href="app-calendar.html"
                              class="nav-link d-flex align-items-center text-truncate ">
                              <span class="sidebar-icon iconic">
                                <i data-feather="calendar" class="fe-1x"></i>
                              </span>
                              <span class="sidebar-text"> 일정 </span>
                            </a>
                          </li>
                        
                          <li class="nav-item">
                            <a href="#ui-components" data-bs-toggle="collapse" aria-expanded="false"
                              class="nav-link d-flex align-items-center text-truncate ">
                              <span class="sidebar-icon iconic">
                                <i data-feather="archive" class="fe-1x"></i>
                              </span>
                              <!--Sidebar nav text-->
                              <span class="sidebar-text"> 문서 </span>
                            </a>
                            <ul id="ui-components" class="sidebar-dropdown list-unstyled collapse">
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-animations.html">Animations</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-avatars.html">Avatars</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-accordion.html">Accordion</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-alerts.html">Alerts</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-badges.html">Badges</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-buttons.html">Buttons</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-cards.html">Cards</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-carousel.html">Carousel</a> </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-collapse.html">Collapse</a> </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-dropdown.html">Dropdown</a> </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-modals.html">Modals</a> </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-icons-feather.html">Feather Icons</a>
                              </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-icons-bootstrap.html">Bootstrap
                                  Icons</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-progress.html">Progress</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-spinners.html">Spinners</a> </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-swiper-slider.html">Swiper Slider</a> </li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-typography.html">Typography</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-toast.html">Toast</a></li>
                              <li class="sidebar-item"><a class="sidebar-link" href="ui-component-tooltip-popovers.html">Tooltip &
                                  popovers</a></li>
                            </ul>
                          </li>
                          
                      
        
                        </ul>
                      </nav>
                    </div>
                    <!--Aside-footer-->
                    <footer class="aside-footer position-relative p-3">
                     <ul class="nav flex-column collapse-group collapse d-flex">
                    			<li class="nav-item">
                            <a href="app-calendar.html"
                              class="nav-link d-flex align-items-center text-truncate ">
                              <span class="sidebar-icon">
                                <i data-feather="settings" class="fe-1x"></i>
                              </span>
                              <span class="sidebar-text">환경 설정</span>
                            </a>
                          </li>
                          		
                          </ul>
                    </footer>
                  </div>
                </aside>
                <!--///////////Page Sidebar End///////////////-->

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
                                <img src="assets/media/brand-logos/atlassian.svg" class="width-30 w-auto flex-shrink-0 me-4" alt="">
                                <div class="flex-grow-1">
                                  <h6 class="mb-0">Atlassian</h6>
                                  <small>Security and control across Cloud</small>
                                </div>
                              </a>

                              <!--App item-->
                              <a href="#!" class="list-group-item px-3 list-group-item-action d-flex align-items-center">
                                <!--App logo-->
                                <img src="assets/media/brand-logos/google-webdev.svg" class="width-30 w-auto flex-shrink-0 me-4" alt="">
                                <div class="flex-grow-1">
                                  <h6 class="mb-0">Google webdev</h6>
                                  <small>Work involved in developing a website</small>
                                </div>
                              </a>

                              <!--App item-->
                              <a href="#!" class="list-group-item px-3 list-group-item-action d-flex align-items-center">
                                <!--App logo-->
                                <img src="assets/media/brand-logos/slack.svg" class="width-30 w-auto flex-shrink-0 me-4" alt="">
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
                                        <img src="assets/media/avatars/01.jpg" class="img-fluid rounded-circle w-auto" alt="">
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
                                        <img src="assets/media/avatars/06.jpg" class="img-fluid rounded-circle w-auto" alt="">
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
                                <img src="assets/media/avatars/01.jpg" class="rounded-circle img-fluid" alt="">
                              </div>
                              <span class="d-none d-md-inline-block">Noah</span>
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
                                <h5 class="mb-1">Noah Pierre</h5>
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



                    <!--//Page content//-->
                    <div class="px-4 px-lg-8">
                        <div class="content content-wrapper content-expand-md">
                            <!--Content-wrapper-overlay when sidebar open for 768px down width-->
                            <div class="content-wrapper-overlay"></div>
                            <!--Content-sidebar-->
                            <div class="content-left border-end">
                                <div class="content-sidebar card rounded-0 align-items-stretch h-100"
                                    id="content-sidebar">
                                    <!--content-sidebar-header-->
                                    <div class="content-sidebar-header p-0 border-bottom position-relative">
                                        <form class="position-relative w-100 p-3 height-60 d-flex align-items-center">
                                            <div
                                                class="position-absolute start-0 top-50 translate-middle-y opacity-50 lh-1 ms-3">
                                                <i data-feather="search" class="fe-1x"></i>
                                            </div>
                                            <input type="text"
                                                class="form-control px-5 bg-transparent border-0 py-0 shadow-none"
                                                placeholder="Start new chat">
                                            <button type="button"
                                                class="btn d-md-none content_sidebar_toggler p-0 size-30 rounded-circle flex-center position-absolute shadow-none end-0 me-2 top-50 translate-middle-y text-body">
                                                <i data-feather="x" class="fe-2x"></i>
                                            </button>
                                        </form>
                                    </div>

                                    <!--content-sidebar-body-->
                                    <div class="content-sidebar-body p-0 card-body">
                                        <div class="list-group list-group-flush mb-0">
                                            <!--Chat User-->
                                            <a href="#!"
                                                class="list-group-item align-items-center active border-0 list-group-item-action px-3 d-flex py-3">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar-status status-online me-3 avatar">
                                                        <img src="assets/media/avatars/03.jpg"
                                                            class="rounded-circle img-fluid" alt="">
                                                    </div>
                                                </div>
                                                <div class="overflow-hidden flex-grow-1">
                                                    <div class="d-flex">
                                                        <h6 class="mb-0 flex-grow-1">Adam Voges
                                                            <!--New message badge-->
                                                            <span
                                                                class="ms-1 badge rounded-pill bg-primary size-5 p-0 d-inline-block"></span>
                                                        </h6>
                                                        <small class="opacity-75 ms-auto small">12:24 PM</small>
                                                    </div>
                                                    <p class="mb-0 text-truncate">
                                                        <span>Ut enim ad minim veniam, quis nostrud exercitation
                                                            ullamco</span>
                                                    </p>
                                                </div>
                                            </a>

                                            <!--Chat User-->
                                            <a href="#!"  class="list-group-item align-items-center list-group-item-action border-0 px-3 d-flex py-3">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar-status status-offline me-3 avatar">
                                                        <img src="assets/media/avatars/04.jpg"
                                                            class="rounded-circle img-fluid" alt="">
                                                    </div>
                                                </div>
                                                <div class="overflow-hidden flex-grow-1">
                                                    <div class="d-flex">
                                                        <h6 class="mb-0 text-reset flex-grow-1">Jason Doe</h6>
                                                        <small class=" opacity-75 ms-auto">08:24 AM</small>
                                                    </div>
                                                    <p class="mb-0 text-truncate">
                                                        <span>Sunt in culpa qui officia deserunt mollit anim id
                                                            est
                                                            laborum.</span>
                                                    </p>
                                                </div>
                                            </a>
                                            <!--Chat User-->
                                            <a href="#!"  class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
                                                <div class="flex-shrink-0">
                                                    <div
                                                        class="avatar-status status-online me-3 avatar d-flex align-items-center justify-content-center bg-primary text-white fw-bolder rounded-circle">
                                                        DJ
                                                    </div>
                                                </div>
                                                <div class="overflow-hidden flex-grow-1">
                                                    <div class="d-flex">
                                                        <h6 class="mb-0 text-reset flex-grow-1">Dwayne Bravo
                                                        </h6>
                                                        <small class=" opacity-75 ms-auto">21/07/21</small>
                                                    </div>
                                                    <p class="mb-0 opacity-75 text-truncate">
                                                        <span>Excepteur sint occaecat cupidatat non
                                                            proident</span>
                                                    </p>
                                                </div>
                                            </a>

                                            <!--Chat User-->
                                            <a href="#!" class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar-status status-offline me-3 avatar">
                                                        <img src="assets/media/avatars/05.jpg"
                                                            class="rounded-circle img-fluid" alt="">
                                                    </div>
                                                </div>
                                                <div class="overflow-hidden flex-grow-1">
                                                    <div class="d-flex">
                                                        <h6 class="mb-0 text-reset flex-grow-1">Nikita Miller
                                                        </h6>
                                                        <small class=" opacity-75 ms-auto">07/0721</small>
                                                    </div>
                                                    <p class="mb-0 opacity-75 text-truncate">
                                                        <span>Duis aute irure dolor in reprehenderit in
                                                            voluptate
                                                            velit esse cillum dolore eu fugiat nulla
                                                            pariatur.</span>
                                                    </p>
                                                </div>
                                            </a>
                                            <!--Chat User-->
                                            <a href="#!" class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
                                                <div class="flex-shrink-0">
                                                    <div
                                                        class="avatar-status status-online me-3 avatar d-flex align-items-center fw-bolder justify-content-center text-white bg-success rounded-circle">
                                                        DA
                                                    </div>
                                                </div>
                                                <div class="overflow-hidden flex-grow-1">
                                                    <div class="d-flex">
                                                        <h6 class="mb-0 text-reset flex-grow-1">Dylan Ambrose
                                                        </h6>
                                                        <small class=" opacity-75 ms-auto">03/06/21</small>
                                                    </div>
                                                    <p class="mb-0 opacity-75 text-truncate">
                                                        <span>Publishing industries for previewing layouts and
                                                            visual mockups 👍</span>
                                                    </p>
                                                </div>
                                            </a>

                                            <!--Chat User-->
                                            <a href="#!" class="list-group-item px-3 align-items-center list-group-item-action border-0 d-flex py-3">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar-status status-offline me-3 avatar">
                                                        <img src="assets/media/avatars/02.jpg"
                                                            class="rounded-circle img-fluid" alt="">
                                                    </div>
                                                </div>
                                                <div class="overflow-hidden flex-grow-1">
                                                    <div class="d-flex">
                                                        <h6 class="mb-0 text-reset flex-grow-1">Abriella Bond
                                                        </h6>
                                                        <small class=" opacity-75 ms-auto">21/04/21</small>
                                                    </div>
                                                    <p class="mb-0 opacity-75 text-truncate">
                                                        <span>Lorem ipsum is placeholder text commonly used in
                                                            the
                                                            graphic, print</span>
                                                    </p>
                                                </div>
                                            </a>
                                            <!--Load more button-->
                                            <a href="#!"
                                                class="list-group-item px-3 align-items-center justify-content-center list-group-item-action d-flex py-3">
                                                <span>Load more</span>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!--content-right-->
                            <div class="content-right card rounded-0 align-items-stretch h-100">

                                <!--content right Header-->
                                <div class="content-right-header card-header px-4 border-bottom">

                                    <div class="me-3 d-md-none">
                                        <button type="button"
                                            class="content_sidebar_toggler text-body border-0 p-0 bg-transparent">
                                            <i data-feather="menu" class="fe-1x"></i>
                                        </button>
                                    </div>
                                    <div class="me-auto d-flex align-items-center">
                                        <div class="avatar-status d-none d-sm-flex status-online me-3 flex-shrink-0 avatar">
                                            <img src="assets/media/avatars/03.jpg" class="rounded-circle img-fluid"
                                                alt="">
                                        </div>
                                        <div>
                                            <h5 class="mb-0 lh-1">Adam Voges</h5>
                                            <span class="small lh-sm d-none d-sm-block">Active now</span>
                                        </div>
                                    </div>
                                    <!--Buttons group-->
                                    <div class="d-flex align-items-center">
                                        <a href="#!" class="text-body me-3">
                                            <i class="fe-1x" data-feather="video"></i>
                                        </a>
                                        <a href="#!" class="text-body me-3">
                                            <i class="fe-1x" data-feather="phone"></i>
                                        </a>
                                        <div>
                                            <a href="#" data-bs-toggle="dropdown" class="text-body"
                                                aria-expanded="false">
                                                <i data-feather="more-vertical" class="fe-1x"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end mt-1">
                                                <a href="#!.html" class="dropdown-item"><i data-feather="user"
                                                        class="fe-1x me-2 opacity-50"></i>Sender's profile</a>
                                                <a href="#!.html" class="dropdown-item"><i data-feather="archive"
                                                        class="fe-1x me-2 opacity-50"></i>Archive Chat</a>
                                                <a href="#!.html" class="dropdown-item"><i data-feather="trash-2"
                                                        class="fe-1x me-2 opacity-50"></i>Delete Chat</a>
                                                <a href="#!.html" class="dropdown-item"><i data-feather="slash"
                                                        class="fe-1x me-2 opacity-50"></i>Block Sender</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--content-right body-->
                                <div class="content-right-body card-body">
                                    <div class="flex-row-fluid ">

                                        <!--Alert-->
                                        <div
                                            class="alert d-none d-md-block border-0 shadow bg-gradient-primary text-white p-5 mb-4">
                                            <h5>Get more access with our paid plans</h5>
                                            <p class="text-truncate">
                                                Duis aute irure
                                                dolor in voluptate velit esse cillum dolore eu
                                                fugiat nulla pariatur.
                                            </p>
                                            <a href="#!" class="btn btn-gray">See upgrade options</a>
                                        </div>
                                        <!--Chat divider with day/month-->
                                        <div class="d-flex mb-4 align-items-center justify-content-center">
                                            <span class="d-block border-top flex-grow-1"></span>
                                            <div class="text-muted mx-3 small">
                                                Today</div>
                                            <span class="d-block border-top flex-grow-1"></span>
                                        </div>

                                        <!--Chat sender-->
                                        <div class="chat_in mb-4">
                                            <!--Chat box-->
                                            <div class="chat_content">
                                                <!--More dropdown-->
                                                <div
                                                    class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
                                                    <a href="#" data-bs-toggle="dropdown">
                                                        <i data-feather="chevron-down" class="fe-2x"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a href="#!" class="dropdown-item">Info</a>
                                                        <a href="#!" class="dropdown-item">Reply</a>
                                                        <a href="#!" class="dropdown-item">Forward</a>
                                                        <a href="#!" class="dropdown-item">Delete</a>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <!--text-->
                                                    <div class="chat_text">
                                                        Hi Noah, 🙂
                                                    </div>
                                                    <!--time-->
                                                    <div class="chat_time">
                                                        <span>12:33 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Chat box-->
                                            <div class="chat_content">
                                                <!--More dropdown-->
                                                <div
                                                    class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
                                                    <a href="#" data-bs-toggle="dropdown">
                                                        <i data-feather="chevron-down" class="fe-2x"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a href="#!" class="dropdown-item">Info</a>
                                                        <a href="#!" class="dropdown-item">Reply</a>
                                                        <a href="#!" class="dropdown-item">Forward</a>
                                                        <a href="#!" class="dropdown-item">Delete</a>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <!--text-->
                                                    <div class="chat_text">
                                                        Lorem ipsum is placeholder text commonly used in the graphic,
                                                        print, and publishing industries for previewing layouts and
                                                        visual mockups.
                                                    </div>
                                                    <!--time-->
                                                    <div class="chat_time">
                                                        <span>12:34 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--Chat Self-->
                                        <div class="chat_out">
                                            <!--Chat box-->
                                            <div class="chat_content">
                                                <!--More dropdown-->
                                                <div
                                                    class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
                                                    <a class="text-reset" href="#" data-bs-toggle="dropdown">
                                                        <i data-feather="chevron-down" class="fe-2x"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a href="#!" class="dropdown-item">Info</a>
                                                        <a href="#!" class="dropdown-item">Reply</a>
                                                        <a href="#!" class="dropdown-item">Forward</a>
                                                        <a href="#!" class="dropdown-item">Delete</a>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <!--text-->
                                                    <div class="chat_text">
                                                        Hi Noah, 🙂
                                                    </div>
                                                    <!--time-->
                                                    <div class="chat_time">
                                                        <span>12:33 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Chat box-->
                                            <div class="chat_content">
                                                <!--More dropdown-->
                                                <div
                                                    class="dropdown chat_dropdown position-absolute end-0 top-0 me-2 mt-1">
                                                    <a class="text-reset" href="#" data-bs-toggle="dropdown">
                                                        <i data-feather="chevron-down" class="fe-2x"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a href="#!" class="dropdown-item">Info</a>
                                                        <a href="#!" class="dropdown-item">Reply</a>
                                                        <a href="#!" class="dropdown-item">Forward</a>
                                                        <a href="#!" class="dropdown-item">Delete</a>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <!--text-->
                                                    <div class="chat_text">
                                                        Lorem ipsum is placeholder text commonly used in the graphic,
                                                        print, and publishing industries for previewing layouts and
                                                        visual mockups.
                                                    </div>
                                                    <!--time-->
                                                    <div class="chat_time">
                                                        <span>12:34 PM</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <!--content right footer-->
                                <div class="content-right-footer card-footer" data-dropzone-area="">
                                    <div class="dz-preview" id="dz-preview-row" data-horizontal-scroll="">
                                    </div>
                                    <form class="chat-form rounded-pill" data-emoji-form="">
                                        <div class="row align-items-center g-1">

                                            <div class="col">
                                                <div class="d-flex align-items-center">
                                                    <textarea class="form-control border-0 shadow-none bg-transparent"
                                                        placeholder="Type your message..." rows="1" data-emoji-input=""
                                                        data-autosize="true"></textarea>
                                                </div>
                                            </div>

                                            <div class="col-auto">
                                                <div class="btn-group">
                                                    <button type="button"
                                                        class="btn p-0 size-40 btn-outline-gray border text-muted d-flex align-items-center justify-content-center dz-clickable"
                                                        id="dz-btn">
                                                        <i data-feather="paperclip" class="fe-1x"></i>
                                                    </button>
                                                    <button type="button"
                                                        class="btn p-0 size-40 btn-outline-gray border text-muted d-flex align-items-center justify-content-center">
                                                        <i class="fe-1x" data-feather="smile"></i>
                                                    </button>
                                                    <button type="button"
                                                        class="btn p-0 size-40 text-body btn p-0 size-40 btn-outline-gray border text-muted d-flex align-items-center justify-content-center">
                                                        <i class="fe-1x" data-feather="send"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//Page content End//-->


                </main>
                <!--///////////Page content wrapper End///////////////-->
            </div>
        </div>
        
        <!--////////////Theme Core scripts Start/////////////////-->

        <script src="assets/vendor/feather.min.js"></script>
        <script src="assets/js/theme.bundle.js"></script>
        <script>
          feather.replace()
        </script>

        <!--////////////Theme Core scripts End/////////////////-->


        <script src="assets/vendor/dropzone.min.js"></script>
        <script>
            let e = new Dropzone("[data-dropzone-area]", {
                url: "https://httpbin.org/post",
                clickable: "#dz-btn",
                previewsContainer: "#dz-preview-row",
                previewTemplate: '\n<div class="theme-file-preview position-relative mx-2">\n<div class="avatar lg dropzone-file-preview">\n<span class="avatar-text rounded bg-secondary text-body file-title">\n<svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>\n</span>\n</div>\n\n<div class="avatar lg dropzone-image-preview">\n        <img src="#" class="avatar-img rounded-3 file-title" data-dz-thumbnail="" alt="" >\n    </div>\n\n    <a class="badge p-0 bg-white bg-opacity-25 text-white rounded-circle position-absolute top-0 end-0 m-1" href="#" data-dz-remove="">\n        <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="css-i6dzq1"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>\n    </a>\n</div>\n'
            });
            e.on("addedfile", (function (e) {
                    let o = document.querySelectorAll(".theme-file-preview");
                    o = o[o.length - 1].querySelectorAll(".file-title");
                    for (let i = 0; i < o.length; i++) o[i].title = e.name
                })),
                e.on("addedfiles",
                    (function (o) {
                        e.previewsContainer.classList.add("dz-preview-moved", "border-bottom", "pb-2", "mb-3")
                    })),
                e.on("reset",
                    (function (o) {
                        e.previewsContainer.classList.remove("dz-preview-moved", "border-bottom", "pb-2", "mb-3")
                    }))

        </script>

        <!--Chat sidebar toggler-->
        <script>
            $('.content_sidebar_toggler,.content-wrapper-overlay').on("click", function (e) {
                $('.content-expand-md').toggleClass("content_sidebar_show");
            });

        </script>
    </body>

</html>