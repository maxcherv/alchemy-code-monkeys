({
    TabWasClicked : function(component, event, helper) {

        event.preventDefault();
        let outerText = event.target.outerText;
        if(!outerText){
            
            //Add logic to allow for non-labeled icons
            outerText = event.currentTarget.id;

        }
        
        let myEvent = component.getEvent("TabClicked");

        myEvent.setParams({
            "TabName" : outerText
        });

        myEvent.fire();

    }
})