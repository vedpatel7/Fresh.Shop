<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="../Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        body {
            background-color: #F0F0F0;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Make the form at least half of the viewport height */
        }

        .container {
            width: 400px; /* Increase width as needed */
            max-width: 80%; /* Limit the maximum width for larger screens */
            padding: 20px;
            background-color: #FFF;
            border: 1px solid #CCC;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
            height: auto; /* Adjust the height as needed */
        }

        .ErrorMsg {
            font-size: 12px;
            color: #FF0000;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #CCC;
            border-radius: 3px;
        }

        fieldset {
            border: 1px solid #CCC;
            border-radius: 5px;
            padding: 10px;
        }

        .adLogin {
            height: 50px;
            width: 50px;
            vertical-align: middle;
        }

        .invalidlogin {
            color: #FF0000;
            text-align: center;
            font-weight: bold;
            margin-top: 10px;
        }

        .btnAdlogin {
            width: 100%;
            padding: 10px;
            background-color: #2D2F21;
            color: #FFF;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .btnAdlogin:hover {
            background-color: #1A1C14;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <img src="../Images/administrator.ico" class="adLogin" />
            <h2 style="text-align: center;">Admin Login</h2>
            <asp:Label ID="spnmsg" runat="server" Visible="false" CssClass="invalidlogin">Invalid Username / Password</asp:Label>
            <fieldset>
                <asp:TextBox ID="txtUnameAd" runat="server" placeholder="Username" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUnameAd" Display="Dynamic" CssClass="ErrorMsg" ErrorMessage="Required" />

                <asp:TextBox ID="txtPassAd" runat="server" TextMode="Password" placeholder="Password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassAd" Display="Dynamic" ErrorMessage="Required" CssClass="ErrorMsg" />

                <asp:Button ID="btnAdlogin" runat="server" Text="Login" CssClass="btnAdlogin" OnClick="btnAdlogin_Click" />
            </fieldset>
        </div>
    </form>
</body>
</html>
