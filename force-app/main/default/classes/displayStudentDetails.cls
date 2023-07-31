public class displayStudentDetails {
    @AuraEnabled
    public static List<Account> displayRecords()
    {
        List<Account> accList = [Select Id,Name,Phone,Email__c from Account limit 5];
        return accList;
    }
}