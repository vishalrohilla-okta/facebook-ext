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

</head>



<body>


<div id="okta-sign-in" class="auth-container main-container no-beacon">      
<div class="okta-sign-in-header auth-header">                
 <img src="https://s1.postimg.org/7tfwju2f33/experian_logo.png" class="auth-org-logo">  

  
     
<div data-type="beacon-container" class="beacon-container"></div>      
</div>      
<div class="auth-content">
<div class="auth-content-inner">
<div class="primary-auth">
<form:form method = "POST" action = "getUser" modelAttribute="user" class="o-form o-form-edit-mode" id="form14">
       
<div data-se="o-form-content" class="o-form-content o-form-theme clearfix">   

    
 <div class="auth-footer">
    
   
 
  <div class="o-form-fieldset-container" data-se="o-form-fieldset-container">
   <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="First Name" name="FirstName" id="input21" value="" type="text">    </span></div></div>
  
  <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="First Name" name="FirstName" id="input21" value="${user.firstName}" type="text">    </span></div></div>
   <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Last Name" name="LastName" id="input21" value="" type="text">    </span></div></div> 
   <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
   <div class="o-form-input" data-se="o-form-input-container">
   <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-password">                       
    <span title="" oldtitle="Super secret password" data-hasqtip="7" class="input-tooltip icon form-help-16"></span>                          
    <span class="icon input-icon remote-lock-16"></span>                    
    <input placeholder="Last Name" name="LastName" id="input28" value="${user.lastName}" type="text">    </span></div></div>
     <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Email" name="email" id="input21" value="" type="text">    </span></div></div>   
     <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Email" name="Username" id="input21" value="${user.email}" type="text">    </span></div></div>
   
      <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
    <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Gender" name="gender" id="input21" value="" type="text">    </span></div></div>
   
   <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
    <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Gender" name="gender" id="input21" value="${user.gender}" type="text">    </span></div></div>
   
     <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="locale" name="local" id="input21" value="" type="text">    </span></div></div>
   
   <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Email" name="Username" id="input21" value="${user.locale}" type="text">    </span></div></div>
   
     <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Age Range" name="agerane" id="input21" value="" type="text">    </span></div></div>

    <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Email" name="Username" id="input21" value="${user.min_age}" type="text">    </span></div></div>
   
       <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="TimeZone" name="TimeZone" id="input21" value="" type="text">    </span></div></div>
   
   
     <div class="o-form-fieldset o-form-label-top" data-se="o-form-fieldset">
     
  <div class="o-form-input" data-se="o-form-input-container">
  <span class="okta-sign-in-input-field input-fix o-form-control" data-se="o-form-input-username">                        
  <span title="" oldtitle="Enter your @ partner.com ID" data-hasqtip="6" class="input-tooltip icon form-help-16"></span>                         
   <span class="icon input-icon person-16-gray"></span>                    
   <input placeholder="Email" name="Username" id="input21" value="${user.timeZone}" type="text">    </span></div></div>
   
    <div class="auth-footer">            
    <ul style="display: block;" class="help-links js-help-links"> 
       
  
  

    </ul>    </div></div></div></div>    </div>
   
</form:form>

</div>
</body>

</html>
