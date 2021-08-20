<%@ Page Title="Register" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FastHostsHeaderDemoV1.WebForm3" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="Styles/Register.css" rel="stylesheet" />
        <script src="Scripts/Register.js"></script>
        <div class="container">
            <div class="row">
                <div class="col s6 offset-s3">
                    <div class="card blue-grey darken-1">
                        <div class="card-content white-text">
                            <span class="card-title white-text center">Registration</span>
                            <div class="input-field">
                                <i class="material-icons prefix">face</i>
                                <asp:Textbox runat="server" placeholder="First Name" autocomplete="off" id="tbFirstName" data-length="15" ClientIDMode="Static" CssClass="validate white-text"></asp:Textbox>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">face</i>
                                <asp:Textbox runat="server" placeholder="Last Name" autocomplete="off" id="tbLastName" data-length="15" ClientIDMode="Static" CssClass="validate white-text"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbLastName" ErrorMessage="Please enter surname" ToolTip="Enter surname" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">email</i>
                                <asp:Textbox runat="server" placeholder="Email" autocomplete="off" id="tbEmail" data-length="50" ClientIDMode="Static" CssClass="validate white-text"></asp:Textbox>
                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">email</i>
                                <asp:Textbox runat="server" placeholder="Confirm Email" autocomplete="off" id="tbConfirmEmail" data-length="50" ClientIDMode="Static" CssClass="validate white-text"></asp:Textbox>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">perm_identity</i>
                                <asp:Textbox runat="server" placeholder="Username" autocomplete="off" id="tbUsername" data-length="20" ClientIDMode="Static" CssClass="validate white-text"></asp:Textbox>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">https</i>
                                <asp:Textbox runat="server" placeholder="Password" autocomplete="off" id="tbPassword" data-length="30" ClientIDMode="Static" CssClass="validate white-text" TextMode="Password"></asp:Textbox>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix">https</i>
                                <asp:Textbox runat="server" placeholder="Confirm Password" autocomplete="off" id="tbConfirmPassword" data-length="30" ClientIDMode="Static" CssClass="validate white-text" TextMode="Password"></asp:Textbox>
                            </div>

                        </div>
                        <div class="card-action">
                            <div class="center center-align">
                                <asp:LinkButton runat="server" ID="btnRegister" CssClass="btn waves-effect waves-light white-text" Text="Register" OnClick="btnSubmit_OnClick">
                                    <i class="material-icons left">cloud</i> Register
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </asp:Content>