<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="Gider.Logon" %>

<head>
    <style type="text/css">
*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}.w-100{width:100%!important}table{border-collapse:collapse}img,tr{page-break-inside:avoid}button,input{overflow:visible}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}h2,h3,p{orphans:3;widows:3}p{margin-top:0;margin-bottom:1rem}a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}</style>
</head>
<!DOCTYPE html>
<script src="../BootStrap/js/jquery-3.5.1.min.js"></script>
<link href="../Stylesheets/loginpage.css" rel="stylesheet" />
<link href="../BootStrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="../BootStrap/js/bootstrap.min.js"></script>
  <div class="wrapper fadeInDown" style="background-image: url('../Stylesheets/kar.jpg'); width=100%; height: 100%;background-size:cover;">
      <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
          <div class="fadeIn first">
              &nbsp;</div>

    <!-- Login Form -->
          <form runat="server">
              <div>
                  <table class="w-100">
                      <tr>
                          <td>
                             <div style="margin-left:50px;"> <input id="txtUserName" runat="server" placeholder="username" type="text" /></div>
                              <asp:RequiredFieldValidator ID="vUserName" runat="server" ControlToValidate="txtUserName" Display="Static" ErrorMessage="*" />
                          </td>
                      </tr>
                      <tr>
                          <td>
                            <div style="margin-left:50px;">  <input id="txtUserPass" runat="server" placeholder="password" typeof="text" /></div>
                              <asp:RequiredFieldValidator ID="vUserPass" runat="server" ControlToValidate="txtUserPass" Display="Static" ErrorMessage="*" />
                          </td>
                      </tr>
                      <tr>
                          <td class="text-center">Remember Me :
                              <asp:CheckBox ID="chkPersistCookie" runat="server" autopostback="false" />
                          </td>
                      </tr>
                      <tr>
                          <td>
                             <div style="margin-left:100px;"> <input id="cmdLogin" runat="server" type="submit" value="Logon" /><p>
                              </p></div>
                          </td>
                      </tr>
                  </table>
              </div>
          </form>
    <!-- Remind Passowrd -->
          <div id="formFooter">
              <a class="underlineHover" href="#">Alexa Travel</a>
          </div>
      </div>
</div>
