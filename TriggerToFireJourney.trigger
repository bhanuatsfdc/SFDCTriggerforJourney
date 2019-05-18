Trigger TriggerToFireJourney on SampleDE__c(after insert,after update){
List<SampleDE__c> triggerList = new List<SampleDE__c>();    
set<Id> sids = new set<Id>();
    for(SampleDE__c ss : Trigger.New){
        if(ss.id != null){
            sids.add(ss.Id);
        }
    }   
    FiringJourneyTriggerClass.executeCalloutJourney(sids);
}

