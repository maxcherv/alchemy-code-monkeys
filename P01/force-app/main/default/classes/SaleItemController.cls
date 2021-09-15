//Example for cartItem Controller
public class SaleItemController {
    
	public Id oppid{get;set;}

	Id id = apexpages.currentpage().getparameters().get('id');
    
    List<Shopping_Cart__c> shoppingItems = [SELECT Account__r.ID,Name, Quantity__c, T_J_Product__c, Account__c,  Total_Amount__c , T_J_Product__r.Image__c FROM Shopping_Cart__c WHERE Account__r.ID =: id  ];
    public List<Shopping_Cart__c> getshoppingItems(){      
        return shoppingItems;
    }
}