﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.StubHelpers;
public partial class MyShop_masterpage_DSSP : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadDSSP();
        if (!IsPostBack)
        {
            loadLoaiSP();
        }
        
    }

    private void loadLoaiSP()
    {
        string query = "SELECT * FROM LOAISANPHAM";
        DataSet ds = connect.LoadDataSet(query);
        ddlLoai.DataTextField = ds.Tables[0].Columns["TENLOAI"].ToString();
        ddlLoai.DataValueField = ds.Tables[0].Columns["MALOAI"].ToString();
        ddlLoai.DataSource = ds.Tables[0];
        ddlLoai.DataBind();
    }


    private void loadDSSP()
    {
        string query;
        query = "SELECT * FROM SANPHAM WHERE MALOAI = '" + ddlLoai.SelectedValue + "'";
        if (!IsPostBack)
        {
            query = "SELECT * FROM SANPHAM";
        }
        DataTable dt = connect.LoadDataTable(query);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            sb.Append(string.Format(@"
            <tr>
                <td>" + i + @"</td>
                <td>" + dt.Rows[i]["MASP"].ToString() + @"</td>
                <td>" + dt.Rows[i]["TENSP"].ToString() + @"</td>
                <td><img src='../picture/" + dt.Rows[i]["HINHANH"] + @"'/></td>
                <td>" + dt.Rows[i]["DONVITINH"].ToString() + @"</td>
                <td>" + dt.Rows[i]["SOLUONG"].ToString() + @"</td>
                <td>" + dt.Rows[i]["DONGIA"].ToString() + @"</td>
                <td>" + dt.Rows[i]["SIZE"].ToString() + @"</td>
                <td>" + dt.Rows[i]["MAUSAC"].ToString() + @"</td>
                <td>
                    <a onClick='alert('cgfhhgfty');' href = '?MaSP=" + dt.Rows[i]["MASP"].ToString() + @"'>Xóa</a>
                    <a href = 'SuaSP.aspx?MaSP=" + dt.Rows[i]["MASP"].ToString() + @"'>Sửa</a>
                </td>
            </tr>
            "));
        }
        lblDSSP.Text = sb.ToString();
        if (Request.QueryString["MaSP"] != null)
        {
            bool result = connect.XoaSP(Request.QueryString["MaSP"]);
            if (result)
            {
                Response.Redirect("DSSP.aspx");
            }
        }
    }
    protected void ddlLoai_SelectedIndexChanged1(object sender, EventArgs e)
    {
        loadDSSP();
    }
}