public class SalesObjectHandler {

//update sales status when return acquire    
public static void CheckForChildRecord(List<Sales__c> updateSales) {

    List <Sales_item__c> MychildList  = new List<Sales_item__c> ();
    List <Return_Sale__c> MychildList2  = new List<Return_Sale__c> ();
    
        
        for (Sales__c s : updateSales) {
            
        //sales item table    
        MychildList = [SELECT Id FROM Sales_item__c
                     WHERE Sales_Number__c =: s.Name];
        		
         //Return table    
        MychildList2 = [SELECT Id FROM Return_Sale__c
                     WHERE Sales_Number__c =: s.Name];
   
            //delete sale only if it has not been return            
            if(MychildList2.Size()!=0){
            s.AddError('Can not delete the sale');
            }  
            else {
                delete MychildList;
                delete s;
                
            }
        }   
}
    
    public static void ChangeStatus(List<Sales__c> updateSales) {

    List <Sales_item__c> MychildList  = new List<Sales_item__c> ();
    //List <Return_Sale__c> MychildList2  = new List<Return_Sale__c> ();
    
        
        for (Sales__c s : updateSales) {
            
         
}
    
}
}