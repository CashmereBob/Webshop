<%@ Page Language="C#" MasterPageFile="~/Admins.Master" AutoEventWireup="true" CodeBehind="List_Order.aspx.cs" Inherits="WebShop_Group7.Admin.List_Order" %>

 <asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h2>Order</h2>
     
     <asp:TextBox ID="TextBox_Search" runat="server"></asp:TextBox>
     <asp:Button ID="Button_Search" runat="server" Text="Search" />
     <asp:DataList ID="DataList_Orders" runat="server">
     </asp:DataList>

</asp:Content>