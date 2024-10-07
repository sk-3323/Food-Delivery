<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Admin_assets_LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="icon" href="https://uploads-ssl.webflow.com/60f85e33b5a89c7e65d83755/6417e48ee2165d528d5538a9_Logo.svg">
    <link href="assets/img/favicon.png" rel="icon"/>
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
        gap: 40px;
        display: flex;
        width: 80%;
        max-width: 600px;
        box-sizing: border-box;
        padding: 56px;
        flex-direction: column;
        align-items: center;
        background-color: white;
        border-radius: 16px;
        overflow: auto;
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
      #google-btn {
        display: flex;
        height: 56px;
        justify-content: center;
        align-items: center;
        gap: 12px;
        border-radius: 31px;
        background: #f7f7f7;
        width: 100%;
        flex-shrink: 0;
      }
      #google-btn-text {
        color: #1e0825;
        text-align: center;
        font-family: 'Sharp Sans';
        font-weight: 700;
        margin-top: 4px;
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
        gap: 32px;
      }
      input {
        display: flex;
        height: 56px;
        padding: 0px 24px;
        align-items: center;
        gap: 12px;
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
        height: 56px;
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
      .not-receive-email-button {
        gap: 4px;
        color: #1e0825;
        font-family: 'Sharp Sans';
        background-color: #f7f7f7;
        text-transform: none;
        cursor: unset;
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
      .toggle-container {
        margin-top: 16px;
        font-size: 16px;
        color: #1e0825;
        font-family: 'Sharp Sans';
      }
      .signup-message-container {
        font-family: 'Sharp Sans';
        font-size: 16px;
        color: #1e0825;
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
        width: 24px;
        height: 24px;
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
          gap: 20px;
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
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
        <div id="page-container" style="background-image: linear-gradient(68deg, rgb(255, 245, 221) 0%, rgba(255, 151, 73, 0.83) 100%);">
      <div id="login-page" class="card-container" style="display:flex;">
        <div class="column flex-center">
          <img src="Admin/assets/img/logo.png" height="130" width="140"/>
          <div id="title" class="title">Welcome Back</div>
            <asp:Label ID="lblStatus" runat="server" Text="" class="text-danger"></asp:Label>
        </div>
        <div class="form column flex-center w-full">
          <div class="w-full">
            <div class="input-title">Email*</div>
              <asp:TextBox ID="txtemail" runat="server" placeholder="hello@youremail.com"></asp:TextBox>
          </div>
          <div class="w-full">
            <div class="password-title-container">
              <div class="input-title">Password*</div>
              
            </div>

            <div class="password-container">
              <asp:TextBox ID="txtpass" runat="server" placeholder="Enter your password"></asp:TextBox>
              
            </div>
            <div id="error-message" style="display: none;"></div>
          </div>

          <div class="column w-full flex-center">
            <div id="submit-btn" class="w-full">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button hover"/>
            </div>

            <div>
              <span id="left-toggle-text">Don’t have an account?</span>
              <a href="Signup.aspx" style="text-decoration:none;"><span id="toggle-text" class="link-text cursor-pointer hover">Sign Up</span></a>
            </div>
          </div>
        </div>
      </div>

      
    </div>
    </div>
    </form>
</body>
</html>
