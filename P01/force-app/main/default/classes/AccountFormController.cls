public class AccountFormController {
    // So user cannot edit Account
    private final Account acct;
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    
    // Must make this instantiation public to be seen by form
    public AccountFormController(ApexPages.StandardController stdController) {
        this.acct = (Account)stdController.getRecord();
    }
    
    // Fixes crash
    public PageReference save() {
        try {
            upsert acct;
            
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Record submited successfully'));
            
            return null; 
        } catch(System.DMLException e) {
            //ApexPages.addMessages(e);
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please enter Account Name'));
            return null;
        }
    }
}