<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="DoiMK.aspx.cs" Inherits="MyShop_masterpage_DoiMK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/doimatkhau.css" rel="stylesheet" />
    <div id="contain-doimk">
        <div id="header-doimk">
            <h3>ĐỔI MẬT KHẨU</h3>
        </div>
        <div id="main-doimk">
            <table>
                <tr>
                    <td align="right">Tài khoản:</td>
                    <td>
                        <asp:TextBox CssClass="txtDoiMK" ID="txtTK" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Mật khẩu cũ:</td>
                    <td>
                        <asp:TextBox CssClass="txtDoiMK" ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Mật khẩu mới:</t>
                    <td>
                        <asp:TextBox CssClass="txtDoiMK" ID="txtMKM" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right">Nhập lại mật khẩu:</td>
                    <td>
                        <asp:TextBox CssClass="txtDoiMK" ID="txtNLMK" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div id="footer-doimk">
            <asp:Button CssClass="btnDoiMK" ID="btnDoiMK" runat="server" Text="Xác nhận" OnClick="btnDoiMK_Click" />
            <asp:Button CssClass="btnDoiMK" ID="btnBack" runat="server" Text="Trở về" OnClick="btnBack_Click" />
        </div>
    </div>
    <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
</asp:Content>

