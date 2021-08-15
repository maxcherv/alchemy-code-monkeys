@isTest
private class TestCreateAccount {
    @isTest static void TestCreateAccountWhenContactIsMade() {
        // Test data setup
   		// Create contact to trigger event 
        Contact con = new Contact(FirstName='Test', LastName='Account', Email='test@email.com');
        
        insert con;
        
        // Perform test
        Test.startTest();
        // Method checks if new contact is saved
        Database.SaveResult result = Database.insert(con, false);
        Test.stopTest();
        
        System.assert(result.isSuccess());
        System.assert(result.getErrors().size() != 0);
        
        
    }
}