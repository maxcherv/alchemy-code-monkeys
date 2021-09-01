@isTest
public class AddToCartTest {
	
    @isTest
    static void testAddToCart(){
        Test.startTest();
        
        Account acct = new Account();
        acct.Name = 'TestAccount';
        acct.Email__c = 'test@test.com';
        
        insert acct;
        
        ProductTJ__c prod = new ProductTJ__c();
        prod.Description__c = 'Test Product';
        prod.Retail_Price1__c = 100;
        
        insert prod;
        
        AddToCart atc = new AddToCart();
        atc.prod = prod;
        atc.acct = acct;
        atc.addCartItem();
        
        List<Shopping_Cart__c> cartItems = Database.query('select name, account__r.name, t_j_product__r.description__c from shopping_cart__c where account__c = \'' + acct.Id + '\'');
        
            System.assertEquals(cartItems.isEmpty(), false);
            
        Test.stopTest();
    }
}