<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOn.aspx.cs" Inherits="AplicadaII_Rmedic.LogOn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <title>Login Form</title>
  <link rel="stylesheet" href="Bootstrap/css/styleLog.css"/>
 
</head>
<body>
    <form runat="server">
  <section class="container"/>
    <div class="login">
      <h1> <asp:Label ID="Msg" runat="server" Text="INICIO DE CESION"></asp:Label></h1>
      <form method="post" action="index.html">
        <p>
            <asp:TextBox ID="UserEmail" runat="server" />
        </p>
        <p>
            <asp:TextBox ID="UserPass" TextMode="Password"  runat="server" />
        </p>
        <p class="remember_me">
          <label>
            
              <asp:CheckBox ID="Persist" runat="server" />
            Recordarme
          </label>
        </p>
        <p class="submit"> <asp:button ID="Submit1" OnClick="Logon_Click" Text="Inicio Cesion"  
       runat="server" /></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="index.html">Click here to reset it</a>.</p>
    </div>
 </form>
</body>
</html>
