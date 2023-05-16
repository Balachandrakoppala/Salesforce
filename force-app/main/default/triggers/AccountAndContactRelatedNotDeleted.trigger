trigger AccountAndContactRelatedNotDeleted on Account (Before delete){
    set<id>setid=New set<id>();
    for(Account a:Trigger.old){
        setid.add(a.id);
        
    }
    map<id,Account>accmap=New map<id,Account>([select id ,name,(select id,name from Contacts) from Account where Id In :setid]);
    for(Account a1 :trigger.old){
        if(accmap.get(a1.id).contacts.size()>0){
            a1.adderror('do not delete');
        }
    }
}