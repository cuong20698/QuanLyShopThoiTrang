<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="SuaSP.aspx.cs" Inherits="MyShop_masterpage_SuaSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/suasp.css" rel="stylesheet" />
    <div class="contain-ssp">
        <div class= "header-ssp">
            <h3>CHỈNH SỬA SẢN PHẨM</h3>
        </div>
        <div class="main-ssp">
            <table>
                <tr>
                    <td rowspan="9" width="300px">
                        <asp:Image CssClass="imgSua" ID="imgSP" runat="server" /></td>
                    <td>Mã sản phẩm:</td>
                    <td>
                        <asp:TextBox CssClass="text-ssp" ID="txtMaSP" runat="server" Text=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td>
                        <asp:TextBox CssClass="text-ssp" ID="txtTenSP" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Hình ảnh:</td>
                    <td>
                        <asp:FileUpload CssClass="text-ssp" ID="fUpload" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Đơn vị tính:</td>
                    <td>
                        <asp:TextBox  CssClass="text-ssp" ID="txtDvt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Số lượng:</td>
                    <td>
                        <asp:TextBox CssClass="text-ssp" ID="txtSluong" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Đơn giá:</td>
                    <td>
                        <asp:TextBox CssClass="text-ssp" ID="txtGia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mã loại:</td>
                    <td>
                        <asp:DropDownList CssClass="text-ssp" ID="ddlMaLoai" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Size:</td>
                    <td>
                        <asp:DropDownList CssClass="text-ssp" ID="ddlSize" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Màu sắc:</td>
                    <td>
                        <asp:TextBox CssClass="text-ssp" ID="txtMauSac" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div class="footer-ssp">
            <asp:Button CssClass="btnSua" ID="btnSua" runat="server" Text="Sửa sản phẩm" />
        </div>
    </div>
</asp:Content>

