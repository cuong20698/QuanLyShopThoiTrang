<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop/masterpage/Admin.master" AutoEventWireup="true" CodeFile="DSSP.aspx.cs" Inherits="MyShop_masterpage_DSSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../css/dssp.css" rel="stylesheet" />
    <div class="contain-dssp">
        <div class="td-dssp">
            <h3>DANH SÁCH SẢN PHẨM</h3> 
            <div class="select">
                <asp:Label ID="Label1" runat="server" Text="Chọn loại:"></asp:Label>
                <asp:DropDownList Class="gt-sl" ID="ddlLoai" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLoai_SelectedIndexChanged" Style="height: 29px">
                </asp:DropDownList>
               
            </div>
        </div>
        <div class="table-dssp">
            <table>
                <tr class="row-td-table">
                    <td>STT</td>
                    <td>Mã SP</td>
                    <td>Tên SP</td>
                    <td>Hình ảnh</td>
                    <td>ĐVT</td>
                    <td>Số lượng</td>
                    <td>Đơn giá</td>
                    <td>Size</td>
                    <td>Màu sắc</td>
                    <td>Công cụ</td>
                </tr>
                <asp:Label ID="lblDSSP" runat="server" Text=""></asp:Label>
            </table>
        </div>
    </div>
</asp:Content>
