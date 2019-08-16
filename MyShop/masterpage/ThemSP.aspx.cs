﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyShop_masterpage_ThemSP : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadLoaiSP();
            loadSize();
        } 
    }
    private void themSP()
    {
        SanPham sanpham = laySanPham();
        StringBuilder sb = new StringBuilder();
        bool result = connect.ThemSP(sanpham);
        if (result)
        {
            sb.Append(string.Format(@"
            <script>
                alert('Thêm thành công!');
            </script>
            "));
        }
        else
        {
            sb.Append(string.Format(@"
            <script>
                alert('Thêm không thành công!');
            </script>
            "));
        }

        lblThongBao.Text = sb.ToString();
    }

    private SanPham laySanPham()
    {
        string masp = txtMaSP.Text;
        string tensp = txtTenSP.Text;
        string hinhanh = fUpload.FileName;
        string dvt = txtDVT.Text;
        int soluong = int.Parse(txtSluong.Text);
        double dongia = Double.Parse(txtGia.Text);
        string maloai = ddlLoaiSP.SelectedValue;
        string size = ddlSize.SelectedValue;
        string mausac = txtMauSac.Text;
        SanPham sanpham = new SanPham(masp, tensp, hinhanh, dvt, soluong, dongia, maloai, size, mausac);
        return sanpham;
    }
    private void loadLoaiSP()
    {
        string query = "SELECT * FROM LOAISANPHAM";
        DataSet ds = connect.LoadDataSet(query);
        ddlLoaiSP.DataTextField = ds.Tables[0].Columns["TENLOAI"].ToString();
        ddlLoaiSP.DataValueField = ds.Tables[0].Columns["MALOAI"].ToString();
        ddlLoaiSP.DataSource = ds.Tables[0];
        ddlLoaiSP.DataBind();
    }

    private void loadSize()
    {
        string query = "SELECT * FROM SIZE";
        DataSet ds = connect.LoadDataSet(query);
        ddlSize.DataTextField = ds.Tables[0].Columns["MASIZE"].ToString();
        ddlSize.DataValueField = ds.Tables[0].Columns["MASIZE"].ToString();
        ddlSize.DataSource = ds.Tables[0];
        ddlSize.DataBind();
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        themSP();
    }
}