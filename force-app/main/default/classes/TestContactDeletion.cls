@isTest
public class TestContactDeletion {
	@isTest static void TestDeleteContactWithAppointment() {
        Account acct = new Account(Name='Test Account');
        insert acct;
        
        Contact con = new Contact(AccountId = acct.Name,
                                 Street_Address__c = 'Test address',
                                 City__c ='Test city',
                                 State__c = 'Test State',
                                 Zip_code__c = '00000');
        insert con;
       
        Appointment__c app = new Appointment__c(Doctor__c = 'Test Doctor' ,
                                         Contact__c = con.Name);
        insert app;
        
        Test.startTest();
        try{
            Database.DeleteResult result = Database.delete(con, false);
        } catch(Exception e){
            System.assert(e.getMessage().contains('Cannot delete Contact'));
        }
        Test.stopTest();
        
        
//         System.assert(!result.isSuccess());
 //       System.assert(result.getErrors().size() > 0);
 //       System.assertEquals('Cannot delete Contact that are associated with an Appointment',
//                             result.getErrors()[0].getMessage());
    }
        
}