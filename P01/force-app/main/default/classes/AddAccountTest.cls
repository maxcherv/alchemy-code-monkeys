@isTest
public class AddAccountTest {
	@TestSetup
    public static void setup()
    {
        
    }
    @isTest
    public static void testAdd()
    {
       
        for(integer i =0; i<10; i++)
        {
            Account obj =new Account(Name= 'Test'+i,
            Email__c='Test'+i+'@mail.com',
            Phone='1234567890',
            ShippingStreet= i + ' Test Street',
            ShippingCity='Test City',
            ShippingState='Test',
            ShippingPostalCode='12345',
            ShippingCountry='Testland');
            AccountController.addAccount(obj);
        }
        list<Account> products = [SELECT Name, id FROM Account];
        system.assertEquals(products.size(), 10);
    }
}