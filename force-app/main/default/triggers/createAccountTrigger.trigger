trigger createAccountTrigger on Contact (before insert) {
    List<Account> accListToInsert = new List<Account>();
    for(Contact cont : Trigger.New) {
        //check if account is null on contact
        if(cont.AccountId == null ) {
            Account a = new Account();
            //Add all required field on Account
            a.Name = cont.FirstName + '' + cont.LastName;
            a.Email__c = cont.Email;
            accListToInsert.add(a);
        }
    }
    if(!accListToInsert.isEmpty()){
    insert accListToInsert;
    }
	
}