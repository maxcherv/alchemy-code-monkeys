({
	GetProducts : function(component,event, name, type, style) {
		let action=component.get("c.getProducts");
        action.setParams(
            {"name": name,
             "type" : type,
             "style" : style});
        action.setCallback(this, function(response)
            {
                if(response.getState()==="SUCCESS")
                {
            		component.set("v.Products", response.getReturnValue());
        		}	
                else if (response.getState() === "ERROR")
                {
                
                }
                else{
                  
                }
        });
        $A.enqueueAction(action);
	}
})