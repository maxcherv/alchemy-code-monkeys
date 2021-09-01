public class CartItemController {

    public List<Shopping_Cart__c> getcartItems(){
        List<Shopping_Cart__c> cartItems = [SELECT Account__r.Id,Name, Quantity__c, T_J_Product__c, Account__c,  Total_Amount__c , T_J_Product__r.Image__c FROM Shopping_Cart__c   ];
        return cartItems;
    }
}