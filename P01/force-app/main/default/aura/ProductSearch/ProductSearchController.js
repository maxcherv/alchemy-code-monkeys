({
    DoInit: function(component, event, helper)
    {
        component.set("v.Fields", 
                      [
                          	{label: 'Product Name', fieldName: 'Name', type: 'text'},
                      		{label: 'Carat', fieldName: 'Carat__c', type: 'number'},
                            {label: 'Product Type', fieldName: 'Product_Type__c', type: 'text'},
                            {label: 'Product Style', fieldName: 'Product_Style__c', type: 'text'},
                            
                      {label: 'Price', fieldName: 'Retail_Price1__c', type: 'currency'}
                            
                      ]);
    }
},{
	searchProducts : function(component, event, helper) {
		var name=component.get("v.SearchName");
        var type = component.get("v.SearchType");
        var style=component.get("v.SearchStyle");
        var products = helper.GetProducts(component, event, name, type, style);
       
	}
})