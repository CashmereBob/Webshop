<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List_Order.aspx.cs" Inherits="WebShop_Group7.Admin.List_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label_RubrikOrder" runat="server" Font-Size="XX-Large" Text="Order"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button_LaggOrder" runat="server" Text="Lägg till Order" />
        <br />
        <br />
        <asp:TextBox ID="TextBox_SokOrder" runat="server"></asp:TextBox>
        <asp:Button ID="Button_SokOrder" runat="server" Text="Sök" />
        <br />
        <br />
        <asp:ListView ID="ListView_Order" runat="server">
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
