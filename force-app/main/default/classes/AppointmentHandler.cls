public class AppointmentHandler {
/*	Public static void isInsert(){
    List <Appointment__c> myAppointment = new List <Appointment__c>();
	
      for (Integer i=1; i<4;i++) {
      Appointment__c a = new Appointment__c(Doctor__c= String.valueOf('D-001') + i, Contact__c = 'TBA');
      myAppointment.add(a); 
        
        }
	insert myAppointment;
        
    }

public class AccountHandler {
	
    // In a before trigger, we can modify the records before they are committed
    // Another best practice is to bulkify your trigger
    public static void ValidateAccounts(List<Account> modifiedAccounts) {
        
        // Trigger is set up to work for multiple records, no DML or SOQL in loops
        for(Account currAccount : modifiedAccounts) {
            if(!IsValid(currAccount)) {
                currAccount.addError('Account not selected.');
            }
            else {
                currAccount.name += ' was selected!';
            }
        }
        // Note that we don't insert here. This would cause the before insert trigger to fire again
        // Which leads us to our final best practice: avoid trigger recursion
    }
    
    // This would contain your complex validation logic
    private static Boolean IsValid(Account currAccount) {
        
        // Simple validation logic should be handled in a validation rule
        String name = currAccount.name;
        Integer value = Integer.valueOf(name.substring(4));
        return Math.mod(value, 2) == 0 && Math.mod(value, 6) == 0;
    }
    
    
    // -------- AFTER TRIGGER ---------
    
    
    // In an after trigger, fields are read only but we can modify other objects and access system fields
    public static void ChangeContacts(List<Account> modifiedAccounts) {
        
        // Consolidate all the changed contacts to do a single DML statement at the end
        List<Contact> newContacts = new List<Contact>();
        for(Account currAccount : modifiedAccounts) {
            
            // Perform our logic
            newContacts.add(CreateLinkedContact(currAccount));
        }
        
        Insert newContacts;
    }
    
    // Keep our complex logic outside of the loop to simplify our method
    private static Contact CreateLinkedContact(Account acc) {
        Contact newContact = new Contact();
        
        // Common uses of after triggers are to change other objects or access system fields, like ID
        newContact.firstName = 'Contact for';
        newContact.lastName = acc.name;
        newContact.accountId = acc.id;
        return newContact;
    }
}


/*
Execute Anonymous Code:
List<Account> toDelete = [SELECT id FROM Account WHERE name LIKE 'Acc%'];
Delete toDelete;

List<Account> myAccounts = new List<Account>();

for(Integer i = 0; i < 25; i++) {
    myAccounts.add(new Account(name = 'Acc ' + i));
}

Database.insert(myAccounts, false);

--------------------------------
// Best practice for triggers is to have 1 trigger per object
// Because of this, we should set them up to be easily added to in the future
trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    // We should be able to handle every case
    switch on trigger.operationType {
        when BEFORE_INSERT { // Fires on Upsert
            // We use a handler class to keep our trigger logicless as a best practice
            // This makes it easier to maintain
            AccountHandler.ValidateAccounts(trigger.new);
        }
        when BEFORE_UPDATE { // Fires on Upsert and Merge
            
        }
        when BEFORE_DELETE { // Fires on Merge
            
        }
        when AFTER_INSERT { // Fires on Upsert
            AccountHandler.ChangeContacts(trigger.new);
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
    
    // Also acceptable:
    // -------------------------------------
    if (trigger.isBefore) {
        if (trigger.isInsert) {
            
        }
        else if (trigger.isUpdate) {
            
        }
        else if (trigger.isDelete) {
            
        }
    }
    else if (trigger.isAfter) {
        if (trigger.isInsert) {
            
        }
        else if (trigger.isUpdate) {
            
        }
        else if (trigger.isDelete) {
            
        }
        else if (trigger.isUndelete) {
            
        }
    }
}

*/



   
}