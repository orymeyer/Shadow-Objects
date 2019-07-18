public with sharing class CaseTriggerHandler {
   
    /*Insertion and Updation*/
    public static void syncWithCase(List<Case> casesTobeProcessed){
        List<SCase__c> toSyncSCases = new List<SCase__c>();
        for(Case thisCase : casesTobeProcessed){
            toSyncSCases.add(new SCase__c(
                Name = thisCase.caseNumber,
                ParentID__c = thisCase.id,
                Subject__c = thisCase.Subject,
                Date_Case_Opened__c = thisCase.CreatedDate
            ));
        }
        upsert toSyncSCases ParentID__c;
    }
}