<%@ Page Title="Account login — Armor Games" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiniOyunWebSite.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="login-box shadow-lg p-5 rounded">
            <h2 class="text-center mb-4">Login</h2>
            <form id="form1" runat="server">
                <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>
                <div class="form-group">
                    <label for="txtUsername">Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                </div>
                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-primary w-100 mt-3" OnClick="BtnLogin_Click" />
                <div class="text-center mt-3">
                    <a href="Register.aspx">Don't have an account? Register here.</a>
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

        .login-box {
            background-color: #fff;
            color: #333;
            max-width: 400px;
            width: 100%;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .form-control {
            border-radius: 10px;
        }

        .btn-primary {
            background-color: #1e3c72;
            border-color: #1e3c72;
            border-radius: 10px;
        }

            .btn-primary:hover {
                background-color: #2a5298;
                border-color: #2a5298;
            }

        a {
            color: #1e3c72;
            text-decoration: none;
        }

            a:hover {
                text-decoration: underline;
            }
    </style>
</asp:Content>
