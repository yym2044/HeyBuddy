//sidebar layout style
$(".sidebar-trigger").on("click",function () {
    $('body').toggleClass("page-sidebar-mini");
    $(this).toggleClass("active")
  });
  
  $(".sidebar-trigger-lg-down").on("click",function () {
    $('body').addClass("page-sidebar-in");
  });
  $(".sidebar-close a").on("click",function () {
    if($('body').hasClass('page-sidebar-in')){
      $('body').removeClass('page-sidebar-in')
   }
  });
  $(window).on("resize",function() {
    if ($(window).width() > 992) {
      $('body').removeClass('page-sidebar-in')
    }
  })

