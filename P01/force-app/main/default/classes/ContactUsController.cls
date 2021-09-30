public class ContactUsController {
	@AuraEnabled
    public static ContactRequest saveRequest(string newEmail, string newPhone, string newRequest){
        ContactRequest d = new ContactRequest(
        Email__c = newEmail,
        PreferredPhone = newPhone,
        RequestDescription = newRequest
        );
        System.debug(newRequest);
        insert d;
        return d;
    }
}