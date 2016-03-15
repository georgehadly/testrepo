public with sharing class StringArrayTest {

	public static List<String> generateStringArray(Integer generateNumber){
		
		List<String> listArray = new List<String>();
		
		for(Integer i=0; i < generateNumber; i++)
			listArray.add('Test ' + i);
		
		return listArray;
	} 
}