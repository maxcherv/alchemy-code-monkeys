public with sharing class ContactUsFormController {
    
    @AuraEnabled
    public static Boolean emailMaker(String mySubject, String myBody, String toAddress){

        Boolean emailSendSuccess = false;
        String dispName = 'User Question';
        String[] toAddresses = new List<String>();
        String defaultAddress = 'max.chervinsky@gmail.com';
        
        //Accounts for first available
        //Ideally add this to a queue if possible
        if(toAddress == ''){

            toAddress = defaultAddress;

        }
        toAddresses.add(toAddress);

        Messaging.SingleEmailMessage myEmail = new Messaging.SingleEmailMessage();

        //Set email attributes
        myEmail.setToAddresses(toAddresses);
        myEmail.setSenderDisplayName(dispName);
        myEmail.setSubject(mySubject);
        myEmail.setPlainTextBody(myBody);

        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { myEmail });

        //Determines if the action was successful
        if(results[0].success){
            emailSendSuccess = true;
        }else{
            emailSendSuccess = false;
        }

        return emailSendSuccess;
    }

    @AuraEnabled
    public static List<User> getAvailableUsers(){

        //Declares variables
        List<User> availableUsers = new List<User>();
        String availableProfile = 'System Administrator';

        //Queries org for the profile then the individuals who fit that profile
        Profile profileId = [SELECT id FROM Profile WHERE name=:availableProfile LIMIT 1];

        availableUsers = [SELECT name, email FROM User WHERE ProfileId=:profileId.id];
        return availableUsers;

    }

}