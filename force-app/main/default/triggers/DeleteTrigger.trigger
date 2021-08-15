trigger DeleteTrigger on Contact (before delete) {
    List<Contact> conList = [SELECT  Contact_ID__c FROM Contact WHERE Id IN (SELECT Contact__c FROM Appointment__c)  AND Id IN :Trigger.old];
    for(Contact c: conList){
        Trigger.oldMap.get(c.Id).addError(
            //comment
            'Cannot delete Contact that are associated with an Appointment');
    }
}