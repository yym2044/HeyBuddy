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

        <!--Page style-->
        <link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">

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
                    <div class="toolbar pt-4 px-4 px-lg-8 pb-0">
                        <div class="position-relative container-fluid px-0">
                            <div class="row align-items-center position-relative">
                                <div class="col-md-8 mb-3 mb-lg-0">
                                    <h3 class="mb-1">내 계정</h3>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb mb-0">
                                            <li class="breadcrumb-item"><a href="#!">Home</a></li>
                                            <li class="breadcrumb-item active">Account</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//Page Toolbar End//-->

                    <!--//Page content//-->
                    <div class="content pt-4 px-4 px-lg-8 pb-0 d-flex flex-column-fluid">
                        <div class="container-fluid px-0 h-100">

                            <div class="row h-100">
                                <div class="col-lg-3">
                                    <!--Account nav-->
                                    <div class="card p-3">
	                                    <ul class="nav nav-tabs nav-vertical h-100">
	                                        <li class="nav-item">
	                                            <a href="account-general.html" class="nav-link active px-3">
	                                                <i data-feather="user" class="fe-1x align-middle me-2"></i>내 정보
	                                            </a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="account-billing.html" class="nav-link px-3">
	                                                <i data-feather="file-text" class="fe-1x align-middle me-2"></i>결제
	                                            </a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="account-security.html" class="nav-link px-3">
	                                                <i data-feather="shield" class="fe-1x align-middle me-2"></i>보안
	                                            </a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a href="account-notifications.html" class="nav-link px-3">
	                                                <i data-feather="bell" class="fe-1x align-middle me-2"></i>알림
	                                            </a>
	                                        </li>
	                                    </ul>
                                    </div>
                                </div>
                                <div class="col-lg-9">
                                    <!--Card-->
                                    <div class="card mb-4" data-aos="fade-up" data-aos-delay="500">
                                        <div class="card-body">

                                            <div class="row justify-content-between align-items-center">
                                                <div class="col-12">
                                                    
                                                    <h5 class="mb-3 ps-5">
                                                        프로필 사진
                                                    </h5>
                                                    <div class="row align-items-end">
                                                        <div class="col-md-auto col-12 mb-4 mb-md-0">

                                                            <!-- Avatar -->
                                                            <div class="position-relative">
                                                                <div class="avatar size-140">
                                                                    <img class="img-fluid rounded-pill"
                                                                        src="/resources/assets/media/avatars/08.jpg" alt="...">
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-md col-12">
                                                            <div class="d-flex align-items-center">
                                                                
                                                                <!--Upload Button -->
                                                                <div
                                                                    class="position-relative">
                                                                    <input type="file" class="d-none w-0 h-0 position-absolute" id="profile-upload">
                                                                    <label for="profile-upload" data-bs-toggle="tooltip"
                                                                        data-bs-placement="bottom" title="Update photo"
                                                                        class="btn btn-primary me-3">
                                                                        Upload photo
                                                                    </label>
                                                                </div>

                                                                <!--Delete button-->
                                                                <button type="button" class="btn link-body p-0" data-bs-toggle="tooltip"
                                                                data-bs-placement="bottom" title="Delete photo">
                                                                    <i class="fe-2x" data-feather="trash-2"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div> <!-- / .row -->
                                                </div>
                                            </div>

                                            <hr class="my-4">

                                            <form>
                                                <div class="row">
                                                    <div class="col-12 col-md-6 mb-3">

                                                        <!-- First name -->
                                                        <div class="form-group">

                                                            <!-- Label -->
                                                            <label class="form-label" for="user_fname">
                                                                이름
                                                            </label>

                                                            <!-- Input -->
                                                            <input type="text" value="윤영민" class="form-control"
                                                                id="user_fname" readonly>
                                                        </div>

                                                    </div>
                                                    <div class="col-12 col-md-6 mb-3">

                                                        <!-- ID -->
                                                        <div class="form-group">

                                                            <!-- Label -->
                                                            <label class="form-label" for="user_fid">
                                                                아이디
                                                            </label>

                                                            <!-- Input -->
                                                            <input type="text" value="yym2044" class="form-control"
                                                                id="user_fid" readonly>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-6 mb-3">

                                                        <!-- Label -->
                                                        <label class="form-label" for="user_phone">
                                                            휴대전화
                                                        </label>

                                                        <!-- Input -->
                                                        <input class="form-control" type="text"
                                                            data-inputmask='"mask": "(999)9999-9999"'
                                                            placeholder="(___)___-____" id="user_phone">
                                                    </div>
                                                    <div class="col-12 col-md-6 mb-3">

                                                        <!-- Label -->
                                                        <label class="form-label" for="user_phone">
                                                            유선전화
                                                        </label>

                                                        <!-- Input -->
                                                        <input class="form-control" type="text"
                                                            data-inputmask='"mask": "(999)999-9999"'
                                                            placeholder="(___)___-____" id="user_phone">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                	<div class="col-12 col-md-6 mb-3">

                                                        <!-- Label -->
                                                        <label class="form-label" for="user_email">
                                                            이메일
                                                        </label>
                                                        <!-- Input -->
                                                        <input class="form-control" id="user_email" type="email"
                                                            placeholder="john@doe.com">

                                                        <small class="text-muted">This email will be shown to
                                                            publicly.</small>

                                                    </div>
                                                    <div class="col-12 col-md-6 mb-3">
                                                        <label for="birthday" class="form-label">Birthday</label>

                                                        <!--Input-->
                                                        <input type="text" id="birthday" name="birthday"
                                                            class="form-control">
                                                    </div>
                                                    <!-- <div class="col-12 col-md-6 mb-3">
                                                        <label for="user-currency" class="form-label">Currency</label>

                                                        select
                                                        <select name="user-currency" id="user-currency"
                                                            class="form-control" data-choices='{"searchEnabled":false}'>
                                                            <option value="USD">USD - USA Dollar</option>
                                                            <option value="Euro">GBP - British Pound</option>
                                                            <option value="USD">AUD - Australian Dollar</option>
                                                            <option value="USD">INR - Indian Rupee</option>
                                                        </select>
                                                    </div> -->
                                                </div>
                                                <div class="row">
                                                    <div class="col-12 col-md-6 mb-3">

                                                        <!-- Profile public or private -->
                                                        <div class="p-3 border rounded">

                                                            <div class="row">
                                                                <div class="col-auto">

                                                                    <!-- Check / Uncheck -->
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            id="switchVisible">
                                                                        <label class="form-check-label"
                                                                            for="switchVisible">Public profile</label>
                                                                    </div>

                                                                </div>
                                                            </div> <!-- / .row -->
                                                        </div>

                                                    </div>
                                                    <div class="col-12 col-md-6 mb-3">

                                                        <!-- Profile available for hire -->
                                                        <div class="p-3 border rounded">
                                                            <div class="row">
                                                                <div class="col-auto">

                                                                    <!-- Check / Uncheck -->
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            id="switchTwo" checked="">
                                                                        <label class="form-check-label"
                                                                            for="switchTwo">Available for hire</label>
                                                                    </div>

                                                                </div>
                                                            </div> <!-- / .row -->
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="text-end">
                                                    <button type="button" id="profile_save" class="btn btn-primary">Save Changes</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row justify-content-between align-items-center">
                                                <div class="col-12 col-md-9">

                                                    <!-- Delete heading -->
                                                    <h4>
                                                        계정 탈퇴
                                                    </h4>

                                                    <!-- Delete text -->
                                                    <p class="small text-muted mb-md-0">
                                                        <strong>Note:</strong>
                                                        deleting your account is a permanent action and will no longer
                                                        recoverable.
                                                    </p>

                                                </div>
                                                <div class="col-auto">

                                                    <!--Delete Button -->
                                                    <button class="btn btn-danger">
                                                        Delete
                                                    </button>

                                                </div>
                                            </div>
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
        
        <!--On Profile Save notification-->
        <div id="profile_notification_saved" role="alert" data-bs-autohide="true" data-bs-delay="3000" aria-live="assertive" aria-atomic="true" class="position-fixed start-50 top-0 translate-middle-x mt-4 z-index-fixed p-3 mb-4 overflow-hidden rounded-3 border-0 bg-success text-white shadow-lg toast hide">
            <div class="d-flex align-items-center">
                <div class="size-60 me-4 text-success rounded-circle shadow bg-tint-success d-flex align-items-center justify-content-center">
                 <i data-feather="check-circle" class="fe-3x"></i>
                </div>
                <div class="flex-grow-1">
                    <h5 class="text-reset mb-0">Information saved</h5>
                    <p class="mb-0 opacity-75">Your account has been updated!</p>
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



        <!--Toast notification-->
        <script>
                      var toastTrigger = document.getElementById('profile_save')
var toastLiveExample = document.getElementById('profile_notification_saved')
if (toastTrigger) {
  toastTrigger.addEventListener('click', function () {
    var toast = new bootstrap.Toast(toastLiveExample)

    toast.show()
  })
}
        </script>
        <!--Page script begin-->
        <script src="/resources/assets/vendor/inputmask.min.js"></script>
        <script>
            Inputmask().mask(document.querySelectorAll("[data-inputmask]"));
        </script>

        <!--Birthday Calendar-->
        <script src="/resources/assets/vendor/moment.min.js"></script>
        <script src="/resources/assets/vendor/daterangepicker.js"></script>
        <script>
            $(function () {
                $('input[name="birthday"]').daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true,
                    minYear: 1901,
                    maxYear: parseInt(moment().format('YYYY'), 10)
                });
            });
        </script>
    </body>

</html>
