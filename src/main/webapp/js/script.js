function validateForm() {
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
    const errorMessage = document.getElementById("errorMessage");

    errorMessage.style.display = "none";

    // Email validation pattern
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    if (email === "" || password === "") {
        errorMessage.innerText = "Both email and password are required.";
        errorMessage.style.display = "block";
        return false;
    }

    if (!emailPattern.test(email)) {
        errorMessage.innerText = "Please enter a valid email address.";
        errorMessage.style.display = "block";
        return false;
    }

    // Strong password validation
    const passwordPattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;
    if (!passwordPattern.test(password)) {
        errorMessage.innerText = "Password must be at least 6 characters long and include an uppercase letter, a number, and a special character.";
        errorMessage.style.display = "block";
        return false;
    }
  return true;
}

function forgotPassword() {
    const email = prompt("Enter your email address:");
    if (email) {
        fetch('ForgotPasswordServlet', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ email })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert("Password reset link has been sent to your email!");
            } else {
                alert("Error: " + data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert("Failed to send password reset request. Please try again later.");
        });
    }
}

// Google Sign-In
function googleSignIn() {
    google.accounts.id.prompt();
}

window.onload = function () {
    google.accounts.id.initialize({
        client_id: "1021052568603-u2g2f1vinuc3cfdcgeiu6o8b6fv3q336.apps.googleusercontent.com",
        callback: handleCredentialResponse
    });
};

function handleCredentialResponse(response) {
    console.log("Google JWT Token: ", response.credential);
    const userInfo = JSON.parse(atob(response.credential.split(".")[1]));
    console.log("User Info:", userInfo);
    alert("Welcome, " + userInfo.name);
}

// Facebook SDK
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

window.fbAsyncInit = function() {
    FB.init({
        appId: 'YOUR_FACEBOOK_APP_ID',
        cookie: true,
        xfbml: true,
        version: 'v11.0'
    });

    FB.AppEvents.logPageView();
};

function signInWithFacebook() {
    FB.login(function(response) {
        if (response.authResponse) {
            FB.api('/me', function(response) {
                console.log('Successful login for: ' + response.name);
            });
        } else {
            console.log('User cancelled login or did not fully authorize.');
        }
    }, {scope: 'email'});
}
