public class AccountTriggerHandler
{
    //Created a method for Email as mandatory
    public static void emailMandate(List<Account> accnts)
    {
       for(Account acc : accnts)
    {
        if((acc.Email__c ==null))
        {
             
                
                 acc.Email__c.addError(System.Label.Demo_CL);
                
             
    }
    }
    }
    
    public static void updateAccountBranch(List<Account> accnts)
    {
        for(Account a : accnts)
        {
            if(a.Account_Department__c != null)
            {
               a.Account_Branch__c =  a.Account_Department__c;
           
            }
        }
    }
  List<Demo_CM__mdt> metad = [Select Id,MasterLabel from Demo_CM__mdt];
  
    public static void insertOpportunity(List<Account> accnts)
    {
        List<Opportunity> oppList = new List<Opportunity>();
    if(checkRecursive.firstRun = true)
    {
        checkRecursive.firstRun = false;
    for(Account acc : accnts)
    {
        if(acc.Type =='Prospect')
        {
            Opportunity opp = new Opportunity();
            opp.name = acc.name;
            opp.AccountId = acc.id;
            opp.Amount = 1000;
            opp.CloseDate = System.Today();
            opp.StageName = 'Prospecting';
            oppList.add(opp);            
            
        }
        }
    
    
    insert oppList;
    }
    }
    
    public static void updatePhone(List<Account> accnts)
    {
        Set<Id> accntIds = new Set<Id>();    
    
    for(Account acc : accnts)
    {
        accntIds.add(acc.id);
    } 
    
    List<Contact> conList =[Select Id,lastname,phone,AccountId,Account.Phone from contact where AccountId =:accntIds];
   
    List<Contact> updateContacts = new List<Contact>();
   
    for(Contact con : conList)
    {       
        
        con.Phone = con.Account.Phone;        
        updateContacts.add(con);
    } 
    
    
    update updateContacts;
    }
    
}