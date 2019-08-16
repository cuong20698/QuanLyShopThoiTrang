<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="MyShop_masterpage_TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/taikhoan.css" rel="stylesheet" />
    <div class="contain-tk">
        <div class="td-tk">DANH SÁCH TÀI KHOẢN</div>
        <div class="table-tk">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>

