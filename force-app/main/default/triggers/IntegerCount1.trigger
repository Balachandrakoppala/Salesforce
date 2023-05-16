trigger IntegerCount1 on Contact (after insert, after update, after undelete) {
  Set<Id> accountIds = new Set<Id>();
  for(Contact c: Trigger.new) {
    accountIds.add(c.AccountId);
  }
  Set<Id> morethan2Contacts = new Map<Id, AggregateResult>([SELECT AccountId Id FROM Contact WHERE AccountId = :accountIds GROUP BY AccountId HAVING COUNT(Id) > 2]).keySet();
  for(Contact c1: Trigger.new) {
    if(moreThan2Contacts.contains(c1.AccountId)) {
      c1.AccountId.addError('You may not have more than 0 contacts per account.');
    }
  }
  }