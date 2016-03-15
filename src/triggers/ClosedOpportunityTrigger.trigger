trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

	List <Task> tasks = new List<Task>();
	for(Opportunity opp : Trigger.New) {
		if(opp.StageName == 'Closed Won'){
			tasks.add(new Task(WhatId = opp.id,Subject = 'Follow Up Test Task'));
		}
	}
		try{
 			
 			insert tasks;
 			
 		}catch(DmlException except){
 			
 		}
    
}