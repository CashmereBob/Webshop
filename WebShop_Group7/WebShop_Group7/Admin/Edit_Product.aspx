<%@ Page Title="Edite Product" Language="C#" MasterPageFile="~/Admins.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="WebShop_Group7.Admin.Edit_Product" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%: Title %>.</h2>

    <asp:Image ID="Image1" runat="server" />
    <h4>
        <asp:Label ID="Label_ProduktID" runat="server" Text="OrderID"></asp:Label></h4>
    <h3>Produktuppgifter</h3>
    
        <h4>Produktnamn:           
            <asp:Label ID="Label_ProductName" runat="server" Text="Produktnamn"></asp:Label>
            <asp:TextBox ID="TextBox_ProductName" runat="server"></asp:TextBox>
         
        </h4>
   
    <h4>Artikelnummer:
        <asp:Label ID="Label_ArticleNumber" runat="server" Text="000111222333"></asp:Label>
             <asp:TextBox ID="TextBox1_ArticleNumber" runat="server"></asp:TextBox>

    </h4>

    <h4>Antal i lager:
        <asp:Label ID="Label_Quantity" runat="server" Text="23"></asp:Label>st
          <asp:TextBox ID="TextBox_Quantity" runat="server"></asp:TextBox>
       
    </h4>
    <h4>Varumärke:
        <asp:Label ID="Label_Brand" runat="server" Text="Varumärke"></asp:Label>
                 <asp:TextBox ID="TextBox_Brand" runat="server"></asp:TextBox>
    </h4>
    <h4>Kategori:
        <asp:Label ID="Label_Category" runat="server" Text="Kategori"></asp:Label>
                <asp:TextBox ID="TextBox_Category" runat="server"></asp:TextBox>   
    </h4>
    <h3>Beskrivning</h3>
    <textarea>Produkten är en fin fin sak som alla borde ha. Produkten är 
         en fin fin sak som alla borde ha. Produkten är en fin fin sak som alla borde ha. </textarea>
    <h3>Egenskaper</h3>
    <h4>
         Läggtill egenskap<asp:Button ID="Button_AddAttribute" runat="server" Text="Läggtill" />
        <br />
        <asp:TextBox ID="TextBox_AttributeCategory" runat="server"></asp:TextBox><asp:DropDownList ID="DropDownList_Atribute" runat="server"></asp:DropDownList>
    </h4>
    <h4>Egenskap ett: 
        <asp:Label ID="Label_Attribute1" runat="server" Text="Large"></asp:Label></h4>
    <h4>Egenskap två:
        <asp:Label ID="Label_Attribute2" runat="server" Text="">Röd</asp:Label></h4>
    <h4>Egenskap tre: 
        <asp:Label ID="Label_Attribute3" runat="server" Text="">Tröja</asp:Label></h4>  
    <asp:Button ID="Button_Save" runat="server" Text="Spara" />
</asp:Content>
