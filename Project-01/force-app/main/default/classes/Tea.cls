public class Tea {
  
        public static void orderTea(){
            
            //set collections
            Set<String> teaTypes1 = new Set <String>();
            teaTypes1.add('Black');
            teaTypes1.add('White');
            teaTypes1.add('Herbal');
            //system.debug(teaTypes1);
            
            //set collections
            Set<String> teaTypes = new Set <String>{'Black', 'White', 'Herbal'};
            system.debug(teaTypes);
            teaTypes.add('Green');
            teaTypes.add('Black');
            //system.debug(teaTypes);
            
            //Map
            Map <String, String> mTeaTypes = new Map <String, String>();
            mTeaTypes.put('Black', 'Earthy');
            mTeaTypes.put('White', 'Sweet');
            mTeaTypes.put('Herbal', 'Sweet');
            //system.debug(mTeaTypes);
    		//System.debug('The flavorProfile of Herbal is: ' + mTeaTypes.get('Herbal'));
            
            //test
            List<Account> ls = [select Name from Account];
			Map<Id, Account> m = new Map<Id, Account>(ls);
            system.debug(m);
        }
    // chalenge 5
    public static void CreateMap(){
         	List<Account> listAccount= [SELECT Id, Name, (SELECT Id, Name FROM Contacts WHERE Email='info@email.com' OR Phone = '3425673423 'Limit 1) FROM Account WHERE Id='0015e00000GXM4uAAH'];

            map<Id,List<Contact>> AccContactMap = new map<id,List<Contact>>();

               
                    for(Account a : listAccount)
                    {
                        //AccContactMap.put(a.id, a.Contacts);
                        String oldName = a.Name;
                    
        					//Loop through related contact records

        						for(Contact contact: a.Contacts){

            					//Update display field

            					//System.debug(contact.FirstName);
								a.Name = contact.Name;
                               
								System.debug(a.Name);
            					}
                        		System.debug(oldName);
                        //a.Name = '366 Designs LLC';
                        //System.debug(a.Name);
                 	}

                    //System.debug(AccContactMap);
        			//System.debug(listAccount);
        }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}