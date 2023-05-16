trigger SampleTrigger on Contact (after update){
    Set<String> accIdSet = new Set<String>();   
    for(Contact conObj : Trigger.New){
        if(conObj.LastName != 'SFDC'){
            accIdSet.add(conObj.accountId);
        }
    }
    // Use accIdSet in some way to update account
}