<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="ThemSP.aspx.cs" Inherits="MyShop_masterpage_ThemSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/themsp.css" rel="stylesheet" />
    <div class="contain-tsp">
        <div class="main-tsp">
            <div class="td-tsp">
                <h3>THÊM SẢN PHẨM</h3>
            </div>
            <div class="main-tsp">
                <table>
                    <tr>
                        <td rowspan="10" width="300px">
                            <asp:Image CssClass="imgThem" ID="imgSP" runat="server" /></td>
                        <td>Mã sản phẩm:</td>
                        <td>
                            <asp:TextBox CssClass="text-tsp" ID="txtMaSP" runat="server" Text=""></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvMaSP" runat="server" ControlToValidate="txtMaSP" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Tên sản phẩm:</td>
                        <td>
                            <asp:TextBox CssClass="text-tsp" ID="txtTenSP" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvTenSP" runat="server" ControlToValidate="txtTenSP" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Hình ảnh:</td>
                        <td>
                            <asp:FileUpload ID="fUpload" runat="server" Width="150px" Height="30px" />
                            <asp:Button CssClass="btnUpLoad" ID="btnUpFile" runat="server" Text="Load ảnh" Width="100px" OnClick="btnUpFile_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Đơn vị tính:</td>
                        <td>
                            <asp:TextBox CssClass="text-tsp" ID="txtDvt" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvDvt" runat="server" ControlToValidate="txtDvt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Số lượng:</td>
                        <td>
                            <asp:TextBox CssClass="text-tsp" ID="txtSluong" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvSluong" runat="server" ControlToValidate="txtSluong" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvSluong" runat="server" ControlToValidate="txtSluong" ErrorMessage="*" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Đơn giá:</td>
                        <td>
                            <asp:TextBox CssClass="text-tsp" ID="txtGia" runat="server" TextMode="Number"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvGia" runat="server" ControlToValidate="txtGia" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvGia" runat="server" ControlToValidate="txtGia" ErrorMessage="*" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Mã loại:</td>
                        <td>
                            <asp:DropDownList CssClass="text-tsp" ID="ddlLoaiSP" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Size:</td>
                        <td>
                            <asp:DropDownList CssClass="text-tsp" ID="ddlSize" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>Màu sắc:</td>
                        <td>
                            <asp:TextBox CssClass="text-tsp" ID="txtMauSac" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvMauSac" runat="server" ControlToValidate="txtMauSac" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
            <div class="footer-ssp">
                <asp:Button CssClass="btn-them" ID="btnThem" runat="server" Text="Thêm sản phẩm" OnClick="btnThem_Click1" />
            </div>
        </div>
        <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
