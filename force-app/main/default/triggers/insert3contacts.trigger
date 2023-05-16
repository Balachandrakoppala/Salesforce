trigger insert3contacts on Account (After insert) {
    list<contact>conlist=new list<contact>();
    for(Account a :trigger.new){
       string existingId=a.id;
        string existingName=a.Name;
        string existingPhone=a.Phone;
    for(integer index=1; index<=3; index++){
       contact con = new contact();
          con.LastName=existingName+'-'+string.valueOf(index);
         con.AccountId=existingId;
          con.Phone=existingPhone;
              conlist.add(con);
        
        } 
        insert conlist;
      }

}