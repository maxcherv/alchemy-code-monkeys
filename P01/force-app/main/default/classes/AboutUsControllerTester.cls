@isTest
public with sharing class AboutUsControllerTester {

    //variable declarations
    static string MockAppointmentName = 'John Cleese';
    static string MockInspiration = 'To acquire the finest cheese London has to offer.';
    static Datetime MockAppointmentDateTime = DateTime.newInstance(1997, 1, 31, 7, 8, 16);
   

    @TestSetup
    static void makeData(){
        
        //Create a new VipAppointment Record
        VipAppointment__c MockAppointment = new VipAppointment__c();
        MockAppointment.Name = MockAppointmentName;
        MockAppointment.DateTime__c = MockAppointmentDateTime;
        MockAppointment.Inspiration__c = MockInspiration;

        INSERT MockAppointment;
    }

    @isTest
    public static void AppointmentMakerTester(){
        Test.startTest();
        string testedFirstName = 'John';
        string testedLastName ='Cleese';
        string testedName ='John Cleese';
        string testedInspiration = 'To acquire the finest cheese London has to offer.';
        Datetime testedDateTime = DateTime.newInstance(1997, 1, 31, 7, 8, 16);
        Boolean result = AboutUsController.AppointmentMaker(testedFirstName, testedLastName, testedInspiration, testedDateTime );
        Boolean testMarker = false;
        
        VipAppointment__c AppointmentActual = [SELECT id, name, DateTime__c, Inspiration__c FROM VipAppointment__c WHERE name=:testedName LIMIT 1];
        if(AppointmentActual.name==testedName){
            testMarker = true;
        }

        System.assertEquals(result, testMarker);

        Test.StopTest();


    }
}
