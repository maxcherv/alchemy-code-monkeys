trigger DoctorTrigger on Doctor__c (before insert) {
//	List<Doctor__c> docList = [SELECT Id,Doctor_Email__c, Name  FROM Doctor__c WHERE  Id IN: Trigger.new];
    
    List<String> docNullEmailList = new List<String>();   
    List<Doctor__c> docEmailList = [SELECT Id,Name, Doctor_Email__c   FROM Doctor__c WHERE Doctor_Email__c = '' ];
    for(Doctor__c c: docEmailList){
        docNullEmailList.add(c.Doctor_Email__c);
    }        
    for(Doctor__c d: trigger.new){
        if( d.Doctor_Email__c == '' ){    
            docEmailList.add( new Doctor__c (Doctor_Email__c ='SchedulingEmail@email.com')
  //          docEmailList.add(d);
           );
        }            
    }
//   insert docEmailList;
}