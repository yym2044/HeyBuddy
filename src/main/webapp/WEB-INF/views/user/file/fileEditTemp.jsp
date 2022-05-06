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
        <link rel="stylesheet" href="/resource/assets/vendor/css/choices.min.css">

            <!--Bootstrap icons-->
            <link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

            <!--Google web fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap" rel="stylesheet">
        <!--Main style-->
        <link rel="stylesheet" href="assets/css/style.min.css" id="switchThemeStyle">
    </head>
<style>    
.addScroll {
	overflow-y: auto;
	height: 90px;
	background-color: gainsboro;
}

.input-file-button {
	padding: auto;
	cursor: pointer;
}
</style>

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
                        <div id="mailList" class="position-absolute left-0 top-0 d-flex flex-column w-100 h-100 align-items-stretch" data-simplebar>
                            <!--Email Header-->
                            <div class="position-sticky top-0 mb-2 px-4 px-lg-8 z-index-fixed">
                                <div class="d-flex align-items-center pb-2 flex-row justify-content-between">
                                    
                                    <div class="flex-grow-1">
                                        <a href="app-inbox.html" data-bs-placement="top" data-bs-toggle="tooltip" title="리스트" class="border text-body hover-bg-secondary btn btn-sm shadow-sm">
                                            <i data-feather="arrow-left" class="fe-1x me-lg-1"></i>   <span class="d-none d-lg-inline-block">Back</span>
                                        </a>

                                        <div class="btn-group btn-group-sm">

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!--Inbox Details-->
                            <div class="px-4 position-relative px-lg-8 mb-4 h-100 flex-grow-1">
                                <div class="card h-100">
                                    <div class="card-header">
                                        <div class="row justify-content-md-between">
                                            <div class="col-md d-flex mb-4 mb-md-0 align-items-center">
                                              <div class="avatar">
                                                <img class="rounded-circle" src="/resources/assets/media/avatars/02.jpg" alt="">
                                              </div>
                                              <div class="flex-1 ms-2">
                                                <h5 class="mb-0"><input type="text" class="form-control"
											placeholder="제목"> </h5>
										
                                              </div>
                                            </div>

                                          </div>
                                    </div>
                                    <div class="card-body flex-grow-1">
                                    <input type="text" class="form-control"
											name="ifmpNumber" value="  안녕하세요.임시저장되었던 내용입니다. 등록해보세요~ ">
                                       
                                        <hr>
                        
                                        <div class="d-flex flex-wrap">

                                        </div>
                                        
                                            <!--Attachment image-->
									<div class="row">
										<div class="col-md-12 mb-3">
											<label for="file0" class="form-label input-file-button">첨부파일
												<i data-feather="paperclip" class="fe-1x "></i>
											</label> <input class="form-control" id="file0" name="file0"
												type="file" multiple="multiple" style="display: none;"
												onChange="upload(0,2);">
											<div class="addScroll">
												<ul id="ulFile0" class="list-group"></ul>
											</div>
										</div>
									</div>
                                        
                                                  
                    			<div class="row text-center" style="width: 100%">
									<div style="width: 100%; float: none; margin: 0 auto">
									<a href="fileList">	<button type="button" class="btn btn-outline-secondary">뒤로</button> </a>
								<a href="fileView"> <button type="button" class="btn btn-primary ms-2">등록</button> </a>
									</div>
									
									<br> <br>

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
        
        <!--////////////Theme Core scripts Start/////////////////-->

        <script src="/resources/assets/vendor/feather.min.js"></script>
        <script src="/resources/assets/js/theme.bundle.js"></script>
        <script>
          feather.replace()
        </script>

        <!--////////////Theme Core scripts End/////////////////-->


    </body>

</html>
