@RestResource(urlMapping='/MobileTest/*')
global class MobileTest {

    @HttpGet
    global static String doGet()
    {
        return 'Please use POST. No data saved.';
    }

    @HttpPost
    global static String doPost()
    {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;

        return PostHelper(req, res);
    }
    
    
     global static String PostHelper(RestRequest req, RestResponse res)
    {   
        try
        {
            System.debug('Body: ' + (req.requestBody != null ? req.requestBody.toString() : ''));
            System.debug('Params: ' + req.params);
        }
        catch (Exception e)
        {
            res.statusCode = 500;
            return e.getStackTraceString();
        }

        res.statusCode = 200;
        List<Account> accounts = [SELECT id, name FROM Account LIMIT 2];
        String accountsJSON = JSON.serializePretty(accounts);

        return 'Params: ' + req.params + 'Body: ' + (req.requestBody != null ? accountsJson : '');
    }   
}