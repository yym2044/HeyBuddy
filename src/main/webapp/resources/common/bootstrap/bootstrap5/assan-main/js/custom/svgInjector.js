import SVGInjector from 'svg-injector';
//Inject the svg
var mySVGsToInject = document.querySelectorAll('[data-inject-svg]');
// Options
var injectorOptions = {
    evalScripts: 'once'
  };
  SVGInjector(mySVGsToInject,injectorOptions);