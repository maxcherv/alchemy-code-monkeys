({
	validateRequestForm : function(component) {
        var allValid = component.find('requestField').reduce(function(validFields, inputCmp){
            inputCmp.showHelpMessageIfInvalid();
            return validFields && inputCmp.get('v.validity').valid;
        })
	}
})