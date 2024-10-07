<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Signup.aspx.vb" Inherits="Admin_SignupAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup Admin</title>
    <link href="assets/img/favicon.png" rel="icon"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="icon" href="https://uploads-ssl.webflow.com/60f85e33b5a89c7e65d83755/6417e48ee2165d528d5538a9_Logo.svg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      @font-face {
        font-family: 'Sharp Grotesk Semibold 20';
        src: url('https://storage.googleapis.com/ds-static-assets/fonts/SharpGrotesk/SharpGrotesk-SemiBold20.otf')
          format('opentype');
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: 'Sharp Sans';
        src: url('https://storage.googleapis.com/ds-static-assets/fonts/SharpSans/SharpSans-Medium.otf')
          format('opentype');
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: 'Sharp Sans Bold';
        src: url('https://storage.googleapis.com/ds-static-assets/fonts/SharpSans/SharpSans-Bold.otf')
          format('opentype');
        font-weight: bold;
        font-style: normal;
      }
      body {
        margin: 0;
        font-size: 14px;
        font-family: 'Sharp Sans';
      }
      #page-container {
        width: 100vw;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background-image: linear-gradient(
          68deg,
          #fff5dd 0%,
          rgba(255, 151, 73, 0.83) 100%
        );
      }
      .card-container {
        gap: 30px;
        display: flex;
        width: 80%;
        max-width: 600px;
        box-sizing: border-box;
        padding: 56px;
        flex-direction: column;
        align-items: center;
        background-color: white;
        border-radius: 16px;
        overflow: hidden;
        max-height: 95%;
      }
      .title {
        font-family: 'Sharp Grotesk Semibold 20';
        font-size: 30px;
        font-style: normal;
        font-weight: 600;
        line-height: 130%;
        color: #1e0825;
        text-align: center;
      }
      #title {
        margin-top: 24px;
      }
      .cursor-pointer {
        cursor: pointer;
      }
      .divider-container {
        display: flex;
        align-items: center;
        width: 100%;
      }
      .divider {
        flex: 1;
        display: flex;
        background-color: #ece8ed;
        height: 1px;
      }
      .divider-text {
        color: #391145;
        font-family: 'Sharp Sans Bold';
        margin-left: 12px;
        margin-right: 12px;
        margin-top: 2px;
      }
      .w-full {
        width: 100%;
      }
      #signup-message {
        display: none;
      }
      .form {
        gap: 2px;
      }
      input {
        display: flex;
        height: 36px;
        padding: 0px 24px;
        align-items: center;
        gap: 8px;
        align-self: stretch;
        border-radius: 100px;
        background-color: #f7f7f7;
        border: none;
        width: 100%;
        box-sizing: border-box;
        font-size: 16px;
      }
      ::-ms-input-placeholder {
        color: #8e7f93;
      }

      ::placeholder {
        color: #8e7f93;
      }
      input:focus {
        background-color: #fff;
        outline-color: #6dd0fe;
      }
      .input-title {
        font-family: 'Sharp Sans';
        margin-bottom: 10px;
      }
      .password-title-container {
        display: flex;
        justify-content: space-between;
        font-family: 'Sharp Sans';
      }
      #forgot-password-text {
        text-decoration: underline;
      }
      .button {
        display: flex;
        height: 40px;
        padding: 0px 32px;
        justify-content: center;
        align-items: center;
        gap: 12px;
        box-sizing: border-box;
        color: #1e0825;
        font-family: 'Sharp Sans Bold';
        background-color: #6dd0fe;
        border-radius: 31px;
        width: 100%;
        text-transform: uppercase;
        flex-shrink: 0;
        cursor: pointer;
      }
      .button-text {
        margin-top: 4px;
      }
      .hover:hover {
        opacity: 0.8;
      }
      .disable-btn {
        pointer-events: none;
        color: #99e1ff !important;
        background-color: #f1f8fb !important;
      }
      .link-text {
        color: #ff6e01;
        font-family: 'Sharp Sans Bold';
        text-decoration: none;
      }
      .password-container {
        position: relative;
      }
      .password-icon {
        width: 20px;
        height: 20px;
        position: absolute;
        right: 20px;
        top: 50%;
        transform: translateY(-50%);
      }
      .hidden {
        display: none;
      }
      #error-message,
      #reset-error-message {
        color: red;
        display: none;
        font-family: 'Sharp Sans';
        width: 100%;
        margin-top: 8px;
      }
      #reset-password-page {
        position: relative;
      }
      .subtitle {
        text-align: center;
        font-size: 16px;
        margin-top: 24px;
        color: #56485a;
      }
      .back-to-login-btn {
        display: inline-flex;
        padding: 0px 24px;
        justify-content: center;
        align-items: center;
        gap: 8px;
        flex-shrink: 0;
        color: #1e0825;
        font-family: 'Sharp Sans Bold';
        position: fixed;
        top: 40px;
        left: 16px;
        background-color: #fff;
        height: 44px;
        border-radius: 31px;
        cursor: pointer;
      }
      .success-icon {
        width: 56px;
        height: 56px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #d6f0e1;
        color: #068441;
        border-radius: 100%;
        margin-bottom: 24px;
      }
      .flex-center {
        display: flex;
        justify-content: center;
        align-items: center;
      }
      .column {
        flex-direction: column;
      }
      .icon-password {
        width: 56px;
        height: 56px;
        border-radius: 100%;
        background-color: #f7f7f7;
        margin-bottom: 24px;
      }
      .bold {
        color: #1e0825;
        font-family: 'Sharp Sans Bold';
      }
      #resend-email-btn {
        background-color: #f7f7f7;
        color: #56485a;
        text-transform: unset;
        font-family: 'Sharp Sans';
        font-weight: 600;
      }
      @media (max-width: 768px) {
        .card-container {
          max-height: 100%;
          padding: 24px;
          gap: 26px;
          max-width: 500px;
        }
        input {
          height: 44px;
          font-size: 14px;
        }
        .button {
          height: 44px;
        }
        body {
          font-size: 13px;
        }
        .title {
          font-size: 25px;
        }
        #google-btn {
          height: 44px;
        }
        .signup-message-container {
          font-size: 14px;
        }
        .toggle-container {
          font-size: 14px;
        }
        .subtitle {
          font-size: 13px;
        }
        .back-to-login-btn {
          top: 8px;
          left: 8px;
          font-size: 12px;
          padding: 0px 16px;
          height: 36px;
        }
      }
      @media (max-height: 900px) {
        .card-container {
          gap: 32px;
        }
        .form {
          gap: 16px;
        }
      }
      @media (max-width: 480px) {
        .card-container {
          width: 100%;
          height: 100%;
          border-radius: 0;
          padding-top: 56px;
        }
        #reset-password-page {
          padding-top: 64px;
        }
      }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    

    
        
