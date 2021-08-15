trigger CustomerTotalPoints on Order (after insert, after update) {
    
    Map<Id, Account> acc = new Map<Id, Account>();
    List<Id> listIds = new List<Id>();
    
    // For every order that is inserted, fire trigger
    for(Order o:Trigger.new) {
        listIds.add(o.AccountId);
    }
    
    // Orders is child relationship name in Order Object
    Map<Id, Account> parentAccount = new Map<Id, Account>([SELECT Id, Points__c, (SELECT Id, Points__c FROM Orders) FROM Account WHERE Id IN :listIds]);
    
    for(Order ord:Trigger.new) {
        if(ord.Points__c != Null) {
            Account a = parentAccount.get(ord.AccountId);
            a.Points__c = ord.Points__c + a.Points__c;
        }
    }
    UPDATE parentAccount.values();
}