trigger AccounDonottRelatedNotDeleted on Contact (before Delete){
    Set<id> accId = new Set<id>();  
    for(Contact con : Trigger.old)  {  
        
        accId.add(con.AccountId);
        
    }  

    list<Account> lstAcc = [Select Id,(Select Id from contacts) from Account where id in :accId];

    for(Contact acc : trigger.old)
    {
        if(lstAcc.Size() > 0){
            acc.adderror('contact cannot be deleted');
        }
    } 
}