<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="MyShop_masterpage_SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/sanpham.css" rel="stylesheet" />
    <div id="contain-sp">
        <div id="header-sp">
            <div class="td-sp"></div>
            <div class="label">
                <asp:Label CssClass="lblSP" ID="lblSP" runat="server" Text="Chân váy"></asp:Label>
            </div>
            <div class="td-sp2"></div>
        </div>
        <div id="main-sp">
            <asp:DataList ID="dtlSP" runat="server">
                <ItemTemplate>
                    <table class="table-sp">
                        <tr>
                            <td>
                                <asp:Image CssClass="img-sp" ID="Image1" runat="server" Height="300px" Width="200px" ImageUrl='<%# "~/MyShop/picture/" + Eval("HINHANH") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Button" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div id="footer-sp"></div>
    </div>
</asp:Content>

