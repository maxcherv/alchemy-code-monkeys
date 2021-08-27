public class ApexOopTrealmix {
    /*
   public static void sObjectsInsert(){
        Account store = new Account();
        store.Name = 'The Tea Factory';
        store.AccountNumber = '356281';
        store.Phone = '555-0158';
        insert store;
    }
*/
    public static void sObjectsInsert(Integer value){
        Integer counter = 1;
        //create a list to add our accounts
        List<Account> teaFactoryAccounts = new List<Account>();
        //Account store = new Account();
        while(counter <= value){
            Account store = new Account();
            //create a new account
            store.Name = 'The Tea Factory ' + counter;
            store.AccountNumber = '35629' + counter;
            teaFactoryAccounts.add(store);
            //increment the counter
            counter = counter + 1;     
        }
        System.debug('Elements in Account List: ' + teaFactoryAccounts);
        //insert all of the accounts in the list
        insert teaFactoryAccounts;
    }
}