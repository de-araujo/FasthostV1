<%@ Page Title="Domains" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Domains.aspx.cs" Inherits="FastHostsHeaderDemoV1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Styles/Domains.css" rel="stylesheet" />
    <h1>Domains</h1>
    <asp:TextBox ID="tbSEARCH" CssClass="searchbar" autocomplete="off" runat="server"></asp:TextBox>
        <asp:LinkButton runat="server" ID="btnSearch1" CssClass="btn waves-effect waves-light white-text" Text="Search" OnClick="btnSEARCH_Click">
            <i class="material-icons right ">send</i>Search
        </asp:LinkButton>
    <!--<asp:Button ID="btnSEARCH" CssClass="searchbutton white-text" runat="server" Text="Search" OnClick="btnSEARCH_Click" /> -->
    <div runat="server" id="resultsContainer">
        <div id="{0}" class="searchitemstemplate" >
            </div>
        </div>
</asp:Content>
