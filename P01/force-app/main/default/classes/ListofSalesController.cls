public class ListofSalesController {
	@AuraEnabled
    public static List<Sales__c> getSales(){
        return [SELECT Id, Name, Account_Name__c, DateClosed__c FROM Sales__c];
    }
    @AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT Id, Name FROM Account];
    }
}