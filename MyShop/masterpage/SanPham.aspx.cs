using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyShop_masterpage_SanPham : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            loadDataList();
        }   

    }
    public void loadDataList()
    {
        string loai = Request.QueryString["loai"].ToString();
        dtlSP.RepeatColumns = 4;
        string query = "SELECT * FROM SANPHAM WHERE MALOAI = '"+loai+"'";
        DataSet ds = connect.LoadDataSet(query);
        dtlSP.DataSource = ds.Tables[0];
        dtlSP.DataBind();
    }
}