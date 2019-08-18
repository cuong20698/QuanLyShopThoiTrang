<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="MyShop_masterpage_DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2" align="center" class="tieude">
                        <asp:Label class="logo" ID="lblLogo" runat="server" Text="MyShop"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="ĐĂNG NHẬP"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="TÊN ĐĂNG NHẬP:"></asp:Label>
                    </td>
                    <td>
                        <input id="txtUsername" type="text" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="MẬT KHẨU:"></asp:Label></td>
                    <td>
                        <input id="txtPassword" type="password" runat="server" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CheckBox ID="chkLuu" runat="server" Text="Lưu mật khẩu" Font-Size="Small" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button class="btn" ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Đăng nhập" Height="42px" Width="121px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
</body>
</html>
