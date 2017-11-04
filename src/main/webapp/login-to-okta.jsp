<!doctype html>
<html lang="en-us">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Okta Login</title>

  <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
  <![endif]-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/2.1.0/js/okta-sign-in.min.js" type="text/javascript"></script>  
  <link href="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/2.1.0/css/okta-sign-in.min.css" type="text/css" rel="stylesheet">
  <link href="https://ok1static.oktacdn.com/assets/js/sdk/okta-signin-widget/2.1.0/css/okta-theme.css" type="text/css" rel="stylesheet">
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

  <!-- Render the login widget here -->
  <div id="okta-login-container"></div>

  <!-- Script to init the widget -->
  <script>
    var baseUrl = 'https://business.oktapreview.com';
    var helpSupportNumber = '111-222-3333';
    var test1 = '';
    var test2 = '';
 
    var oktaSignIn = new OktaSignIn({baseUrl: baseUrl,helpSupportNumber: helpSupportNumber,features: {
        rememberMe: true,
        callRecovery: true,
        smsRecovery: true,
        
      },
      clientId: '0oacetxj7prlheS8V0h7',
      redirectUri: 'https://ec2-34-208-86-69.us-west-2.compute.amazonaws.com/fb/index.jsp',
      authParams: {
    	    responseType: 'id_token',
    	    // `display: page` will initiate the OAuth2 page redirect flow
    	    display: 'page'
    	  },
      idps: [        
             {type: 'FACEBOOK', id: '0oacewrnnvoqNakrM0h7'}        
           ],
       
       
      
    labels: {
    	'primaryauth.username.placeholder': 'Email',
    	'primaryauth.username.tooltip': 'Email'
    }
    ,logo: 'https://s1.postimg.org/7tfwju2f33/experian_logo.png'});
    

    oktaSignIn.renderEl(
      { el: '#okta-login-container' },
      function (res) {
        if (res.status === 'SUCCESS') {
          console.log('User %s succesfully authenticated %o', res.user.profile.login, res.user);
          console.log(res.user.userId);
		  test1 = res.user.userId;
		  console.log(res.userId);
		  test2 = res.userId;
               
          
        }
      
      }
    );
  

  </script>
</body>
</html>	