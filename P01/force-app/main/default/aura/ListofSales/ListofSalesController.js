({
	doInit : function(component, event, helper) {
			component.set('v.columns', [
            {label: 'Sales Number', fieldName: 'Name', type: 'auto number'},
            {label: 'Account Name', fieldName: 'Account_Name__c', type: 'text'},
            {label: 'Closed Date', fieldName: 'DateClosed__c', type: 'date'}
        	]);
        	var action1 = component.get("c.getSales");
        	var action2 = component.get("c.getAccounts");
        	/*var test1 = false;
        	var test2 = false;*/
                action1.setCallback(this, function(response){
                	let state = response.getState();
                	if(component.isValid() && state === "SUCCESS") {
                		component.set("v.salesData", response.getReturnValue());
                        component.set("v.test1", true);
                	}
                    /*test1 = component.get("v.test1");
                    test2 = component.get("v.test2");
                    if(test1 && test2)
                    {
                        helper.fixAccountName(component);
                    }*/
                });
                action2.setCallback(this, function(response){
                	let state = response.getState();
                	if(component.isValid() && state === "SUCCESS") {
                		component.set("v.accountData", response.getReturnValue());
                        component.set("v.test2", true);
                	}
                    /*test1 = component.get("v.test1");
                    test2 = component.get("v.test2");
                    if(test1 && test2)
                    {
                        helper.fixAccountName(component);
                    }*/
                });
            $A.enqueueAction(action1);
            $A.enqueueAction(action2);
	}
})