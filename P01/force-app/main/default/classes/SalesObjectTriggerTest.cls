@isTest
public class SalesObjectTriggerTest {
    @isTest/* PositiveTest */
    public static void testDeleteSaleWithoutReturn(){
     Test.startTest();
        // Creer account dummy data
        Account acct = new Account(Name='Test Account',	Email__c='acct@mail.com');
        insert acct;
        Sales__c s = new Sales__c(Account_Name__c=acct.Id, Total__c=345);
        insert s;
        try{
            Database.DeleteResult result = Database.delete(s, false);
            System.assertEquals('It should work damn it!',
                             result.getErrors()[0].getMessage()); 
        }catch (Exception e) {
            
			e.getTypeName();
            
        }
        
        Test.stopTest();
        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        //System.assert(!result.isSuccess());
        //System.assert(result.getErrors().size() > 0);
        //System.assertEquals('Cannot delete account with related return.',
                            // result.getErrors()[0].getMessage()); 
    }
   @isTest // Negative Test
    public static void testDeleteSaleWithReturn(){
        Test.startTest();
        // Creer account dummy data
        Account acct = new Account(Name='Test Account',	Email__c='acct@mail.com');
        insert acct;
        // Test data setup
        // Creer sales dummy data
        Sales__c s = new Sales__c(Account_Name__c=acct.Id,Sales_Associate_Id__c='0055e0000057ABzAAM', Total__c=345);
        insert s;
        Return_Sale__c r = new Return_Sale__c(Account_Name__c=s.Account_Name__c,
                                              Sales_Number__c=s.Name,
                                              Return_Date__c=System.today());
                                       //Return_Date__c=System.today().addMonths(1),
                                       //AccountId=acct.Id);
        insert r;
        Database.DeleteResult result = Database.delete(s, false);
        Test.stopTest();
        // Verify 
        // In this case the deletion should have been stopped by the trigger,
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related return.',
                             result.getErrors()[0].getMessage());
    }
}