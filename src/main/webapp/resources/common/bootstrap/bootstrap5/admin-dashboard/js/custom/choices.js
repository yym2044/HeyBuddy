const choices = require ('choices.js');
var el = document.querySelectorAll("[data-choices]");
el.forEach(e =>{
    const t = {
        ...e.dataset.choices ? JSON.parse(e.dataset.choices) : {}, ...{
            classNames: {
                containerInner: e.className,
                input: "form-control",
                inputCloned: "form-control-xs",
                listDropdown: "dropdown-menu",
                itemChoice: "dropdown-item",
                activeState: "show",
                selectedState: "active"
            }
        }
    }
    new choices(e,t)}
    );