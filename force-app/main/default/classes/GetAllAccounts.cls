public without sharing class GetAllAccounts{
    list<Account>acc=[select id,name,Rating,Phone from Account];
    
    public list<account> getacc(){
        return acc;
    }

}