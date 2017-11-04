# facebook-ext

Various use cases require various sets of user data from facebook. For instance, users interests, things they like, their public profile, basic information, birthday etc.

This projects lays the basic foundation of retrieving depths of the data from facebook and leverage Okta's Universal Directory to store the data for future use.

How to set up/run the project -

This is a maven project that you can import in any IDE (I use eclipse). Or you can build the war and run on your favorite web/application server.

The components used in the project are - 

1. Okta Sign-in Widget (https://github.com/okta/okta-signin-widget)
2. Okta Java SDK (https://github.com/okta/okta-sdk-java)
2. Facebook SDK (https://github.com/restfb/restfb)


The following diagram shows the interaction between facebook and Okta. 
![alt text](https://s1.postimg.org/12inbnhktb/authentication_extension_plugin_-_general_-_Page_1_1.png)


Things to note -

At the time I built this plugin, I din't get enough buffer to externalize all the properties. So, please update the following components with your Okta environment info.

1. Please update your Okta api token in OktaService.java
2. Also update the social idp unique identifier in UserController.java
