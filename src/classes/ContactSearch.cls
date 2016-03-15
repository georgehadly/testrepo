public with sharing class ContactSearch {
	
	public static List<Contact> searchForContacts(String lastNameTXT, String postalCode){

		List<Contact> contactsArray = [SELECT Name,ID FROM Contact WHERE LastName=:lastNameTXT AND MailingPostalCode=:postalCode];
		
		return contactsArray;
	}
    
}