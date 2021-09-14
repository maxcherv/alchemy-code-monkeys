public class AccountController {
	@AuraEnabled
    public static Account addAccount(Account acc)
    {
        system.debug(acc);
      
            upsert acc;
            return acc;
        
       
    }
}