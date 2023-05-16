trigger IntegerC on Account (before insert) {
   Set<Id> accset = new Set<id>();
        Integer numofcontacts =0;
        for(Account acc : Trigger.new){
            accset.add(acc.id);
        }
      map<id,account>mapAccount=new map<id,Account>();
       List<AggregateResult> aresult =[Select count(Id) cid from Contact where AccountId in :mapAccount.keySet() ];
        for( AggregateResult ar : aresult ){
            numofcontacts =(Integer) ar.get('cid');  
        }
        for(Account acc : trigger.new){
            if(numofcontacts >=2){
                acc.adderror('We cannot delete this');
            }
        }
    
}