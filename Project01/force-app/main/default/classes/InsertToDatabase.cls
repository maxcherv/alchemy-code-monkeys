///////////////////////////////////////////////////////////////
//
// Name: Challenge to Apex
// Author: Huguette Mpudi
// Created: 8/4/2021
// Last Modified: 8/34/2021
// Create a class that has a method to add 151 accounts, with unique names, to your org.(edited)
// Query for the accounts you made, and then remove only those accounts from the database.
//
///////////////////////////////////////////////////////////////
public class InsertToDatabase {

        public static void InsertData(){
                //create a list 
                List<Account> lstAccount = new List<Account>();
                //create an instance of the object Account
                Account myAccount;   
                //populate the list
                        for(integer i = 0; i < 150; i++){
                        //some logic
                        myAccount = New Account(name ='Huguette'+string.valueof(i));
                        lstAccount.add(myAccount);
                        }
                //insert all in database        
                insert lstAccount;
        }
    
        //retrieve data
        public static void ListData(){
            //select account name from table Account
                List<Account> myResult = [SELECT Name FROM Account];
        }

        //retrieve data
        public static  void DeleteData(){
            //select account id from table Account
                List<Account> myResultToDelete = [SELECT id FROM Account WHERE Name LIKE 'Huguette%' ];
                Database.DeleteResult[] deleteList = Database.delete(myResultToDelete, false);
        }
    
                  //retrieve data //chalenge III
        public static void ContactWithoutEmailOrPhone(){
            //select account id from table Account
                List<Contact> myResultToUpdate = new List<Contact>();
                    for (Contact c:[SELECT Id,Email,Phone FROM Contact WHERE Email = Null AND Phone = Null])
                        {
                            c.Email = 'info@email.com';
                            c.Phone = '342 567 3423';
                            //System.debug(c.Email);
                            myResultToUpdate.add(c);
                        }
            		System.debug(myResultToUpdate);
            	 	update myResultToUpdate;
                    }
            //Create a map of Accounts to Contacts with a default email or phone value
            //
        public static void CreateMap(){
            
            	map<Id,List<Contact>> accContactMap = new map<id,List<Contact>>();

                List<Account> listAccount = [SELECT Id,Name, (SELECT Id ,Name FROM Contacts WHERE Email='info@email.com' OR Phone = '3425673423 ') FROM Account ];

                    for(Account a : listAccount)
                    {
                        accContactMap.put(a.id, a.Contacts);
                        System.debug(a.Contacts);
                    }

                    //System.debug(accContactMap);
        	}

     //switch the Account and Contact names. 
			public static void switchAccountName(){
    			map<Id,List<Contact>> accContactMap = new map<Id,List<Contact>>();
                
                 List<Account> listAccount = [SELECT Id, (SELECT Name FROM Contacts WHERE Email='info@email.com' OR Phone = '3425673423 ') FROM Account ];


                    for(Account a : listAccount)
                    {
                        accContactMap.put(a.id, a.Contacts);
                        
                         //System.debug(a.Name);
                        //System.debug(a.Contacts);
                        
                    }
                
                for(Id d: accContactMap.keyset()){
                    System.debug(accContactMap.get(d));
                
                  		for(Contact c: accContactMap.get(d)){
                			//System.debug(c.Name);   
                    }
                    
                    //System.debug(accContactMap.get(id));   
                    //System.debug(accContactMap);    




                }
            }}