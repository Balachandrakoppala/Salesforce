trigger countNameOnAccount on Account (before insert,before update){
    for(Account a:trigger.old){
        for(Account acc:trigger.new){
            if((acc.id==a.id)&&(acc.name!=a.name)){
                acc.Count__c=acc.Count__c;
            }   
            }
        }
    

}