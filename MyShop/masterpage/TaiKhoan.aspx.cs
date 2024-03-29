﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyShop_masterpage_TaiKhoan : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"] != null)
        {
            LoadTK();
        }
    }

    private void LoadTK()
    {
        string query = "SELECT * FROM QUANLY WHERE TAIKHOAN = '"+Session["username"].ToString()+"'";
        DataTable dt = connect.LoadDataTable(query);
        txtTaiKhoan.Text = dt.Rows[0]["TAIKHOAN"].ToString();
        txtHoTen.Text = dt.Rows[0]["HOTEN"].ToString();
        txtEmail.Text = dt.Rows[0]["EMAIL"].ToString();
        txtSdt.Text = dt.Rows[0]["SDT"].ToString();
        txtDiaChi.Text = dt.Rows[0]["DIACHI"].ToString();
        imgTK.ImageUrl = "~/MyShop/picture/imgTK.jpg";
    }
    protected void btnDMK_Click(object sender, EventArgs e)
    {
        Response.Redirect("DoiMK.aspx");
    }
}