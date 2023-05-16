trigger updatephoneContact on Account (After Update){
    Map<id,Account>accid=New Map<Id,Account>();
    for(Account a:Trigger.new){
        if(a.phone!=trigger.oldmap.get(a.id).phone){
        accid.put(a.id,a);
        }
    }
    list<contact>listcontact=new list<contact>();
    List<contact>conlist=[select id,Name,Account.Phone from contact where AccountId In :accid.keyset()];
    for(contact c :conlist){
        if(accid.containsKey(c.Accountid)){
            c.Phone=accid.get(c.AccountId).phone;
            listcontact.add(c);
        }
        if(listcontact.size()>0){
            update listcontact;
        }
    }   

}