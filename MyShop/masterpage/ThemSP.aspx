<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="ThemSP.aspx.cs" Inherits="MyShop_masterpage_ThemSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/themsp.css" rel="stylesheet" />
    <div class="contain-tsp">
        <div class="main-tsp">
            <div class="td-tsp">
                <h3>THÊM SẢN PHẨM</h3>
            </div>
            <div class="table-tsp">
                <table>
                    <tr>
                        <td style="height: 33px; width: 889px;">Mã sản phẩm:</td>
                        <td style="height: 33px; width: 627px;">
                            <asp:TextBox Class="text-sp" ID="txtMaSP" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMaSP" runat="server" ErrorMessage="*" ControlToValidate="txtMaSP" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px; height: 34px;">Tên sản phẩm:</td>
                        <td style="width: 627px; height: 34px;">
                            <asp:TextBox Class="text-sp" ID="txtTenSP" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenSP" runat="server" ErrorMessage="*" ControlToValidate="txtTenSP" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px">Hình ảnh:</td>
                        <td style="width: 627px">
                            <asp:FileUpload Class="text-sp" ID="fUpload" runat="server" Font-Overline="True" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px">Đơn vị tính:</td>
                        <td style="width: 627px">
                            <asp:TextBox Class="text-sp" ID="txtDVT" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDVT" runat="server" ErrorMessage="*" ControlToValidate="txtDVT" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px">Số lượng:</td>
                        <td style="width: 627px">
                            <asp:TextBox Class="text-sp" ID="txtSluong" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSluong" runat="server" ControlToValidate="txtSluong" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvSluong" runat="server" ControlToValidate="txtSluong" ErrorMessage="*" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px">Đơn giá:</td>
                        <td style="width: 627px">
                            <asp:TextBox  Class="text-sp" ID="txtGia" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvGia" runat="server" ControlToValidate="txtGia" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvGia" runat="server" ControlToValidate="txtGia" ErrorMessage="*" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 889px">Loại:</td>
                        <td style="width: 627px">
                            <asp:DropDownList Class="text-sp" ID="ddlLoaiSP" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 889px">Size:</td>
                        <td style="width: 627px">
                            <asp:DropDownList Class="text-sp" ID="ddlSize" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px">Màu sắc:</td>
                        <td style="width: 627px">
                            <asp:TextBox Class="text-sp" ID="txtMauSac" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMauSac" runat="server" ErrorMessage="*" ControlToValidate="txtMauSac" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 889px"></td>
                        <td style="width: 627px"><asp:Button Class="btn-them" ID="btnThem" runat="server" Text="Thêm sản phẩm" OnClick="btnThem_Click" /></td>
                    </tr>
                </table>
            </div>
            <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>