
  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
      testAPI();  
    } else {                                 // Not logged into your webpage or we are unable to tell.
      document.getElementById('status').innerHTML =  'Not yet logged ' +
        'into this webpage.';
    }
  }


  function checkLoginState() {               // Called when a person is finished with the Login Button.
    FB.getLoginStatus(function(response) {   // See the onlogin handler
      statusChangeCallback(response);
    });
  }
  
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '680538159135435',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v5.0'
    });
    
    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
      statusChangeCallback(response);        // Returns the login status.
    });
  };
    

  (function(d, s, id) {                      // Load the SDK asynchronously
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

 
  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', {fields: 'name, id, picture, email'}, function(response) {
      console.log('Successful login for: ' + response.name);
      console.log('ID: ' + response.id)
      console.log('Email: ' + response.email)
      //document.getElementById('nameID').setAttribute('value', response.name)
     // document.getElementById('emailID').setAttribute('value', response.email)
      console.log('Picture: ' + response.picture)
      
      document.getElementById('status').innerHTML =
        'Welcome, ' + response.name + '!';
      var name = response.name
      var email = response.email
      console.log(name)

    });
  }
  
  function startLogout(){
    FB.logout(function(response){
      statusChangeCallback(response)
    });
  }
  
  function startLogin() {
    FB.login(function(response){
      statusChangeCallback(response)
    }, {scope: 'email'});
  }
  
  function signUp() {    
  }
