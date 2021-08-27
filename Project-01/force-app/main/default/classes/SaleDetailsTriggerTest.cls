@isTest
public class SaleDetailsTriggerTest {

    @isTest/* PositiveTest */
    public static void testChangingInventory(){
        try{
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
        Sales_item__c p = new Sales_item__c(Sales_Number__c= s.Id, 
                                            T_J_Product__c=p1.Name, 
                                             Quantity__c = 3 ,   
                                             Retail_Price__c=230); 
        insert p;
        Test.stopTest();
    }
    catch (Exception e){
		e.setMessage('Fuck!');   
    }
    }  
    @isTest/* NegativeTest */
    public static void testCannotChangeProductInventory(){
       Test.startTest();
        try{
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
        	Sales_item__c si = new Sales_item__c(Sales_Number__c= s.Name, 
                                            T_J_Product__c=p1.Name, 
                                             Quantity__c = 30 ,   
                                             Retail_Price__c=230,Status__c='Completed'); 
            insert si;
      
        } catch(Exception e){
            System.assert(e.getMessage().contains('Something went wrong!'));
        }
        Test.stopTest();
    }
}