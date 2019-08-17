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
        dtlTK.RepeatColumns = 5;
        string query = "SELECT * FROM SANPHAM";
        DataSet ds = connect.LoadDataSet(query);
        dtlTK.DataSource = ds.Tables[0];
        dtlTK.DataBind();
    }
}