<%@ Page Title="Users" Language="C#" MasterPageFile="~/Admins.Master" AutoEventWireup="true" CodeBehind="List_Users.aspx.cs" Inherits="WebShop_Group7.Admin.List_Users" %>

 <asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2><%: Title %>.</h2>
      
     
     <asp:TextBox ID="TextBox_Search" runat="server"></asp:TextBox>
     <asp:Button ID="Button_Search" runat="server" Text="Sök" />
     <asp:Button ID="Button_Add" runat="server" Text="Lägg till" />

      <asp:GridView ID="GridviewUser" runat="server" AutoGenerateColumns="false"

    AllowSorting="true" AllowPaging="true" PageSize="5"

    ModelType="WebShop_Group7.Models.Users"

    SelectMethod="ListAllUsers">

    <Columns>

        <asp:BoundField DataField="ID" HeaderText="Kund-ID" SortExpression="ID" />

        <asp:BoundField DataField="Name" HeaderText="Namn" SortExpression="Namn" />

        <asp:BoundField DataField="Lastname" HeaderText="Efternamn" SortExpression="Lastname" />

       
    </Columns>

</asp:GridView>

</asp:Content>
