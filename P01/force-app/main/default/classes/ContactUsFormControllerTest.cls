@isTest(SeeAllData=true)
public with sharing class ContactUsFormControllerTest {

    @isTest
    static void emailMaker_TCustom(){

        Test.startTest();
        String subject = 'Test subject';
        String body = 'Test body';
        String address = 'acureisinsight@gmail.com';

        try{
            ContactUsFormController.emailMaker(subject, body, address);
        }catch(System.exception e){
            system.assertEquals(true, false);
        }
        Test.stopTest();

    }

    @isTest
    static void emailMaker_TEmpty(){

        Test.startTest();
        String subject = '';
        String body = '';
        String address = '';

        try{
            ContactUsFormController.emailMaker(subject, body, address);
        }catch(System.exception e){
            system.assertEquals(true, false);
        }
        Test.stopTest();

    }

    @isTest
    static void getAvailableUsers_T(){

        Test.startTest();

        Profile profileId = [SELECT id FROM Profile WHERE name=:'System Administrator' LIMIT 1];

        List<User> testList = [SELECT name, email FROM User WHERE ProfileId=:profileId.id];
        system.debug(testList);
        List<User> userList = ContactUsFormController.getAvailableUsers();
        system.debug(userList);

        System.assertEquals(testList, userList);

        Test.stopTest();
    }

}