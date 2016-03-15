public with sharing class ContactAndLeadSearch {

	public static List<List<SObject>> searchContactsAndLeads(String findTxt){
		
		List<List<SObject>> result = [FIND :findTxt IN NAME FIELDS RETURNING Contact(Name,FirstName,LastName),Lead(FirstName,LastName,Name)];
		
		return result;
	}
    
}