//Retreive products from 
public class ProductListController {

    public List<ProductTJ__c> getProducts() {
    List<ProductTJ__c> results = [SELECT Id, Description__c, Retail_Price1__c, Product_Type__c,Category__c,Image__c FROM ProductTJ__c WHERE Category__c=:'New Arrival'];
    return results;
}
    
    public List<ProductTJ__c> getTrendingProducts() {
    List<ProductTJ__c> results = [SELECT Id, Description__c, Retail_Price1__c, Product_Type__c,Category__c,Image__c FROM ProductTJ__c WHERE Category__c=:'Trending'];
    return results;
}

public List<ProductTJ__c> getAllProducts() {
    List<ProductTJ__c> results = [SELECT Id, Description__c, Retail_Price1__c, Product_Type__c,Category__c,Image__c FROM ProductTJ__c];
    return results;
}




}