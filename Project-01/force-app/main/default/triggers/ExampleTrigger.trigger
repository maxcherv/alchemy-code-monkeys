trigger ExampleTrigger on Contact (before insert, after insert, after delete) {

    // We should be able to handle every case
    switch on trigger.operationType {
        when BEFORE_INSERT { 
         Integer recordCount = Trigger.New.size();
        // Call a utility method from another class
        EmailManager.sendMail('hugmpudi2@gmail.com', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were inserted.');
         System.debug(recordCount);     
        }
        when BEFORE_UPDATE { 
            // Fires on Upsert and Merge
           System.debug('my before update');   
        }
        when BEFORE_DELETE {
            // Fires on Merge
          System.debug('my before delete');   
        }
        when AFTER_INSERT { 
            // Fires on Upsert 
            System.debug(Trigger.New.size());   
 		
        }
        when AFTER_UPDATE { 
            // Fires on Upsert and Merge
		System.debug(Trigger.Old);
        }
        when AFTER_DELETE { 
            // Fires on Merge
        System.debug('my after delete');   
        }
        when AFTER_UNDELETE {
          System.debug('my after undelete');   
        }
    }
}