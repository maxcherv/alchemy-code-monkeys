public class AccountHanler {
    Public static void isInsert(){
    List <Account> myAccount = new List <Account>();
	
      for (Integer i=1; i<6;i++) {
      Account a = new Account(Name='Dummy'+i);
      myAccount.add(a); 
        }
	insert myAccount;
        
    }

}