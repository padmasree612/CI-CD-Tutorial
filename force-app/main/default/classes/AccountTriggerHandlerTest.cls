@isTest
public class AccountTriggerHandlerTest
{
  
    @isTest static void AccountTriggerHandlerMethod()
    {
    
        List<Account> accList = new  List<Account>();
        Account acc = new Account();
        acc.name = 'Test Name';
        //acc.Email__c = 'test@yopmail.com';
        acc.Account_Department__c = 'testdept';
        acc.Type ='Prospect';
        accList.add(acc);
        insert accList;
        
        System.AssertNotEquals(accList.size(),1,'Acount Created');
        
        Contact con = new Contact();
        con.lastname ='testname';
        con.AccountId = acc.id; 
        insert con;
        
    }
    
    static testMethod void AccountTriggerHandlerMethod1()
    {
    
        Account acc = new Account();
        acc.name = 'Test Name';
        acc.Email__c = 'test@yopmail.com';
        acc.Account_Department__c = 'testdept';
        acc.Type ='Prospect';
        insert acc;
        
        
        Contact con = new Contact();
        con.lastname ='testname';
        con.AccountId = acc.id; 
        insert con;
        
    }
}