({
    changeView : function(component, event, helper) {

        let newTab = event.getParam("TabName");

        console.log(newTab);

        //Clear all values here
        component.set("v.home", false);
        component.set("v.shop", false);
        component.set("v.aboutUs", false);
        component.set("v.contact", false);
        component.set("v.jewelry", false);
        component.set("v.cart", false);
        component.set("v.account", false);
        component.set("v.search", false);

        //Select which to turn on
        switch(newTab){

            case "HOME":
                component.set("v.home", true);
                break;
            case "SHOP":
                component.set("v.shop", true);
                break;
            case "ABOUT US":
                component.set("v.aboutUs", true);
                break;
            case "CONTACT":
                component.set("v.contact", true);
                break;
            case "JEWELRY":
                component.set("v.jewelry", true);
                break;
            case "CART":
                component.set("v.cart", true);
                break;
            case "MY ACCOUNT":
                component.set("v.account", true);
                break;
            case "SEARCH":
                component.set("v.search", true);
                break;

        }

    }
})
