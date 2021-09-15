public with sharing class ContactUsFormController {
    
    @AuraEnabled
    public static Boolean emailMaker(String mySubject, String myBody, String toAddress){

        Boolean emailSendSuccess = false;
        String dispName = 'Test';
        String[] toAddresses = new List<String>();
        toAddresses.add(toAddress);

        Messaging.SingleEmailMessage myEmail = new Messaging.SingleEmailMessage();

        //Set email attributes
        myEmail.setToAddresses(toAddresses);
        myEmail.setSenderDisplayName(dispName);
        myEmail.setSubject(mySubject);
        myEmail.setPlainTextBody(myBody);
        system.debug(toAddresses);

        /*Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { myEmail });

        if(results[0].success){
            emailSendSuccess = true;
        }else{
            emailSendSuccess = false;
        }*/

        return emailSendSuccess;
    }

    @AuraEnabled
    public static List<User> getAvailableUsers(){

        List<User> availableUsers = new List<User>();
        String availableProfile = 'System Administrator';

        Profile profileId = [SELECT id FROM Profile WHERE name=:availableProfile LIMIT 1];
        system.debug(profileId);

        availableUsers = [SELECT name, SenderEmail FROM User WHERE ProfileId=:profileId.id];
        System.debug(availableUsers);
        return availableUsers;

    }

}