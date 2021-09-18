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
        List <Commision__c> Listcomm = new List <Commision__c> ();
        Sales__c assc = new Sales__c ();
        
        
        for (Sales_item__c s : updateSalesItems) {
 		assc = [SELECT Id, Sales_Associate_Id__c FROM Sales__c WHERE Id =: s.Sales_Number__c];
        //Creates brain new commission
       //check if comm for sales associate existe 
       
        Listcomm = [SELECT Id,Total_Amount__c FROM Commision__c WHERE Sales_Associate__c =: assc.Sales_Associate_Id__c AND Status__c='Active' ]; 
        
            if (Listcomm.size()==0){
                
                Commision__c myc = new Commision__c(Commision_Period__c=System.today(),
                                            Sales_Associate__c=assc.Sales_Associate_Id__c,
                                            Total_Amount__c=s.Commision_Amount__c,
                                           	Status__c='Active');

            insert myc;
            
            }
            
            else {
                
                for(Commision__c l:Listcomm){
                    
				Commision__c ob = new Commision__c();                    
                    
                   ob.Total_Amount__c = l.Total_Amount__c + s.Commision_Amount__c ;
                   ob.Sales_Associate__c = assc.Sales_Associate_Id__c;
                   ob.Id = l.Id ;
                    
                   update ob;
                    
                }
                
                
            }
            
        
		
       // myc.add(s.Commision_Amount__c);
            
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