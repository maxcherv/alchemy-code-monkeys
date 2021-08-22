@isTest
public class SaleDetailsTriggerTest {
    @testSetup
    public static void setup(){

       
        
    }
    @isTest/* PositiveTest */
    public static void testChangingInventory(){

        Test.startTest();
         ProductTJ__c p1 = new ProductTJ__c(
            							  Description__c= 'Ring Diamonds', 
                                          Retail_Price1__c=230,
                                          Quantity__c = 24
                                         );
        insert p1;
        Account acct = new Account(Name='Test Account',	Email__c='acct@mail.com');
        insert acct;
        Sales__c s = new Sales__c(Account_Name__c=acct.Id, Total__c=345);
        insert s;
        
        Test.stopTest();
    }
    
    
    @isTest/* NegativeTest */
    public static void testCannotChangeProductInventory(){
       Test.startTest();
        try{
        	 Sales_item__c s = new Sales_item__c(Sales_Number__c= 'SA-0038', 
                                            T_J_Product__c='PR-0001', 
                                             Quantity__c = 30 ,   
                                             Retail_Price__c=230,Status__c='Completed'); 
            insert s;
        ProductTJ__c p = new ProductTJ__c (); 
        p = [SELECT Id,Quantity__c FROM ProductTJ__c WHERE Name =: 'PR-0001'];
            System.assertEquals(21,p.Quantity__c,'This is a negative Test');
            
        } catch(Exception e){
            System.assert(e.getMessage().contains('Something went wrong!'));
        }
        Test.stopTest();
    }
}