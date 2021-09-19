@isTest
public class GetProductsTest {
	@TestSetup
    public static void setup()
    {
        list<ProductTJ__c> products= new list<ProductTJ__c>();
        products.add(new ProductTJ__c( Carat__c=Integer.valueof((Math.random()*24)), 
                                          Product_Type__c='Rings', Product_Style__c='Halo', 
                                           Retail_Price1__c=(Math.random()*1000)));
        products.add(new ProductTJ__c(Carat__c=Integer.valueof((Math.random()*24)), 
                                          Product_Type__c='Bracelets', Product_Style__c='Bangle', 
                                           Retail_Price1__c=(Math.random()*1000)));
        products.add(new ProductTJ__c(Carat__c=Integer.valueof((Math.random()*24)), 
                                          Product_Type__c='Earrings', Product_Style__c='Hoop', 
                                           Retail_Price1__c=(Math.random()*1000)));
        products.add(new ProductTJ__c(Carat__c=Integer.valueof((Math.random()*24)), 
                                          Product_Type__c='Necklaces', Product_Style__c='Solitaire', 
                                           Retail_Price1__c=(Math.random()*1000)));
        products.add(new ProductTJ__c(Carat__c=Integer.valueof((Math.random()*24)), 
                                          Product_Type__c='Earrings', Product_Style__c='Drop', 
                                           Retail_Price1__c=(Math.random()*1000)));
        products.add(new ProductTJ__c(Carat__c=Integer.valueof((Math.random()*24)), 
                                          Product_Type__c='Rings', Product_Style__c='Cluster', 
                                           Retail_Price1__c=(Math.random()*1000)));
        
        insert products;
    }
    @isTest
    public static void getProductsTest()
    {

        list<ProductTJ__c> products = getProducts.getProducts('','','');
        system.assertEquals(6, products.size());
        /*
        products=getProducts.getProducts('PR-0000','','');
        system.assertEquals(1, products.size());
        products=getProducts.getProducts('PR-0000','Rings','');
        system.assertEquals(1, products.size());
        products=getProducts.getProducts('PR-0000','Bracelets','');
        system.assertEquals(0, products.size());
*/
        products=getProducts.getProducts('','Earrings','');
        system.assertEquals(2, products.size());
        products=getProducts.getProducts('','Earrings','Drop');
        system.assertEquals(1, products.size());
   /*     products=getProducts.getProducts('PR-0000','Rings','Halo');
        system.assertEquals(1, products.size());
*/
    }
}