trigger UpdatePhoneOnAccount on Contact (After Update){
    map<Id,String>conmap=New map<Id,String>();
      for(Contact c:Trigger.new){
        if(c.phone!=trigger.oldmap.get(c.AccountId).phone){
            if(c.AccountId!=null){
            conmap.put(c.accountId,c.Phone);    
            }
            
    }
    // fetech the related data 
    list<Account>acclist=[select id,phone from Account where id in:conmap.keySet()];
        for(Account ac:acclist){
            if(conmap.containsKey(ac.Id)){
                ac.Phone=conmap.get(ac.Id);
               
            }
        }
        
        Update acclist;
    
    
    }

}
