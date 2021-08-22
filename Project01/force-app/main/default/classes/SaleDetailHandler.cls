public class SaleDetailHandler {
    
  //Flow took care of this too
    public static void CheckDuplicate(List<Sales_item__c> insertSalesItems) {

        List <Sales_item__c> myDuplicate = new List<Sales_item__c> ();
       
        
        for (Sales_item__c s : insertSalesItems) {
            
        myDuplicate = [SELECT Id FROM Sales_item__c
                     WHERE T_J_Product__c =: s.T_J_Product__c AND
                     Sales_Number__c =: s.Sales_Number__c];
			
            if(myDuplicate.Size()!=0){
            s.AddError('do not save Duplicate');
            }  
            else {
               
                ChangeProductInventory(insertSalesItems);
                
            }
        }   
            
    }     

    //Second Method
    public static void ChangeProductInventory(List<Sales_item__c> updateSalesItems) {
        
        List <ProductTJ__c> p = new List <ProductTJ__c> ();
        
        for (Sales_item__c s : updateSalesItems) {
            
        p = [SELECT Id,Quantity__c FROM ProductTJ__c WHERE Id =: s.T_J_Product__c AND Quantity__c >: s.Quantity__c];
                
                
                    
                    if(p.Size()==0){
            				s.AddError('Quantity exceded our inventory please place a special order');
            				}
            
            		else {
               				for (ProductTJ__c p1 :p){
                			p1.Quantity__c = (p1.Quantity__c - s.Quantity__c);
                	 		update p1;   
                
            				}
                }
 
            }
        }	
}