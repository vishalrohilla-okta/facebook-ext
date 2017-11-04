<!--/**
 * @author Vishal Rohilla
 * date Jan 10, 2016
 */ -->
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="org.apache.http.NameValuePair" %>   
<%@ page import="org.apache.http.message.BasicNameValuePair" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.impl.client.HttpClients" %>
<%@ page import="org.apache.http.entity.StringEntity" %>

<%@ page import="org.apache.http.impl.client.CloseableHttpClient" %>
<%@ page import="org.apache.http.client.methods.CloseableHttpResponse" %>
<%@page import="java.io.InputStream" %>
<%@page import="java.util.Properties" %>
<%@ page import="java.net.URLDecoder"%>
<%!Properties oktaconf = new Properties(); %>

<%!public void jspInit(){
	
 // Thread.currentThread().getContextClassLoader().getResourceAsStream("Oktaconf.properties");
  ClassLoader loader = Thread.currentThread().getContextClassLoader(); 
  InputStream stream = loader.getResourceAsStream("Oktaconf.properties");
 

	  
 try {
		oktaconf.load(stream);
		
		
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Page</title>


<style type="text/css">

h1 {
color:highlight;}
p {
font-size:30px;
}


body
{
//background-color:#b0c4de;

color:red;
background:#ffffff url("images/careers_okta_you_graphic.png") no-repeat right top;

//image:url("images/careers_okta_you_graphic.png");
}
div#wrap {
margin: 0 auto;
width: 600px; 
min-height: 50px;
vertical-align:text-bottom;
</style>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Okta Login</title>

  <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
  <![endif]-->

  <!-- Core Okta login widget and css -->
  <link href="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/1.7.0/css/okta-sign-in.min.css" type="text/css" rel="stylesheet">
  <script src="https://jankyco.oktapreview.com/js/sdk/okta-sign-in-1.0.0.min.js" type="text/javascript"></script>

  <!--
    Customizable css theme options for the login widget.
    Link your own customized copy of okta-theme.css
    or override styles in-line.
  -->
  <link href="https://jankyco.oktapreview.com/js/sdk/okta-theme-1.0.0.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" type="text/css" rel="stylesheet">
  <style>
    body {
      background-image: url('https://s1.postimg.org/6xxkyfqy6n/slide-building-min.jpg');
      background-repeat: no-repeat;
      background-position: center center fixed;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;
    }

    #okta-sign-in.main-container {
      font-family: "Open Sans", Arial, Helvetica, sans-serif;
    }

    #container #okta-sign-in .auth-header {
      padding: 45px 0px 60px;
      height: 120px;
    }

    #container #okta-sign-in .okta-sign-in-title {
      font-size: 18px;
      font-weight: 600;
    }

    #container #okta-sign-in a.link {
      color: #798187;
    }

    #container #okta-sign-in .button {
      color: #ffffff;
      background-color: #3a3f44;
      border-color: #3a3f44;
      background-image: -webkit-linear-gradient(#484e55, #3a3f44 60%, #313539);
      background-image: -o-linear-gradient(#484e55, #3a3f44 60%, #313539);
      background-image: -webkit-gradient(linear, left top, left bottom, from(#484e55), color-stop(60%, #3a3f44), to(#313539));
      background-image: linear-gradient(#484e55, #3a3f44 60%, #313539);
      background-repeat: no-repeat;
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff484e55', endColorstr='#ff313539', GradientType=0);
      -webkit-filter: none;
      filter: none;
    }

    #container #okta-sign-in .button:hover {
      border-color: rgba(0, 0, 0, 0.6);
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
      background-image: -webkit-linear-gradient(#020202, #101112 40%, #191b1d);
      background-image: -o-linear-gradient(#020202, #101112 40%, #191b1d);
      background-image: -webkit-gradient(linear, left top, left bottom, from(#020202), color-stop(40%, #101112), to(#191b1d));
      background-image: linear-gradient(#020202, #101112 40%, #191b1d);
      background-repeat: no-repeat;
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff020202', endColorstr='#ff191b1d', GradientType=0);
      -webkit-filter: none;
      filter: none;
    }


    #container #okta-sign-in .button-primary:hover {
      background-image: -webkit-linear-gradient(#e72510, #d9230f 6%, #cb210e);
      background-image: -o-linear-gradient(#e72510, #d9230f 6%, #cb210e);
      background-image: -webkit-gradient(linear, left top, left bottom, from(#e72510), color-stop(6%, #d9230f), to(#cb210e));
      background-image: linear-gradient(#e72510, #d9230f 6%, #cb210e);
      background-repeat: no-repeat;
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffe72510', endColorstr='#ffcb210e', GradientType=0);
      -webkit-filter: none;
      filter: none;
    }

    #container #okta-sign-in .button-primary {
      color: #ffffff;
      background-color: #ffffff;
      border-color: #7a8288;
      background-image: -webkit-linear-gradient(#8a9196, #7a8288 60%, #70787d);
      background-image: -o-linear-gradient(#8a9196, #7a8288 60%, #70787d);
      background-image: -webkit-gradient(linear, left top, left bottom, from(#8a9196), color-stop(60%, #7a8288), to(#70787d));
      background-image: linear-gradient(#8a9196, #7a8288 60%, #70787d);
      background-repeat: no-repeat;
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff8a9196', endColorstr='#ff70787d', GradientType=0);
      -webkit-filter: none;
      filter: none;
    }

    #container #okta-sign-in .button-primary:hover {
      background-image: -webkit-linear-gradient(#404448, #4e5458 40%, #585e62);
      background-image: -o-linear-gradient(#404448, #4e5458 40%, #585e62);
      background-image: -webkit-gradient(linear, left top, left bottom, from(#404448), color-stop(40%, #4e5458), to(#585e62));
      background-image: linear-gradient(#404448, #4e5458 40%, #585e62);
      background-repeat: no-repeat;
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff404448', endColorstr='#ff585e62', GradientType=0);
      -webkit-filter: none;
      filter: none;
    }
  </style>
</head>

<script>

window.onload = function validateSession()
{
	<%
	ClassLoader loader = Thread.currentThread().getContextClassLoader(); 
	  InputStream stream = loader.getResourceAsStream("Oktaconf.properties");
	 

		  
	 try {
			oktaconf.load(stream);
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	

	String cookieName = oktaconf.getProperty("cookieid");
	String cookieToken = oktaconf.getProperty("cookietoken");
	
	
	System.out.println(cookieToken);
	Cookie cookies [] = request.getCookies ();
	Cookie myCookie = null;
	Cookie myCookie1 = null;
	if (cookies != null)
	{
	for (int i = 0; i < cookies.length; i++) 
	{
	if (cookies [i].getName().equals (cookieName))
	{
	myCookie = cookies[i];
	for (int j = 0; j < cookies.length; j++) 
	{
	if (cookies [j].getName().equals (cookieToken))
	{
		if(cookies [j].getValue()!=null){
			myCookie1 = cookies[j];
			break;
		}else{
			myCookie1 = null;
			break;
		}
			
		//}
		
	}
	}
	}
	}
	}
	
	 
	 
	
	
%>
function closewindow() {
	  window.close();
	  }
	  


</script>


<body>


 

<%

String relay = request.getParameter("RelayState");
String img = oktaconf.getProperty("img");
String loginText = oktaconf.getProperty("loginText");
String redurl = null;

if (relay != null)
{
String relay1 = URLDecoder.decode(relay);

    redurl = oktaconf.getProperty("url")+relay1;



}
else
{
	redurl = oktaconf.getProperty("url")+"/app/UserHome";


}


if (myCookie1 != null) {
	
	
	

	   String url = oktaconf.getProperty("url");
	   String token = myCookie1.getValue();
	   System.out.println(token);
	   String tokenid = myCookie.getValue();
	   System.out.println(tokenid);
	   
	

		  
			 List<NameValuePair> nvps = null;
			 CloseableHttpClient httpClient = null;
			 CloseableHttpResponse hresponse = null;
			nvps = new ArrayList<NameValuePair>();
		    nvps.add(new BasicNameValuePair("content-type", "application/json"));
		          
		    nvps.add(new BasicNameValuePair("Authorization", "SSWS "+oktaconf.getProperty("APIKey")));
		   
		    HttpGet httpget=new HttpGet(url+"/api/v1/sessions/"+tokenid);
		    
		    
		    
		for (NameValuePair h : nvps)
		{
		    httpget.addHeader(h.getName(), h.getValue());
		}
		httpClient = HttpClients.createDefault();
		hresponse = httpClient.execute(httpget);
		System.out.println(hresponse.getStatusLine().getStatusCode());
		if (hresponse.getStatusLine().getStatusCode() == 200) {
			 response.sendRedirect(url+"/login/sessionCookieRedirect?token="+token+"&redirectUrl="+redurl);
		}
		%>
		
		
		<p>
		Enter the  UserName : <input type="text" name="Username"><br>
		Enter the  Password : <input type="password" name="password"><br>
		<input type="submit" name="Submit">
		<input type="button" value="Change Password" onclick="window.location.href='changepasswd.jsp';"/>
		<input type="button" value="NewUser Signup" onclick="window.location.href='Register.jsp';"/>
		<input type="hidden" name="target" value="<%= redurl %>"/>
		<input type="button" value="Upload csv" onclick="window.location.href='Upload.jsp';"/>
		</p>
		<% 
}
else
{		%>
	<div id="okta-sign-in" class="auth-container main-container no-beacon">      
<div class="okta-sign-in-header auth-header">                
<!--  <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/Oldacmelogo.png/200px-Oldacmelogo.png " class="auth-org-logo"> -->
<img src=<%=img%> class="auth-org-logo"> 
              
<div data-type="beacon-container" class="beacon-container"></div>      
</div>      
<div class="auth-content">
<div class="auth-content-inner">
<div class="primary-auth">
<form class="o-form o-form-edit-mode" id="form14" data-se="o-form" action="/Authenticate" method="POST">        
<div data-se="o-form-content" class="o-form-content o-form-theme clearfix">                        
<h2 data-se="o-form-head" class="okta-sign-in-title o-form-head"><%=loginText%> Login</h2>                         
 <% if(request.getAttribute("message")!=null) {
	 String message = (String)request.getAttribute("message");
	 System.out.println("message = "+message);
	 %>
 <div class="o-form-error-container" data-se="o-form-error-container"><p><b><%=message%></b></p>
 </div>     
 <%} else{ %>
 <div class="o-form-error-container" data-se="o-form-error-container">
 </div>  
 <% }%>       
  <div class="o-form-fieldset-container" data-se="o-form-fieldset-container">
  <% if(request.getAttribute("login") !=null) {
			String login = (String)request.getAttribute("login");
		
		%>
		<div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Username" name="Username" id="input21" value=<%=login%> type="text">    </span></div></div>
		<%}else{ %>
		<div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Username" name="Username" id="input21" value="" type="text">    </span></div></div>
		<%} %>
  
   <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
   <div class="o-form-input" data-se="o-form-input-container">
   <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-password">                       
    <span title="" oldtitle="Super secret password" data-hasqtip="7" class="input-tooltip icon form-help-16"></span>                          
    <span class="icon input-icon remote-lock-16"></span>                    
    <input placeholder="Password" name="password" id="input28" value="" type="password">    </span></div></div>
  
    <div class="o-form-fieldset o-form-label-top margin-btm-0" data-se="o-form-fieldset">
    <div class="o-form-input" data-se="o-form-input-container"><span data-se="o-form-input-remember">    
    <div class="custom-checkbox"><input name="remember" id="input35" type="checkbox"><label for="input35" data-se-for-name="remember">Remember me</label></div>      </span></div></div>
    </div></div>  
    <div class="o-form-button-bar"><input data-type="save" value="Next" class="button button-primary" type="submit">
 	<input placeholder="target" name="target" id="input50" type="hidden" value="<%= redurl %>"/>
    </div>
   
    <% String isSocialLoginEnabled = oktaconf.getProperty("turnOnSocialLogin");
     if(isSocialLoginEnabled.equals("true")){%>
   
     <h2 data-se="o-form-head" class="okta-sign-in-title o-form-head">OR</h2>
     <div class="o-form-button-bar">
     <a 
     href="https://socialidm.oktapreview.com/oauth2/v1/authorize?idp=0oa68pddhhWKMK9aA0h7&client_id=DpLXJRIVaszHPlEydsrq&state=blah&nonce=blah&scope=openid%20email%20profile&response_type=id_token&redirect_uri=https://ec2-34-208-86-69.us-west-2.compute.amazonaws.com/portal/application.jsp" 
     >
     <img src="https://s24.postimg.org/72lidq17p/google_login.png"></a>
     
    </div>
    <h2 data-se="o-form-head" class="okta-sign-in-title o-form-head">OR</h2>
    <div class="o-form-button-bar">
     <a 
     href="https://business.oktapreview.com/oauth2/v1/authorize?idp=0oacewrnnvoqNakrM0h7&client_id=0oacetzf1vmWByeQZ0h7&state=blah&nonce=blah&scope=openid%20email%20profile&response_type=id_token&redirect_uri=https://ec2-34-208-86-69.us-west-2.compute.amazonaws.com/application.jsp" 
     >
     <img src="https://upload.wikimedia.org/wikipedia/commons/a/a8/Fb7.png"></a>
     
    </div>
    <%} %>
     <h2 data-se="o-form-head" class="okta-sign-in-title o-form-head">OR</h2>
     <% String isEnterpriseIDEnabled = oktaconf.getProperty("turnOnEntepriseLogin");
     if(isEnterpriseIDEnabled.equals("true")){%>
  	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="loginIdp.jsp" data-se="o-form-head class="" >Bring your own Enterprise Identity</a>
    <br><br>
     <h2 data-se="o-form-head" class="okta-sign-in-title o-form-head">OR</h2>   
     <%}%>
    
    <div class="auth-footer">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="register.jsp" data-se="o-form-head class="" >Don't have an account? Register here</a>
    <br><br>
    
    	<a href="#" class="link help js-help">Need help?</a>
          <ul style="display: block;" class="help-links js-help-links">        
          <li><a href="getUser.jsp" class="link js-forgot-password">Forgot Username?</a></li>
          <!--  <li><a href="forgotPasswd.jsp" class="link js-forgot-password">Forgot password?</a></li>-->
          <li><a href="setPasswd.jsp" class="link js-forgot-password">Change password?</a></li>
          
          </ul>   
    </div></div></div></div>    </div>
 

</div>
	
		
		<%  
}

%>

</form>


</body>
</html>
