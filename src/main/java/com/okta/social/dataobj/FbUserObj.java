package com.okta.social.dataobj;
 
import com.restfb.Facebook;
import com.restfb.json.JsonArray;
import com.restfb.json.JsonObject;
 
public class FbUserObj {
 
    @Facebook("first_name")
    private String firstName;
 
    @Facebook("last_name")
    private String lastName;
 
    @Facebook("name")
    private String fullName;
 
    @Facebook("email")
    private String email;
    
    @Facebook("locale")
    private String locale;
    
    @Facebook("timezone")
    private String timeZone;
    
    @Facebook("updated_time")
    private String updated_time;
    
    @Facebook("gender")
    private String gender;
    
    @Facebook("age_range")
    private JsonObject age_range;
 
    public String getFirstName() {
        return firstName;
    }
 
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
 
    public String getLastName() {
        return lastName;
    }
 
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
 
    public String getFullName() {
        return fullName;
    }
 
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }

	/**
	 * @return the locale
	 */
	public String getLocale() {
		return locale;
	}

	/**
	 * @param locale the locale to set
	 */
	public void setLocale(String locale) {
		this.locale = locale;
	}

	/**
	 * @return the timeZone
	 */
	public String getTimeZone() {
		return timeZone;
	}

	/**
	 * @param timeZone the timeZone to set
	 */
	public void setTimeZone(String timeZone) {
		this.timeZone = timeZone;
	}

	/**
	 * @return the updated_time
	 */
	public String getUpdated_time() {
		return updated_time;
	}

	/**
	 * @param updated_time the updated_time to set
	 */
	public void setUpdated_time(String updated_time) {
		this.updated_time = updated_time;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return the age_range
	 */
	public JsonObject getAge_range() {
		return age_range;
	}

	/**
	 * @param age_range the age_range to set
	 */
	public void setAge_range(JsonObject age_range) {
		this.age_range = age_range;
	}
 
}
