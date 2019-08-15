<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="MyShop_masterpage_TaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/taikhoan.css" rel="stylesheet" />
    <div class="contain-tk">
        <div class="td-tk">DANH SÁCH TÀI KHOẢN</div>
        <div class="table-tk">
            <table>
                <tr style="font-weight:bold; background-color:#808080; color:white;border-left:none">
                    <td>STT</td>
                    <td>Username</td>
                    <td>Họ tên</td>
                    <td>Email</td>
                    <td>SĐT</td>
                    <td>Địa chỉ</td>
                    <td>Công cụ</td>
                </tr>
                <asp:Label ID="lblTK" runat="server" Text=""></asp:Label>
            </table>
        </div>
    </div>
</asp:Content>

