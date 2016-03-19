﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginRegirsterFanSelectShowClient.aspx.cs" Inherits="LoginRegirsterFanSelectShowClient" %>

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
                    <%---------------- Fan Register start here--------------------%>
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
            <p><asp:Button ID="RegisterButton" runat="server" Text="Register" Height="45px" Width="80px" 
                OnClick="RegisterButton_Click" /></p>
        </section>
         <%---------------- Fan Login start here--------------------%>
        <section class="fanlogin">

                <h2> Registered Fan Login</h2>
                <p><label class="field_name">Username</label><asp:TextBox ID="UserNameTextBox" runat="server" CssClass="field" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LoginUserNameRequiredFieldValidator" runat="server" ErrorMessage="User Name is required" ControlToValidate="RegisterUserNameTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
                </p>
                <p><label class="field_name">Password</label><asp:TextBox ID="PasswordTextBox" runat="server" CssClass="field"  TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LoginPasswordREquiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="RegisterPasswordTextBox" CssClass="error">This field is required</asp:RequiredFieldValidator>
                </p>
                <p><asp:Label ID="LoginErrorLabel" runat="server" CssClass="error"></asp:Label></p>
                <p><asp:Button ID="LoginButton" runat="server" Text="Login" Height="45px" Width="80px" OnClick="LoginButton_Click" /></p>
           </section>


              <%---------------- Fan selectshow start here--------------------%>
            <section class="selectshow">
                <p>Logined as A Registed Fan</p>
                <h1>Search Show Here</h1>
                <table>
            <tr><td>Select Artist</td>
                <td><asp:DropDownList ID="ArtistListDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ArtistListDropDownList_SelectedIndexChanged"></asp:DropDownList></td></tr>

             <tr><td>Select Show Name</td>
                <td><asp:DropDownList ID="ShowNameDropDownList" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="ShowNameDropDownList_SelectedIndexChanged" ></asp:DropDownList></td></tr>

            <tr><td>Select ShowDate</td>
             <td><asp:Calendar ID="ShowDateCalendar" runat="server" ></asp:Calendar> </td>     </tr>

            <tr><td>Select ShowTime</td>
             <td>
                 <asp:DropDownList ID="ShowTimeDropDownList" runat="server">
                     <asp:ListItem>10:00:00</asp:ListItem>
                     <asp:ListItem>12:00:00</asp:ListItem>
                     <asp:ListItem>14:00:00</asp:ListItem>
                     <asp:ListItem>10:00:00</asp:ListItem>
                     <asp:ListItem>16:00:00</asp:ListItem>

                 </asp:DropDownList>  </td>     </tr>
         

         <tr><td> <asp:Button ID="SelectShowSubmitButton" runat="server" Text="Submit" /></td>
              <td>
                  <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label> </td>
          </tr>
</table>
            </section>
              <%---------------- Selectshow Results start here--------------------%>
            <h2 class="auto-style1">Search Results</h2>
            <asp:Table ID="SearchResultsTable" runat="server" OnLoad="Page_Load" >
                <asp:TableRow>
                    <asp:TableHeaderCell>Show Artist Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Show Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Show Date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Show Time</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Ticket</asp:TableHeaderCell>
                </asp:TableRow>

                <asp:TableRow  CssClass="tr">
                    <asp:TableCell CssClass="td">1</asp:TableCell>
                    <asp:TableCell  CssClass="td">2</asp:TableCell>
                    <asp:TableCell  CssClass="td">3</asp:TableCell>
                    <asp:TableCell  CssClass="td">4</asp:TableCell>
                    <asp:TableCell  CssClass="td">5</asp:TableCell>
                </asp:TableRow>

                                <asp:TableRow  CssClass="tr">
                    <asp:TableCell CssClass="td">1</asp:TableCell>
                    <asp:TableCell  CssClass="td">2</asp:TableCell>
                    <asp:TableCell  CssClass="td">3</asp:TableCell>
                    <asp:TableCell  CssClass="td">4</asp:TableCell>
                    <asp:TableCell  CssClass="td">5</asp:TableCell>
                </asp:TableRow>
                   
            </asp:Table>         
              
       
        </form>
        <footer></footer>
    </div>
</body>
</html>