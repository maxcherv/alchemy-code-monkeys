public with sharing class AccountController {

    public static List<Account> getAllActiveAccounts() {
          List<Account> v1 = [SELECT Id,Name FROM Account ];
          return v1;
        }
      
}