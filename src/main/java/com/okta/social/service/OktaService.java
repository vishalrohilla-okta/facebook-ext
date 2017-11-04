package com.okta.social.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.okta.sdk.authc.credentials.ClientCredentials;
import com.okta.sdk.authc.credentials.TokenClientCredentials;
import com.okta.sdk.client.Client;
import com.okta.sdk.client.ClientBuilder;
import com.okta.sdk.client.Clients;
import com.okta.sdk.resource.user.User;
import com.okta.sdk.resource.user.UserBuilder;
import com.okta.social.dataobj.FbUserObj;
import com.okta.social.dataobj.OktaUserObj;



public class OktaService implements UserBuilder {
	private static List<NameValuePair> nvps = null;
	
	public  String getfb_access_token (String userId, String idpId){
		String token ="";			
		
		  try {
				DefaultHttpClient httpClient = new DefaultHttpClient();
				HttpGet getRequest = new HttpGet(
					"https://business.oktapreview.com/api/v1/idps/"+idpId+"/users/"+userId+"/credentials/tokens");
				getRequest.addHeader("accept", "application/json");
				getRequest.addHeader("Authorization", "SSWS "+"00Oirk4b4_w8lyG6rXvNyZgSe4CjCsPic7Qjg7X_ok");
				HttpResponse response = httpClient.execute(getRequest);
				if (response.getStatusLine().getStatusCode() != 200) {
					throw new RuntimeException("Failed : HTTP error code : "
					   + response.getStatusLine().getStatusCode());
				}
				BufferedReader br = new BufferedReader(
		                         new InputStreamReader((response.getEntity().getContent())));
				String output = br.readLine();		
				String json = output.substring(1);
		       	JSONObject tokener = new JSONObject(json);

		       	token = tokener.getString("token");
		       	OktaUserObj oktaUserObj = new OktaUserObj();
		       	oktaUserObj.setToken(token);
				httpClient.getConnectionManager().shutdown();
			  } catch (ClientProtocolException e) {
				e.printStackTrace();
			  } catch (IOException e) {
				e.printStackTrace();
			  }
		  return token;
	}
	
	   public User getOktaUser(String userId){
	    	ClientCredentials clientCredentials = new TokenClientCredentials("00Oirk4b4_w8lyG6rXvNyZgSe4CjCsPic7Qjg7X_ok");
	    	ClientBuilder builder = Clients.builder();
	    	
	    	builder.setOrgUrl("https://business.oktapreview.com");
	    	builder.setClientCredentials(clientCredentials);
	    	
	    	Client client = builder.build();	   
	    	 
	    	 com.okta.sdk.resource.user.User  oktaUser = client.getUser(userId);	    	 
	    	  System.out.println("First Name= " + oktaUser.getId());
	    	
	    	return oktaUser;
	    }
	   
		public boolean updateUser(User user, OktaUserObj oktaUserobj)throws Exception{
			System.out.println("in updateUser");
			DefaultHttpClient httpClient = new DefaultHttpClient();
			HttpPost httpPost  = new HttpPost("https://business.oktapreview.com/api/v1/users/"+user.getId());
			httpPost.addHeader("accept", "application/json");
			httpPost.addHeader("content-type", "application/json");
			httpPost.addHeader("Authorization", "SSWS "+"00Oirk4b4_w8lyG6rXvNyZgSe4CjCsPic7Qjg7X_ok");
			URI uri = httpPost.getURI();
			System.out.println("URI ="+uri.toString());

           JSONObject json = new JSONObject();
           JSONObject json1 = new JSONObject();
           
           json1.put("gender", oktaUserobj.getGender());
           json1.put("social_locale", oktaUserobj.getLocale());
           json1.put("age_range", oktaUserobj.getMin_age());
           json1.put("social_timezone", oktaUserobj.getTimeZone());
           json1.put("updated_time", oktaUserobj.getUpdated_time());
           json1.put("lastName", oktaUserobj.getLastName());
           json1.put("email", oktaUserobj.getEmail());
           json.put("profile", json1);         
           StringEntity input = new StringEntity(json.toString()); 
           
	        
           System.out.println(json.toString());
	            
	       httpPost.setEntity(input);	    
	             
           System.out.println("before getting the response");
           HttpResponse response = httpClient.execute(httpPost);
           System.out.println("response status = "+response.getStatusLine().getStatusCode());
           if (response.getStatusLine().getStatusCode() != 200) 
				throw new RuntimeException("Failed : HTTP error code : "
				   + response.getStatusLine().getStatusCode());								

			return true;
		}			

	public UserBuilder setPassword(String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setSecurityQuestion(String question) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setSecurityQuestionAnswer(String answer) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setFirstName(String firstName) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setLastName(String lastName) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setLogin(String login) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setMobilePhone(String mobilePhone) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setSecondEmail(String secondEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setActive(Boolean active) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setProvider(Boolean provider) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder setProfileProperties(Map<String, Object> profileProperties) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder putAllProfileProperties(Map<String, Object> profileProperties) {
		// TODO Auto-generated method stub
		return null;
	}

	public UserBuilder putProfileProperty(String key, Object value) {
		// TODO Auto-generated method stub
		return null;
	}

	public User buildAndCreate(Client client) {
		// TODO Auto-generated method stub
		return null;
	}
		
	

}
