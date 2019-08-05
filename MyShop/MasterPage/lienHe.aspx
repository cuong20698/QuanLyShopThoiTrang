<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="lienHe.aspx.cs" Inherits="MyShop_MasterPage_lienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/lienhe.css" rel="stylesheet" />
    <div id="lienhe">
        <div id="contain-lienhe">
            <div id="tieude-ct-lh">
                LIÊN HỆ
            </div>
            <div id="form-ct-lh">
                Vui lòng điền thông tin sau:<br />
                <br />
                <table>
                    <tr>
                        <td>Họ tên:</td>
                        <td>
                            <asp:TextBox class="txt" ID="txtHoTen" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:TextBox class="txt" ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Điện thoại:</td>
                        <td>
                            <asp:TextBox class="txt" ID="txtSDT" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Nội dung:</td>
                        <td>
                            <asp:TextBox class="txt" ID="txtND" runat="server" Rows="5" TextMode="MultiLine" Height="100px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button class="btn" ID="btnGui" runat="server" Text="Gửi" OnClick="btnGui_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="text-ct-lh">
                Điện thoại: 090.979.84.88<br />
                Email: sales.MyShop247@gmail.com<br />
                Website: www.MyShop.vn
            </div>
        </div>
    </div>
</asp:Content>

