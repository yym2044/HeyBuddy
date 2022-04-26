const BigPicture = require('bigpicture');
var elLightbox = document.querySelectorAll('[data-bigpicture]');
  elLightbox.forEach((
    function (e) {
      e.addEventListener("click", (function (t) {
        t.preventDefault();
        const n = JSON.parse(e.dataset.bigpicture),
          o = { ...{ el: e, noLoader: !0 }, ...n };
       new BigPicture(o)
      }
      ))
    }));