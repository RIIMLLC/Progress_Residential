<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>IP Test Page.</h1>
                <br/>
                <h2>Your IP : <%: ViewBag.IP %></h2>
                <br/>
                <h2>Your Location : <%: ViewBag.city %></h2>
                <br/>
                <h2>Host Name : <%: ViewBag.VisitorHostName %></h2>
                <br />
                <h2>Host Error : <%: ViewBag.ErrorMessage %></h2>
                
            </hgroup>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
