({
	handleSuccess : function(component, event, helper) {
		var succ = event.getParam("success");
        component.set("v.success", succ);
	}
})