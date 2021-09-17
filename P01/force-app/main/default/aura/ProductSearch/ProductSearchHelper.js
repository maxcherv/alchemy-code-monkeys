({
	GetProducts : function(component,event, name, type, style) {
		let action=component.get("c.getProducts");
        action.setParams(
            {"name": name,
             "type" : type,
             "style" : style});
        action.setCallback(this, function(response)
            {
                console.log(response.getState());
                if(response.getState()==="SUCCESS")
                {
                    console.log("Data Retrieved");
            		component.set("v.Products", response.getReturnValue());
                    console.log(component.get("v.Products"));
        		}	
                else if (response.getState() === "ERROR")
                {
                    component.set("v.Products", '');
                	console.log("Data Not Retrieved");
                }
                else{
                  console.log("Data Not Retrieved");
                }
        });
        $A.enqueueAction(action);
	}
})