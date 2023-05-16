public with sharing class AccControler {
    @AuraEnabled(cacheable=true)
    public  static list<Account> getAcclist(){
        return=[select id,name,phone from Account limit 10];

    }
}