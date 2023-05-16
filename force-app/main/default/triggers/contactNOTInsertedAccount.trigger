trigger contactNOTInsertedAccount on Account (before insert){
   set<id>setid=new set<id>();
    for(Account a:Trigger.New){
        setid.add(a.id);
        
    }
    List<contact>conlist=[select id,name,Account.Id,Account.name from contact where id In :setid];
    for(contact c :conlist){
        if(conlist.size()==null){
            c.adderror('do');
        }
    }
    
}