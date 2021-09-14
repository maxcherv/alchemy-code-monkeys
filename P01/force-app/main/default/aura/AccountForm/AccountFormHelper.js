({
	insertAccount : function(component, event, acc) {
		let action=component.get("c.addAccount");
        action.setParams(
            {"acc": acc});
        action.setCallback(this, function(response)
            {
                if(response.getState()==="SUCCESS")
                {
                    console.log("Account has been successfully inserted");
                 	component.set("v.Acc",{
                         'Name': '',
            'Email':'',
            'Phone':'',
            'ShippingStreet':'',
            'ShippingCity':'',
            'ShippingState':'',
            'ShippingPostalCode':'',
            'ShippingCountry':''  });

                    component.set("v.success",true);
        	}	
            else if (response.getState() === "ERROR"){
                console.log("Unable to insert account.");
                console.log(response.getError());
                 component.set("v.fail",true);
            }
            else{
                console.log("Unable to insert account.");
                console.log(response.getState());
                console.log(response);
                component.set("v.fail",true);
            }
        });
        $A.enqueueAction(action);
	}
})