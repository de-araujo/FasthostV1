<%@ Page Title="Login" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FastHostsHeaderDemoV1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Styles/Login.css" rel="stylesheet" />
    <script src="Scripts/Login.js"></script>
    <div class="container">
        <div class="row">
            <div class="col s6 offset-s3">
                <div class="card blue-grey darken-1">
                    <div class="card-content white-text">
                        <span class="card-title white-text center">Login</span>
                        <p class="center center-align">Please login using your account details to access our services fully.</p>
                        <div class="input-field">
                            <i class="material-icons prefix">perm_identity</i>
                            <asp:Textbox runat="server" placeholder="Username" autocomplete="off" id="tbUsername" data-length="20" ClientIDMode="Static" CssClass="validate white-text"></asp:Textbox>
                        </div>
                        <div class="input-field">
                            <i class="material-icons prefix">https</i>
                            <asp:Textbox runat="server" placeholder="Password" autocomplete="off" id="tbPassword" data-length="30" ClientIDMode="Static" TextMode="Password" CssClass="validate white-text"></asp:Textbox>
                        </div>
                        <div class="center center-align">
                            <asp:LinkButton runat="server" CssClass="btn waves-effect waves-light white-text" ID="btnLogin" OnClick="btnLogin_OnClick">Login
                                <i class="material-icons left">cloud</i>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>