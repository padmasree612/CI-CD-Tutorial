trigger findnoofcontacts on Contact (after insert,after delete) {
    
    Set<Id> accntIds = new Set<Id>();
    
    if(Trigger.isInsert)
    {
        System.debug('################ isInsert###########' +Trigger.isInsert);
        for(Contact con : Trigger.New)
        {
            accntIds.add(con.AccountId);
        }
    }
    if(Trigger.isDelete)
    {
        System.debug('################ isDelete###########' +Trigger.isDelete);
        for(Contact con : Trigger.Old)
        {
            accntIds.add(con.AccountId);
        }
        
    }
    
   futureExample.futureExampleMethod(accntIds);
   
   
   /*updateContact upa = new updateContact();
   Database.executeBatch(upa);*/

}