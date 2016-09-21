<%@ Page Title="Products" Language="C#" MasterPageFile="~/Admins.Master" AutoEventWireup="true" CodeBehind="List_Products.aspx.cs" Inherits="WebShop_Group7.Admin.List_Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-12">
                    <h2><%: Title %>.</h2>
                </div>
            </div>
            <%-- Search and buttons in top --%>
            <div class="row">
                <div class="col-lg-5">
                    <div class="input-group">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                        <input type="text" class="form-control" placeholder="Search for...">
                    </div>
                    <!-- /input-group -->
                </div>
                <!-- /.col-lg-6 -->
                <div class="col-lg-6">
                    <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Add Product" />
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
            <%-- End for Search and button --%>


            <%-- Grid Start --%>
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    <asp:GridView ID="categoriesGrid" runat="server" ModelType="WebApplication1.Model.Category"
                        SelectMethod="GetCategories" AutoGenerateColumns="false">

                        <Columns>

                            <asp:BoundField DataField="CategoryID" HeaderText="ID" />

                            <asp:BoundField DataField="CategoryName" HeaderText="Name" />

                            <asp:BoundField DataField="Description" HeaderText="Description" />

                            <asp:TemplateField HeaderText="# of Products">

                                <%--<ItemTemplate><%# Item.Products.Count %></ItemTemplate>--%>

                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
