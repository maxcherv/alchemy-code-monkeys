({
    doInit: function(component, event, helper) {
        
    },
    
    
	handleClick : function(component, event, helper) {
        let action = component.get("c.saveRequest");
        let temp1 = component.get("v.emailAttr");
        let temp2 = component.get("v.phoneAttr");
        let temp3 = component.get("v.requestAttr");
        action.setParams({"newEmail": component.get("v.emailAttr"), "newPhone": component.get("v.phoneAttr"), "newRequest": component.get("v.requestAttr")});
        action.setCallback(this, function(response) {
            console.log(response.getReturnValue());
        });
        $A.enqueueAction(action);
        
	}
})