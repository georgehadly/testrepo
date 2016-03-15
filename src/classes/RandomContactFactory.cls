public with sharing class RandomContactFactory {

	public static List<Contact> generateRandomContacts(integer n, String newlastName){
		List<Contact> conts = new List<Contact>();
		for(integer val = 0 ; val < n ; val++)
		{
			conts.add(new Contact(firstName = 'Test '+val, lastName = newlastName));
		}
		return conts;
	}    
}