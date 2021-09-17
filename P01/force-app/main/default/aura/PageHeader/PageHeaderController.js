({
    TabWasClicked : function(component, event, helper) {

        event.preventDefault();
        let outerText = event.target.outerText;
        if(!outerText){
            outerText = "CART";
        }
        
        let myEvent = component.getEvent("TabClicked");

        myEvent.setParams({
            "TabName" : outerText
        });

        myEvent.fire();

    }
})