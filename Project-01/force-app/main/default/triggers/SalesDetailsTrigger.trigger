trigger SalesDetailsTrigger on Sales_item__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    switch on trigger.operationType {
        when BEFORE_INSERT { 
           
            SaleDetailHandler.CheckDuplicate(trigger.new);
           
        }
        when BEFORE_UPDATE { 

          SaleDetailHandler.ChangeProductInventory(trigger.new);  
         
        }
        when BEFORE_DELETE {
            
        }
        when AFTER_INSERT { 
           
            
        }
        when AFTER_UPDATE { 

        }
        when AFTER_DELETE { 
            
        }
        when AFTER_UNDELETE {
            
        }
    }
    

}