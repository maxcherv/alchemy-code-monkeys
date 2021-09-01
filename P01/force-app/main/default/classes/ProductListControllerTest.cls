@isTest
public class ProductListControllerTest {

 
    //Each of the two test methods here gives a 83 test coverage
 @isTest static void testgetNewProducts(){
     
      ProductTJ__c p = new ProductTJ__c(Description__c= 'Diamonds studs', Retail_Price1__c=1200,Category__c='New Arrival');
       insert p;
       
     Test.StartTest();
     
List<ProductTJ__c> results = [SELECT Id, Description__c, Retail_Price1__c, Product_Type__c,Category__c,Image__c FROM ProductTJ__c WHERE Category__c=:'New Arrival'];
          
 
     Test.StopTest();
  
    
}
 @isTest static void testgetTrendingProducts(){
           
      ProductTJ__c p = new ProductTJ__c(Description__c= 'Diamonds studs', Retail_Price1__c=1200,Category__c='Trending');
       insert p;

       
     Test.StartTest();
     
          List<ProductTJ__c> results = [SELECT Id, Description__c, Retail_Price1__c, Product_Type__c,Category__c,Image__c FROM ProductTJ__c WHERE Category__c=:'Trending'];
          
 
     Test.StopTest();
  
    
}
 @isTest static void  testgetAllProducts(){
      
      ProductTJ__c p = new ProductTJ__c(Description__c= 'Diamonds studs', Retail_Price1__c=1200,Category__c='sale');
       insert p;
       
     Test.StartTest();
     
      List<ProductTJ__c> results = [SELECT Id, Description__c, Retail_Price1__c, Product_Type__c,Category__c,Image__c FROM ProductTJ__c WHERE Category__c=:'Sale'];
          
 
 
     Test.StopTest();
  
    
}
}