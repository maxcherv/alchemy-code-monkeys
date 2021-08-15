trigger createContact on Account (after insert) {
    List<Contact> conListToInsert = new List<Contact>();
    for(Account acc : Trigger.New) {
        // Check if Contact is null on Account
        if (acc.Name == null) {
            Contact con = new Contact();
            // Add all required fields on Contact
            con.LastName = acc.Name;
            conListToInsert.add(con);
            
        }
    }
    if(!conListToInsert.isEmpty()) {
    insert conListToInsert;
    }
}