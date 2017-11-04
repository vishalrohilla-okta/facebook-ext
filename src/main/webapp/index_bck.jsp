<!--/**
 * @author Vishal Rohilla
 * date Jan 10, 2016
 */ -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>User Information</title>


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
  <title>Logged In User</title>

 
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
      background-color: #90C880;
      border-color: #90C880;
      background-image: -webkit-linear-gradient(#8a9196, #90C880 60%, #70787d);
      background-image: -o-linear-gradient(#8a9196, #90C880 60%, #70787d);
      background-image: -webkit-gradient(linear, left top, left bottom, from(#8a9196), color-stop(60%, #90C880), to(#70787d));
      background-image: linear-gradient(#8a9196, #90C8808 60%, #70787d);
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
 <script>
  function pulluserId(){
	  var userId = '';
	
	
		    $.get({
		        url: "https://business.oktapreview.com/api/v1/sessions/me",
		        type: "GET",
		        xhrFields: {
		            withCredentials: true
		         },
		        success: function (data) { 
		        	userId = data.userId;	
		        	document.getElementById("foo").value = userId;
		        	document.getElementById("command").submit();

		        }
		        
		    });	  
  }
  
    </script>
</head>



<body onload="pulluserId();">


<div id="okta-sign-in" class="auth-container main-container no-beacon">      
<div class="okta-sign-in-header auth-header">                
 <img src="https://s1.postimg.org/7tfwju2f33/experian_logo.png" class="auth-org-logo">  

  
     
<div data-type="beacon-container" class="beacon-container"></div>      
</div>   
<div class="okta-sign-in-header auth-header">                
 <img src="https://s1.postimg.org/7tfwju2f33/experian_logo.png" class="auth-org-logo">  

  
     
<div data-type="beacon-container" class="beacon-container"></div>      
</div>   
<div class="auth-content">
<div class="auth-content-inner">
<form:form method = "POST" action = "getUser">
   <input type="hidden" name="userId" value="" id="foo">
</form:form>

</div>
</body>

</html>
