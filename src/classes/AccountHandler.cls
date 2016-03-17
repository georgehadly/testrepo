public with sharing class AccountHandler {
 
 	public static Account insertNewAccount(String accountName){
 		try{
 			
 			Account acc = new Account (name = accountName);
 			
 			insert acc;
 			
 			// in a session
 			
 			return acc;
 			
 		}catch(DmlException except){
 			return null;
 		}
 	}   
}