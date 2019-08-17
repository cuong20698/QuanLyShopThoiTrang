<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="MyShop_masterpage_SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dtlTK" runat="server">
                <ItemTemplate>
                    <asp:Image Class="imgTK" ID="imgSP" runat="server" ImageUrl ='<%#"~/MyShop/picture/"+ Eval("HINHANH") %>'></asp:Image>
                    <br />
                    <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
</asp:Content>

