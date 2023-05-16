trigger checkBoxtrue on Account (after insert) {
    set<id>setid=new set<id>();
        for(Account a : trigger.new){
            system.debug('a');
        setid.add(a.id) ;   
        }
    

}