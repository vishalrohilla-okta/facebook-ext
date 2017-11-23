# facebook-ext

Various use cases require various sets of user data from facebook. For instance, users interests, things they like, their public profile, basic information, birthday etc.

This projects lays the basic foundation of retrieving depths of the data from facebook and leverage Okta's Universal Directory to store the data for future use.

How to set up/run the project -

This is a maven project that you can import in any IDE (I use eclipse). Or you can build the war and run on your favorite web/application server.

The components used in the project are - 

1. Okta Sign-in Widget (https://github.com/okta/okta-signin-widget)
2. Okta Java SDK (https://github.com/okta/okta-sdk-java)
3. Facebook SDK (https://github.com/restfb/restfb)


The following diagram shows the interaction between facebook and Okta. 
![alt text](https://imgur.com/9Dj1r4w)

# Steps

1. User clicks on Login with Facebook 
2. Okta kicks off an OAuth flow and redirects the user to Facebook
3. User authenticates, and facebook returns a Facebook access_token back to Okta. 
Okta stores this user access_token on the user profile and returns an Okta access_token to the app. 
4. Custom code/app that is part of this example requests the user ID of the user from the sessions /me endpoint. 
5. With the User ID, we get the access_token for that user. The token is available bia the api/v1/idps/idpId/users/userID/credentials/tokens
6. Using this access_token, leveraging facebook SDK, the app hits the facebook's /me endpoint and request the additonal scopes/values. 
7. After pulling additional data, store the data in Okta's Universal Directory. 
8. I have created the attributes before hand, and leveraged Okta SDK/API to update the user profile.
9. The attributes can be created via Okta dashboard or the APIs.

Note -

At the time I built this plugin, I din't get enough buffer to externalize all the properties. So, please update the following components with your Okta environment info.

1. Please update your Okta api token in OktaService.java
2. Also update the social idp unique identifier in UserController.java
