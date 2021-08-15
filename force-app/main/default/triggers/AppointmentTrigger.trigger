trigger AppointmentTrigger on Appointment__c (before insert) {
    List <Appointment__c> AppList = [SELECT Id, Doctor__r.Name, App_DateTime__c FROM Appointment__c];
                        
    for (Appointment__c a : Trigger.new ) {
        for(Appointment__c b : AppList){ 
            if(a.Doctor__c.equals(b.Doctor__c) && (a.App_DateTime__c == b.App_DateTime__c)){
                 a.addError(
            		'Appointment is not available. Please pick another date and time');
            }
        }
    }
}