</head>
    <body ng-app="signupApp" ng-controller="signupController">
  <form id="signupForm" name="signupForm" runat="server" novalidate ng-submit="submitForm(signupForm.$valid)">
    <div class="container-fluid">
      <div id="page-container" style="background-image: linear-gradient(68deg, rgb(255, 245, 221) 0%, rgba(255, 151, 73, 0.83) 100%);">
        <div id="login-page" class="card-container" style="display: flex;">
          <div class="column flex-center">
            <div id="title" class="title">Signup</div>
          </div>

          <div class="form column flex-center w-full">
            <div class="w-full">
              <div class="input-title">Full Name*</div>
              <asp:TextBox runat="server" type="text" ID="txtName" placeholder="abc" ng-model="user.name" required></asp:TextBox>
              <span style="color:red" ng-show="signupForm.txtName.$touched && signupForm.txtName.$invalid">Full Name is required.</span>
            </div>

            <div class="w-full">
              <div class="input-title">Email*</div>
              <asp:TextBox runat="server" type="text" ID="txtMail" placeholder="hello@youremail.com" ng-model="user.email" required email></asp:TextBox>
              <span style="color:red" ng-show="signupForm.txtMail.$touched && signupForm.txtMail.$invalid">Valid email is required.</span>
            </div>

            <div class="w-full">
              <div class="input-title">Password*</div>
              <asp:TextBox runat="server" type="password" ID="txtPass" placeholder="Password" ng-model="user.password" required minlength="6"></asp:TextBox>
              <span style="color:red" ng-show="signupForm.txtPass.$touched && signupForm.txtPass.$invalid">Password (min 6 characters) is required.</span>
            </div>

            <div class="w-full">
              <div class="input-title">Confirm Password*</div>
              <asp:TextBox runat="server" type="password" ID="txtConfrimPass" placeholder="Confirm Password" ng-model="user.confirmPassword" required></asp:TextBox>
              <span style="color:red" ng-show="!passwordsMatch()">Passwords do not match.</span>
            </div>

            <div class="w-full">
              <div class="input-title">Mobile Number*</div>
              <asp:TextBox runat="server" ID="txtMobile" placeholder="1234567891" ng-model="user.mobile" required pattern="[0-9]{10}"></asp:TextBox>
              <span style="color:red" ng-show="signupForm.txtMobile.$touched && signupForm.txtMobile.$invalid">Valid mobile number is required.</span>
            </div>

            <div class="column w-full flex-center" style="margin-top:10px;">
              <div id="submit-btn" class="w-full">
                <asp:Button ID="btnSubmit" runat="server" Text="Sign up" CssClass="button-text button hover w-full" ng-disabled="signupForm.$invalid || !passwordsMatch()" />
              </div>
            </div>

            <div>
              <span id="left-togle-txt">Have an account?</span>
              <a href="Login.aspx" style="text-decoration:none;">
                <span id="toggle-text" class="link-text cursor-pointer hover">Login</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
    
 <script>
     var app = angular.module('signupApp', []);

     app.controller('signupController', function ($scope) {
         $scope.user = {};

         // Basic validation for passwords matching
         $scope.passwordsMatch = function () {
             return $scope.user.password === $scope.user.confirmPassword;
         };

         $scope.submitForm = function (isValid) {
             if (isValid && $scope.passwordsMatch()) {
                 alert("Form submitted successfully!");
                 $scope.user = {};
                 signupForm.$setPristine(); 
                 signupForm.$setUntouched();
             } else {
                 alert("Please correct the errors.");
             }
         };
     });
</script>
</body>
</html>
