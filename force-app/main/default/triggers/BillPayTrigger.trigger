trigger BillPayTrigger on Payment__c (after insert, after update) {
    Set<Id> paySet= new Set <Id> ();
    List<Payment__c> payList = [SELECT Bill__r.Id FROM Payment__c WHERE Id IN:Trigger.new ];
    for (Payment__c c: payList){
        paySet.add(c.Bill__r.Id);
    }
    List<Bill__c> billList = [SELECT Id,Bill_Status__c FROM Bill__c ];
    for(Bill__c b: billList){
        if(paySet.contains(b.Id)){ 
            b.Bill_Status__c = 'Paid';
        }
    }
     update billList;
}

/*
trigger BillPayTrigger on Payment__c (after insert, after update) {
    List<Bill__c> billList = [SELECT Id,Bill_Status__c FROM Bill__c ];
    for(Bill__c b: billList){        
        b.Bill_Status__c = 'Paid'; 
    }   
     update billList;
}
*/