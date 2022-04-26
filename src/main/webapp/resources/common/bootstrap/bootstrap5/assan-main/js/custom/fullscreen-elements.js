//Fullscreen navbar and search script
let fullscreen = {
    open: false,
    doClick: true,
    pos: 0,
    coverSpeed: 750,
  };
   let efs = document.querySelectorAll('[data-as-toggle="fullscreen"]');
      if (efs.length > 0) {
        for (let _i7 = 0; _i7 < efs.length; _i7++) {
          efs[_i7].addEventListener('click', function (_evt) {
            _evt.preventDefault();
  
            if (fullscreen.doClick === true) {
              fullscreen.doClick = false;
  
              if (document.body.classList.contains('fullscreen-open')) {
                document.body.classList.remove('fullscreen-open');
                document.body.classList.remove('fullscreen-lock');
                fullscreen.open = false;
                window.scrollTo(0, fullscreen.pos);
              } else {
                fullscreen.pos = Math.floor(window.pageYOffset);
                fullscreen.open = true;
                document.body.classList.add('fullscreen-open');
                setTimeout(function () {
                  document.body.classList.add('fullscreen-lock');
                }, fullscreen.coverSpeed);
              }
  
              setTimeout(function () {
                fullscreen.doClick = true;
              }, 250);
            }
          });
        }
      }