public class Demo_PlatFormEvent_Class
{
    public void publishEVENT(Id AccountId)
    {
        Account accntObj = [Select Id,CustomerPriority__c from Account where Id=:AccountId];
        accntObj.CustomerPriority__c = 'High';
        update accntObj;
       
        Demo_Event__e   eventObj = new Demo_Event__e(Account_Id__c = AccountId);
        Database.saveResult sr =  EventBus.publish(eventObj);
        if(sr.isSuccess())
        {
            System.debug('event subscribed successfully');
        }
        else
        {
            System.debug('error subscribed successfully');
        }
    }
}