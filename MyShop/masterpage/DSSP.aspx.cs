using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MyShop_masterpage_DSSP : System.Web.UI.Page
{
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
        string sql = "SELECT * FROM LOAISANPHAM";
        DataSet ds = ConnectionClass.layGtTruyVan(sql);
        ddlLoai.DataTextField = ds.Tables[0].Columns["TENLOAI"].ToString();
        ddlLoai.DataValueField = ds.Tables[0].Columns["MALOAI"].ToString();
        ddlLoai.DataSource = ds.Tables[0];
        ddlLoai.DataBind();
    }


    private void loadDSSP()
    {
        Int32 count = 0;
        ArrayList listSP = new ArrayList();
        if (!IsPostBack)
        {
            listSP = ConnectionClass.layDSSP("%");
            
        }
        else
        {
            listSP = ConnectionClass.layDSSP(ddlLoai.SelectedValue);
        }

        StringBuilder sb = new StringBuilder();
        foreach (SanPham sanpham in listSP)
        {
            count++;
            sb.Append(string.Format(
                @"<tr>
                       <td>{0}</td>
                       <td>{1}</td>
                       <td>{2}</td>
                       <td>{3}</td>
                       <td>{4}</td>
                       <td>{5}</td>
                       <td>{6}</td>
                       <td>{7}</td>
                       <td>{8}</td>
                       <td>
                          <input type='submit' value='Xóa' href='{9}' />
                          <input type='submit' value='Sửa' href='{10}'/>
                       </td>
                  </tr>", count,sanpham.masp, sanpham.tensp, sanpham.hinhanh, sanpham.dvt, 
                sanpham.soluong, sanpham.dongia, sanpham.size, sanpham.mausac, sanpham.masp, sanpham.masp));
            lblDSSP.Text = sb.ToString();
        }
    }
    protected void ddlLoai_SelectedIndexChanged(object sender, EventArgs e)
    {
        loadDSSP();
    }
}