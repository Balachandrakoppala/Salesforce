trigger Notcreated on Contact (before insert) {
    for(contact c:trigger.new){
        if(c.AccountId==null){
            c.addError('please enter name');
        }
    }
}