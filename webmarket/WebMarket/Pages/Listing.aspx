<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="WebMarket.Pages.Listing"
    MasterPageFile="~/Pages/Store.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">
        <asp:Repeater ItemType="WebMarket.Models.Item"
            SelectMethod="GetItems" runat="server">
            <ItemTemplate>
                <div style="display: inline-block;" class="item": >
                         <p><img src="<%# Item.ImageUrl %>"></a></p>
                         <h3><%# Item.Name %></h3>
                             <%# Item.Description %>
                             <h4><%# Item.Price.ToString("c") %></h4>
                             <button name="add" type="submit" value="<%# Item.ItemId %>">
                                 Добавить в корзину
                             </button>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="pager">
        <%
            for (int i = 1; i <= MaxPage; i++)
            {
                string category = (string)Page.RouteData.Values["category"]
                    ?? Request.QueryString["category"];
                
                string path = RouteTable.Routes.GetVirtualPath(null, null,
                    new RouteValueDictionary() { {"category", category}, { "page", i } }).VirtualPath;
                Response.Write(
                    String.Format("<a href='{0}' {1}>{2}</a>",
                        path, i == CurrentPage ? "class='selected'" : "", i));
            }
        %>
    </div>
</asp:Content>