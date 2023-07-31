trigger AccountTrigger on Account (before insert,before update, after insert, after update) {
    
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate))
    {
        AccountTriggerHandler.emailMandate(Trigger.new);
        AccountTriggerHandler.updateAccountBranch(Trigger.new);
    }
    
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate))
    {
        AccountTriggerHandler.insertOpportunity(Trigger.new);
        AccountTriggerHandler.updatePhone(Trigger.new);
    }

}