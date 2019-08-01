<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        div{
            width:450px;
            margin:50px auto;
            font-family:Arial;
            background-color:#2F0B3A;
            color:white;
            background-repeat:no-repeat;
            -moz-border-radius:50px;
            -webkit-border-radius: 50px;
        }
        table{
            width:382px;
            margin:auto;
            height: 245px;
        }
        .btn{
            text-align:center;
            margin:auto;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            
        }
        #txtPassword, #txtUsername{
            -moz-border-radius-bottomright: 10px;
            -webkit-border-bottom-right-radius: 5px;
            width:200px;
        }
        .tieude {
            font-weight:bold;
            font-family:Arial, Helvetica, sans-serif;
            font-size:50px;
            line-height:100px;
        }
        .logo{
           font-size:15px;
           float:left;
           line-height:100px;
           margin-right:0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return check()">
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
                <td><input id="txtPassword" type="password" runat="server" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:CheckBox ID="chkLuu" runat="server" Text="Lưu mật khẩu" Font-Size="Small" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button class="btn" ID="btnLogin" runat="server"  OnClick="btnLogout_Click" Text="Đăng nhập" Height="42px" Width="121px" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
    <script>
        function check() {
            var usn, pass;
            usn = document.getElementById("txtUsername").value;
            pass = document.getElementById("txtPassword").value;
            if (usn == "" || pass == "") {
                alert("Vui lòng nhập đầy đủ thông tin!!");
            } 
            else 
            return true;
        return false;
        }
    </script>
</html>

