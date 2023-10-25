<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div>
        <div class="loginContainer">
            <div class="sideLogin">
                <p class="welcome" style="margin-left:-10%;">Welcome to Fresh.Shop</p>
                <table style="margin: 0 auto;">
                    <tr runat="server" id="trUserName" Visible='<%# ShouldShowLoginForm() %>'>
                        <td>UserName</td>
                        <td style="width: 140px">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="textLogin" />
                        </td>
                        <td style="font-size: 15px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtUserName" ForeColor="#990000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr runat="server" id="trPassword" Visible='<%# ShouldShowLoginForm() %>'>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="textLogin" />
                        </td>
                        <td style="font-size: 15px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="#990000" CssClass="font"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" Visible='<%# ShouldShowLoginForm() %>' />
                            <asp:Button ID="lnkRegister" runat="server" CssClass="button" Text="New Registration" PostBackUrl="~/Registration.aspx" CausesValidation="False" Visible='<%# ShouldShowLoginForm() %>' />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Label ID="lblResult" runat="server" />
                        </td>
                    </tr>
                </table>
                <br />
            </div>
            <br />

        </div>

        <div class="bodyImages">
            <div class="welcome">Our Products</div>
            <img src="Images/1.jpg" /><img src="Images/2.jpg" />
            <img src="Images/3.jpg" />
        </div>
    </div>

   
</asp:Content>
