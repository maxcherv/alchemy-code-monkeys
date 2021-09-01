public class AddToCart {
    public ProductTJ__c prod {get;set;}
    public Account acct {get; set;}
    
    public AddToCart(ApexPages.StandardController controller){
        prod = (ProductTJ__c)controller.getRecord();
        acct = [select id, name from account limit 1];
    }
    
    public AddToCart(){}
    
    public void addCartItem(){
        Shopping_Cart__c cartItem = new Shopping_Cart__c();
        cartItem.Account__c = acct.Id;
        cartItem.T_J_Product__c = prod.Id;
        cartItem.Quantity__c = 1;
        insert cartItem;
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Item added to cart.'));
    }
}