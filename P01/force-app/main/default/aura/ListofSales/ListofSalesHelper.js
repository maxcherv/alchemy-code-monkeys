({
	fixAccountName : function(component) {
        let temp1 = component.get("v.salesData");
        let temp2 = component.get("v.accountData");
        if(temp1 != null && temp2 != null)
        {
        	for(let i = 0; i < temp1.length; i++)
        	{
            	for(let j = 0; j < temp2.length; j++)
            	{
                	if(temp1[i].Account_Name__c == temp2[j].id)
                	{
                    	temp1[i].Account_Name__c = temp2[j].Name;
                	}
            	}
        	}
    	}
        component.set("v.salesData",temp1);
        console.log(temp1);
	}
})