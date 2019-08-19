<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="TaiKhoan.aspx.cs" Inherits="MyShop_masterpage_TaiKhoan"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/taikhoan.css" rel="stylesheet" />
    <div class="contain-tk">
        <div class="table-tk">
            <table>
                <tr>
                    <td colspan="2">
                        <h3>TÀI KHOẢN</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Image Class="img-tk" ID="imgTK" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="right">Tài khoản:</td>
                    <td>
                        <asp:TextBox CssClass="text-tk" ID="txtTaiKhoan" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Họ &amp; Tên:</td>
                    <td>
                        <asp:TextBox CssClass="text-tk" ID="txtHoTen" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Email:</td>
                    <td>
                        <asp:TextBox CssClass="text-tk" ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Số điện thoại:</td>
                    <td>
                        <asp:TextBox CssClass="text-tk" ID="txtSdt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Địa chỉ:</td>
                    <td>
                        <asp:TextBox CssClass="text-tk" ID="txtDiaChi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button CssClass="btn-tk" ID="btnSua" runat="server" Text="Chỉnh sửa thông tin" />
                        <asp:Button CssClass="btn-tk" ID="btnDMK" runat="server" Text="Đổi mật khẩu" OnClick="btnDMK_Click" />                        
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

