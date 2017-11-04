package com.okta.social.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.okta.sdk.resource.user.User;
import com.okta.sdk.resource.user.UserBuilder;
import com.okta.sdk.resource.user.UserProfile;
import com.okta.social.dataobj.FbUserObj;
import com.okta.social.dataobj.OktaUserObj;
import com.okta.social.service.FacebookService;
import com.okta.social.service.OktaService;
import com.restfb.json.JsonObject;

@Controller
public class UserController {

	String message = "Welcome to Spring MVC!";


	@RequestMapping(value = "/getUser", method = RequestMethod.POST)
	    public ModelAndView submitForm(@RequestParam(value="userId", required=false) String userId,
	    		@ModelAttribute("user")OktaUserObj oktaUser, BindingResult result, SessionStatus status)
	    {
			
	//		user.setUserId(userId);
			
			OktaService oktaService = new OktaService();
			//get fb access token from Okta
			String access_token = oktaService.getfb_access_token(userId, "0oacewrnnvoqNakrM0h7");
			
			FacebookService fbService = new FacebookService();
			//get detail data for the user from facebook 
			FbUserObj fbUser = fbService.getFbUserDetails(access_token);
			User user = oktaService.getOktaUser(userId);
			
			oktaUser.setEmail(user.getProfile().getEmail());
			oktaUser.setFirstName(user.getProfile().getFirstName());
			oktaUser.setLastName(user.getProfile().getLastName());
			oktaUser.setGender(fbUser.getGender());
			oktaUser.setLocale(fbUser.getLocale());
			oktaUser.setTimeZone(fbUser.getTimeZone());
			oktaUser.setUpdated_time(fbUser.getUpdated_time());
			JsonObject age_range = fbUser.getAge_range();
		    String min_age = age_range.get("min").toString();
		    oktaUser.setMin_age(min_age);   
		    try{
		    	  boolean flag = oktaService.updateUser(user, oktaUser);
		    }catch(Exception e){
		    	
		    	System.out.println("exception : "+e);
		    }
		  
			
		    ModelAndView mv = new ModelAndView("viewloggedInUser");
			mv.addObject("user", oktaUser);
			return mv;
	    }

}
