<%@ Page Title="Register for an Armor Games account — Armor Games" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MiniOyunWebSite.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="register-box shadow-lg p-5 rounded">
            <h2 class="text-center mb-4">Register</h2>
            <form id="form1" runat="server">
                <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>
                <div class="form-group">
                    <label for="txtUsername">Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtConfirmPassword">Confirm Password</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                </div>
                <asp:Button ID="BtnRegister" runat="server" Text="Register" CssClass="btn btn-primary w-100 mt-3" OnClick="BtnRegister_Click" />
                <div class="login-link mt-3">
                    <a href="Login.aspx">Already have an account? Login here.</a>
                </div>
            </form>
        </div>
    </div>
    <style>
        body {
            background: #121212;
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        .register-box {
            background-color: #fff;
            color: #333;
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border-radius: 15px;
        }

        .form-control {
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .btn-primary {
            background-color: #1e3c72;
            border-color: #1e3c72;
            border-radius: 10px;
            font-weight: bold;
        }

            .btn-primary:hover {
                background-color: #2a5298;
                border-color: #2a5298;
            }

        .login-link a {
            color: #1e3c72;
            text-decoration: none;
            font-size: 0.9rem;
        }

            .login-link a:hover {
                text-decoration: underline;
            }

        .message-label {
            color: red;
            font-size: 0.9rem;
            margin-bottom: 10px;
            display: block;
        }
    </style>
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const form = document.getElementById("form1");
        const username = document.getElementById("<%= txtUsername.ClientID %>");
        const email = document.getElementById("<%= txtEmail.ClientID %>");
        const password = document.getElementById("<%= txtPassword.ClientID %>");
        const confirmPassword = document.getElementById("<%= txtConfirmPassword.ClientID %>");
        const messageLabel = document.getElementById("<%= lblMessage.ClientID %>");

        form.addEventListener("submit", function (e) {
            let errorMessage = "";

            if (!username.value.trim()) {
                errorMessage = "Username is required.";
            } else if (!email.value.trim()) {
                errorMessage = "Email is required.";
            } else if (!password.value.trim()) {
                errorMessage = "Password is required.";
            } else if (password.value !== confirmPassword.value) {
                errorMessage = "Passwords do not match.";
            }

            if (errorMessage) {
                e.preventDefault();
                messageLabel.textContent = errorMessage;
                messageLabel.style.color = "red";
            }
        });
    });
</script>
</asp:Content>
