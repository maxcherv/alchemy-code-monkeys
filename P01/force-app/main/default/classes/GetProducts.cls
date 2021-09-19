public class GetProducts {
	@AuraEnabled
    public static list<ProductTJ__c> getProducts(string name, string type, string style)
    {
        String query ='SELECT Name, Carat__c, Product_Type__c, Product_Style__C, Retail_Price1__c FROM ProductTJ__c';
                   
        Boolean add = false;
        if(name!='' )
        {
            if(!add)
            {
                query+=' WHERE ';
            }
            query = query + 'Name LIKE :name';
            add=true;
        }
         if(type!='')
        {
            if(!add)
            {
                query+=' WHERE ';
            }
            if(add)
            {
                query+=' AND ';
            }
            query= query + ' Product_Type__c=:type';
            add=true;
            if(style!='')
            {
               
                query= query + ' AND Product_Style__c=:style' ;
            }
        }
        system.debug(query);
        list<ProductTJ__c> results = database.query(query);
        
        system.debug(results);
        return results;
    }  
}