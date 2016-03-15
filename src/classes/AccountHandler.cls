public with sharing class AccountHandler {
 
 	public static Account insertNewAccount(String accountName){
 		try{
 			
 			Account acc = new Account (name = accountName);
 			
 			insert acc;
 			
 			return acc;
 			
 		}catch(DmlException except){
 			return null;
 		}
 	}   
}