public with sharing class AboutUsController {

    @AuraEnabled
    public static Boolean AppointmentMaker(String FirstName, String LastName, String Inspiration, DateTime AppointmentDate){
        VipAppointment__c Appointment = new VipAppointment__c();

        Appointment.Name = FirstName + LastName;
        Appointment.DateTime__c = AppointmentDate;
        System.debug(Appointment);

        return true;

    }
	
}