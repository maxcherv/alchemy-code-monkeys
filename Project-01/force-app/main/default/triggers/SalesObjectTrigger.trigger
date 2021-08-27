trigger SalesObjectTrigger on Sales__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
 switch on trigger.operationType {
     
        when BEFORE_INSERT { 
            
            //handle by flow
        }
        when BEFORE_UPDATE { // Fires on Upsert and Merge
           //class handler 
           //SalesObjectHandler(); 
           
       
        }
        when BEFORE_DELETE { // Fires on Merge
            
           SalesObjectHandler.CheckForChildRecord(trigger.new) ;
              
        }
        when AFTER_INSERT { // Fires on Upsert
            
            SalesObjectHandler.ChangeStatus(trigger.new);
        }
        when AFTER_UPDATE { // Fires on Upsert and Merge
            
            
            
            // Can use trigger.old here
        }
        when AFTER_DELETE { // Fires on Merge
            // Can use trigger.old here
        }
        when AFTER_UNDELETE {
            
        }
    }
    
}