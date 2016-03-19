<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginRegirsterClient.aspx.cs" Inherits="LoginRegirsterClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Final Project by Kristopher Chambers and Piano Hagens</title>
    <link rel="stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <div id="wrapper">
        <header>
            <h1>Final Project</h1>
            <h2>By Kristopher Chambers and Piano Hagens</h2>
        </header>
        <form id="login_form" runat="server">
        <section class="fanregister">
            <h2>Fan Register </h2>
            <h3>Fan Information</h3>
            <p><label class="field_name">Name</label><asp:TextBox ID="RegisterNameTextBox" runat="server" CssClass="field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterNameTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
            </p>
            <p><label class="field_name">Email</label><asp:TextBox ID="RegisterEmailTextBox" runat="server" CssClass="field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterEmailTextBox" CssClass="error">This field is required.</asp:RequiredFieldValidator>              
                  <asp:RegularExpressionValidator ID="ValidateEmailExpressn" runat="server" ControlToValidate="RegisterEmailTextBox" ErrorMessage="Not a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                 </asp:RegularExpressionValidator>
            </p>
            <p><label class="field_name">Username</label><asp:TextBox ID="RegisterUserNameTextBox" runat="server" CssClass="field"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterUserNameTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
            </p>
            <p><label class="field_name">Password</label><asp:TextBox ID="RegisterPasswordTextBox" runat="server" CssClass="field" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterPasswordTextBox" CssClass="error">This field is required.</asp:RequiredFieldValidator>
            </p>

            <p><label class="field_name">Confirm password</label><asp:TextBox ID="ConfirmPasswordTextBox" runat="server" CssClass="field" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterPasswordTextBox" CssClass="error"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" 
                     runat="server" 
                     ErrorMessage="Passwords don't match"
                      ControlToValidate="ConfirmPasswordTextBox"
                      ControlToCompare="RegisterPasswordTextBox">

                 </asp:CompareValidator>
            </p>


            <p><asp:Label ID="RegisterErrorLabel" runat="server" CssClass="error"></asp:Label></p>
            <p><asp:Button ID="RegisterButton" runat="server" Text="Register" Height="45px" Width="80px" OnClick="RegisterButton_Click" align="center" /></p>
        </section>
    
        <section class="fanlogin">
                <h2> Registered Fan Login</h2>
                <p><label class="field_name">Username</label><asp:TextBox ID="UserTextBox" runat="server" CssClass="field" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LoginUserNameRequiredFieldValidator" runat="server" ErrorMessage="User Name is required" ControlToValidate="RegisterUserNameTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
                </p>
                <p><label class="field_name">Password</label><asp:TextBox ID="PasswordTextBox" runat="server" CssClass="field"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LoginPasswordREquiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterPasswordTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
                </p>
                <p><asp:Label ID="LoginErrorLabel" runat="server" CssClass="error"></asp:Label></p>
                <p><asp:Button ID="LoginButton" runat="server" Text="Login" Height="45px" Width="80px" OnClick="LoginButton_Click" align="center" /></p>
           </section>


        
        </form>
        <footer></footer>
    </div>
</body>
</html>