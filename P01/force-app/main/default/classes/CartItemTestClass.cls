@isTest
public class CartItemTestClass {
    /*@isTest 
    static void myCartItemTest(){
        Account testAcc = new Account();
        testAcc.Name = 'accT';
        insert testAcc;
            
        ProductTJ__c testProd = new ProductTJ__c();
        testProd.Product_Type__c = 'testProd';
        testProd.Retail_Price1__c = 100;
        insert testProd;
        
        Shopping_Cart__c testItem = new Shopping_Cart__c (
        							Account__c = testAcc.Id,
            						Quantity__c = 2,
        							T_J_Product__c = testProd.Name);
        insert testItem;
        
	Test.startTest();
       
//instantiate a page      
PageReference pageRef = Page.cart;
 //VF page name CartItemPage is the starting point of this test method      
 pageRef.getParameters().put('id',testItem.Id);
        Test.setCurrentPage(pageRef);    
     //   ApexPages.currentPage().getParameters().put('id',testItem.Id);
//instantiate and construct the controller class        
CartItemController c = new CartItemController();
        List<Shopping_Cart__c> sc =c.getcartItems();
        //pageRef.getParameters().put('id',testItem.Id)
  //      CartItemController.getcartItems()
  
	//ApexPages.StandardController sc = new ApexPages.standardController(testItem);
	
	Test.stopTest();
        
	System.assertEquals(1,sc.size());
}

*/
    }