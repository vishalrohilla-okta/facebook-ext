package com.okta.social.service;

import com.okta.social.dataobj.FbUserObj;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.Version;
import com.restfb.json.JsonObject;

public class FacebookService {
	
	 public FbUserObj getFbUserDetails(String access_token){
		 
	        FacebookClient facebookClient = new DefaultFacebookClient(
	                access_token, Version.VERSION_2_9 );
	 
	       
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
	        return userData;
	    }

}
