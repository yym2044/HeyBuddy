
var e = {
    init: function () {
        e.darkMode(); 
    },
    isVariableDefined: function (el) {
        return typeof !!el && (el) != 'undefined' && el != null;
    },
    select: function (selectors) {
        return document.querySelector(selectors);
    },
    selectAll: function (selectors) {
        return document.querySelectorAll(selectors);
    },

    // START: 24 Dark mode
    darkMode: function () {

        let theme = localStorage.getItem('data-theme');
        var style = document.getElementById("switchThemeStyle");
        var dir = document.getElementsByTagName("html")[0].getAttribute('dir');

        var changeThemeToDark = () => {
          document.documentElement.setAttribute("data-theme", "dark") // set theme to dark
          if(dir == 'rtl') {
              style.setAttribute('href', 'assets/css/style.dark-rtl.min.css');
          } else {
              style.setAttribute('href', 'assets/css/style.dark.min.css');
          }
          localStorage.setItem("data-theme", "dark") // save theme to local storage
        }
        var changeThemeToLight = () => {
          document.documentElement.setAttribute("data-theme", "light") // set theme light
          if(dir == 'rtl') {
              style.setAttribute('href', 'assets/css/style-rtl.min.css');
          } else {
              style.setAttribute('href', 'assets/css/style.min.css');
          }      
          localStorage.setItem("data-theme", 'light') // save theme to local storage
        }
        if(theme === 'dark'){
          changeThemeToDark()
        } else if (theme == null || theme === 'light' ) {
          changeThemeToLight();
        }

        const dms = e.select('.switch_modes');
        if (e.isVariableDefined(dms)) {
            dms.addEventListener('click', () => {
              let theme = localStorage.getItem('data-theme'); // Retrieve saved them from local storage
              if (theme ==='dark'){
                  changeThemeToLight()
              } else{
                  changeThemeToDark()
              }
            });
        }
    },
};
e.init();
