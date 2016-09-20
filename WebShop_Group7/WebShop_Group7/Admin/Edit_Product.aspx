<%@ Page Title="Edite Product" Language="C#" MasterPageFile="~/Admins.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="WebShop_Group7.Admin.Edit_Product" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h2><%: Title %>.</h2>

        <div class="row">
            <%-- IMG --%>
            <div class="col-md-2">
                <asp:Image ID="Image1" runat="server" />Img
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <h4>
                    <%-- Order ID --%>
                    <asp:Label ID="Label_ProduktID" runat="server" Text="OrderID"></asp:Label>
                </h4>
            </div>
        </div>
        <%-- Produktuppgifter --%>
        <div class="row">
            <div class="col-md-2">
                <h3>Produktuppgifter</h3>
            </div>
        </div>
        <%-- Produkt Namn --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Produktnamn:</h4>
            </div>
            <div class="col-md-2">
                <h4>
                    <asp:Label ID="Label_ProductName" runat="server" Text="Produktnamn"></asp:Label>

                </h4>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox_ProductName" runat="server"></asp:TextBox>
            </div>
        </div>
        <%-- Artikelnummer --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Artikelnummer: </h4>
            </div>
            <div class="col-md-2">
                <h4>
                    <asp:Label ID="Label_ArticleNumber" runat="server" Text="000111222333"></asp:Label></h4>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox1_ArticleNumber" runat="server"></asp:TextBox>
            </div>
        </div>
        <%-- Antal i lager --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Antal i lager:</h4>
            </div>
            <div class="col-md-2">
                <h4>
                    <asp:Label ID="Label_Quantity" runat="server" Text="23"></asp:Label>st</h4>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox_Quantity" runat="server"></asp:TextBox>
            </div>
        </div>
        <%-- Varumärke --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Varumärke: </h4>
            </div>
            <div class="col-md-2">
                <h4>
                    <asp:Label ID="Label_Brand" runat="server" Text="Varumärke"></asp:Label></h4>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox_Brand" runat="server"></asp:TextBox>
            </div>
        </div>
        <%-- Kategori --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Kategori:  </h4>
            </div>
            <div class="col-md-2">
                <asp:Label ID="Label_Category" runat="server" Text="Kategori"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="TextBox_Category" runat="server"></asp:TextBox>
            </div>
        </div>
        <%-- Beskrivning --%>
        <div class="row">
            <h3>Beskrivning</h3>
        </div>
        <div class="row">
            <textarea>Produkten är en fin fin sak som alla borde ha. Produkten är 
         en fin fin sak som alla borde ha. Produkten är en fin fin sak som alla borde ha. </textarea>
        </div>
        <%-- Egenskaper --%>
        <div class="row">
            <h3>Egenskaper</h3>
        </div>
        <div class="row">
            <div class="col-md-2">
                <h4>Lägg till egenskap</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="TextBox_AttributeCategory" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:DropDownList ID="DropDownList_Atribute" runat="server"></asp:DropDownList>
            </div>
            <div class="col-md-2">
                <asp:Button ID="Button_AddAttribute" runat="server" Text="Läggtill" />

            </div>
        </div>
        <%-- Egenskap1 --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Egenskap ett</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label_Attribute1" runat="server" Text="Large"></asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Button ID="Button_RemoveAttribute1" runat="server" Text="Remove" />
            </div>
        </div>
        <%-- Egenskap2 --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Egenskap två</h4>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label_Attribute2" runat="server" Text="">Röd</asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Button ID="Button_RemoveAttribute2" runat="server" Text="Remove" />
            </div>
        </div>
        <%-- Egenskap3 --%>
        <div class="row">
            <div class="col-md-2">
                <h4>Egenskap tre</h4>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
                <asp:Label ID="Label_Attribute3" runat="server" Text="">Tröja</asp:Label>
            </div>
            <div class="col-md-2">
                <asp:Button ID="Button_RemoveAttribute3" runat="server" Text="Remove" /><br />
            </div>
        </div>

        <%-- Save button --%>
        <div class="row">
            <div class="col-md-2">
                <asp:Button ID="Button_Save" runat="server" Text="Spara" />
            </div>
        </div>
    </div>
</asp:Content>
