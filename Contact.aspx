<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FastHostsHeaderDemoV1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/Contact.js"></script>
    <div class="container">
        <div class="row">
        <div class="col s6 offset-s3">
        <div class="card blue-grey darken-1">
            <div class="card-content white-text">
                <span class="card-title white-text center">Contact</span>
                <p class="center center-align">Feel free to leave feedback on the site and on any of the TLD's and we will make sure to use your feedback effectively.</p>
                <div class="input-field">
                    <i class="material-icons prefix">face</i>
                    <asp:Textbox id="tbFirstName" runat="server" placeholder="FirstName" data-length="15" ClientIDMode="Static" CssClass="white-text"></asp:Textbox>
                    </div>
                    <div class="input-field">
                    <i class="material-icons prefix">face</i>
                    <asp:Textbox id="tbEmail" runat="server" placeholder="Email" data-length="15" ClientIDMode="Static" CssClass="white-text"></asp:Textbox>
                       </div>
                <div class="input-field">
                    <i class="material-icons prefix">comment</i>
                    <asp:Textbox runat="server" id="Message" placeholder="Please submit issue or email here." data-length="240" ClientIDMode="Predictable" CssClass="white-text materialize-textarea" TextMode="MultiLine"></asp:Textbox>
                </div>
                <div class="center center-align">
                    <asp:LinkButton runat="server" CssClass="btn waves-effect waves-light white-text" type="Send" name="action" OnClientClick="stringlength()" ID="btnSend" OnClick="btnSend_OnClick">Send
                        <i class="material-icons right">send</i>
                    </asp:LinkButton>
            </div>
        </div>
        </div>
        </div>
    </div>
    </div>
</asp:Content>