@isTest 
public class MyTestClass {

@testSetup
    public static void SetupTests() {

        // Here, we create our testing data
        List<product2> productsToInsert = new List<product2>();
        for(Integer num = 0; num < 25; num++) {
            productsToInsert.add(new Product2(Retail_Price__c = 345 , Name='Test Product'+ num));
        }
        
        Insert productsToInsert;
        
        // Remember, ID's do not exist until inserted into the database
        // Triggers will still fire on DML statements
    }
    
}