@isTest
public class TestHelper {
    public static void InsertProducts(Integer numProducts) {
        List<product2> productsToInsert = new List<product2>();
        for(Integer num = 0; num < numProducts; num++) {
            productsToInsert.add(new Product2(Retail_Price__c = 345 , Name='Test Product'+ num));
        }
        
        Insert productsToInsert;
    }
    
        // This also enables us to create data without having to insert it
    public static List<product2> CreateProducts(Integer numProducts) {
        List<product2> toReturn = new List<product2>();
        
        for(Integer num = 0; num < numProducts; num++) {
            toReturn.add(new Product2(Retail_Price__c = 345 , Name='Test Product'+ num));
        }
        
        return toReturn;
    }
    
}