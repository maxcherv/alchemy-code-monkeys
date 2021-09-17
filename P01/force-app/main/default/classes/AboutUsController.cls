public with sharing class AboutUsController {

    @AuraEnabled
    public static Boolean AppointmentMaker(String FirstName, String LastName, String Inspiration, DateTime AppointmentDate){
        String Fullname = FirstName+LastName;
        VipAppointment__c Appointment = new VipAppointment__c(Name=Fullname, DateTime__c = AppointmentDate);
        database.insert(Appointment);
        System.debug(Appointment);

        return true;

    }
	
}