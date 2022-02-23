<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayRoll.WebForms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec1"> 
    <div class="signin">
        <h2>&ensp;&nbsp;SignIn</h2>
    </div>
        <div>
            <p>&nbsp;&ensp;&emsp; to Continue To Employee PayRoll</p>
        </div>
    <div>
        <asp:TextBox ID="TextBox1" placeholder="Email Or Phone" name="Email" runat="server" Width="300px" Height="30px"></asp:TextBox>

    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <div>
        <asp:TextBox ID="TextBox2" placeholder="Password" name="Password" runat="server" Width="300px" TextMode="Password" Height="30px"></asp:TextBox>
    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />  
        &ensp;&nbsp;&emsp;&emsp; 
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True" CssClass="text-decoration-none">Forgot Password?</asp:LinkButton>
    </div>
        <br />
        <div>
        <strong>or</strong>&nbsp; <a href="SignUp.aspx" Class="text-decoration-none" >Create account</a> &emsp;&ensp;                           
        <asp:Button ID="btnLogin" runat="server" class="btn btn-primary" Text="LOGIN" Width="100px" Height="38px" OnClick="btnLogin_Click" />
        <div>
             <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>          

    </div>
    </div>
</asp:Content>

