public with sharing class AccountFormController {
    public Account accRecord {get;set;}
    // define the acc variables that are being inserted 
    // expresson syntax 
	// <apex:inputField value="{!acc.Name}" />
	
    public AccountFormController(ApexPages.StandardController stdController) {
        this.accRecord = (Account)stdController.getRecord();
    }

    public PageReference save() {
        try {
            upsert accRecord;
            
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Record submited successfully'));
    
            accRecord = new Account(); 
            return null; 
    	} catch(System.DMLException e) {
            //ApexPages.addMessages(e);
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please enter Account Name'));
            return null;
        }
    }
}
