<%@ Page Title="Products" Language="C#" MasterPageFile="~/Admins.Master" AutoEventWireup="true" CodeBehind="List_Products.aspx.cs" Inherits="WebShop_Group7.Admin.List_Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-12">
                    <h2><%: Title %>.</h2>
                </div>
            </div>
          

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
                        <asp:Button ID="Button1" Cssclass="btn btn-default" runat="server" Text="Add Product" />
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
           



            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
