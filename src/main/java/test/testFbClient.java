package test;

import com.okta.sdk.authc.credentials.ClientCredentials;
import com.okta.sdk.authc.credentials.TokenClientCredentials;
import com.okta.sdk.client.Client;
import com.okta.sdk.client.ClientBuilder;
import com.okta.sdk.client.Clients;
import com.okta.social.dataobj.FbUserObj;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.json.JsonObject;
import com.restfb.Version;

 
public class testFbClient {
 
    public static void main(String[] args) {
    	
    	boolean flag = getOktaUser();
    }
    
    public static boolean getFbUserDetails(){
 
        FacebookClient facebookClient = new DefaultFacebookClient(
                "EAABiXZBIvt9QBAPIsxZCZBRZAmZBXvnbMVu400BXGahOhjTD6yys0FxAnbtVXcabi8YqtyvwdquIIfzPQ9srHE0xo08YJWFXhOyVbT08ZCfGLg7DgCBrEMjMx1zQj6rY9AZAYkrUVXMzvZAEEtpkK1awPTHPSZCOqfiv6FhSzgBZAdbiQW11uTNQWN", Version.VERSION_2_9 );
 
       
        FbUserObj userData = facebookClient.fetchObject("me",
                FbUserObj.class, Parameter.with("fields", "name, email, gender, age_range, locale, timezone, updated_time, first_name, last_name"));
 
        System.out.println("userData=" + userData);
 
        System.out.println("First Name= " + userData.getFirstName());
        System.out.println("Last Name= " + userData.getLastName());
        System.out.println("Full Name= " + userData.getFullName());
        System.out.println("Email= " + userData.getEmail());
        System.out.println("gender= " + userData.getGender());
        System.out.println("locale= " + userData.getLocale());
        System.out.println("timezone= " + userData.getTimeZone());
        System.out.println("updated_time= " + userData.getUpdated_time());
        System.out.println("age_range= " + userData.getAge_range());
        JsonObject age_range = userData.getAge_range();
        String min_age = age_range.get("min").toString();
        System.out.println("min_age= " + min_age);
        return true;
    }
    
    public static boolean getOktaUser(){
    	ClientCredentials clientCredentials = new TokenClientCredentials("00Oirk4b4_w8lyG6rXvNyZgSe4CjCsPic7Qjg7X_ok");
    	ClientBuilder builder = Clients.builder();
    	
    	builder.setOrgUrl("https://business.oktapreview.com");
    	builder.setClientCredentials(clientCredentials);
    	
    	Client client = builder.build();
   
    	 
    	 com.okta.sdk.resource.user.User  oktaUser = client.getUser("elon.brett01@gmail.com");
    	 
    	  System.out.println("First Name= " + oktaUser.getId());
    	
    	return true;
    }
}
