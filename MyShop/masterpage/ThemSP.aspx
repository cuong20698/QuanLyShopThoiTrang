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
                            <asp:FileUpload ID="fUpload" runat="server" Width="200px" Height="20px" BorderColor="#00780f" BackColor="White"
                                 />
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
                            <asp:DropDownList Class="text-sp" ID="ddlLoaiSP" runat="server" DataSourceID="SqlDataSource2" DataTextField="TENLOAI" DataValueField="MALOAI">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyShopDatabase %>" SelectCommand="SELECT * FROM [LOAISANPHAM]"></asp:SqlDataSource>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 889px">Size:</td>
                        <td style="width: 627px">
                            <asp:DropDownList Class="text-sp" ID="ddlSize" runat="server" DataSourceID="SqlDataSource1" DataTextField="MASIZE" DataValueField="MASIZE">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyShopDatabase %>" SelectCommand="SELECT [MASIZE] FROM [SIZE]"></asp:SqlDataSource>
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
        </div>
        <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>

