public class SalesController {
    List<Sales__c> salesList = [SELECT Id, Name, Account_Name__c, Sale_Date__c, Status__c, Total__c, Sales_Associate_Id__c FROM Sales__c WHERE Account_Name__C = :ApexPages.currentPage().getParameters().get('name') ORDER BY Sale_Date__c DESC LIMIT 10];
    //,(SELECT T_J_Product__c.Description__c FROM Sales_item__r )
    public List<Sales__c> getsalesList(){
        return salesList;
    }
    public PageReference save(){
        update salesList;
        return null;
    }

}