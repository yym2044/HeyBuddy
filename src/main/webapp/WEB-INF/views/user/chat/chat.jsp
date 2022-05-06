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

            <!--Bootstrap icons-->
            <link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

            <!--Google web fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">

        <!--Simplebar css-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">

        <!--Choices css-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

        <!--dropzone-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/dropzone.min.css">

        <!--Main style-->
        <link rel="stylesheet" href="/resources/assets/css/style.min.css" id="switchThemeStyle">
        
    </head>
    
<link rel="stylesheet" href="/resources/user/css/heyBuddyStyle.css">
    
    <body>
    
<%@include file="../include/loader.jsp"%>

        <!--App Start-->
        <div class="d-flex flex-column flex-root">
            <!--Page-->
            <div class="page d-flex flex-row flex-column-fluid">
            
               <%@include file="../include/pageSideBar.jsp"%>

                <!--///////////Page content wrapper///////////////-->
                <main class="page-content d-flex flex-column flex-row-fluid">

				<%@include file="../include/pageHeader.jsp"%>

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
                                                        <h6 class="mb-0 flex-grow-1"> 김나리
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
                                                        <h6 class="mb-0 text-reset flex-grow-1"> Jason Doe </h6>
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
                                                        <h6 class="mb-0 text-reset flex-grow-1"> Dwayne Bravo
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
                                                        <h6 class="mb-0 text-reset flex-grow-1"> Nikita Miller
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
                                                        <h6 class="mb-0 text-reset flex-grow-1" >Dylan Ambrose
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
                                                        <h6 class="mb-0 text-reset flex-grow-1"> Abriella Bond
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
                                            <img src="/resources/assets/media/avatars/03.jpg" class="rounded-circle img-fluid"
                                                alt="">
                                        </div>
                                        <div>
                                            <h5 class="mb-0 lh-1"> 김나리 </h5>
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

        <script src="/resources/assets/vendor/feather.min.js"></script>
        <script src="/resources/assets/js/theme.bundle.js"></script>
        <script>
          feather.replace()
        </script>

        <!--////////////Theme Core scripts End/////////////////-->


        <script src="/resources/assets/vendor/dropzone.min.js"></script>
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
