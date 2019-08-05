using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyShop_MasterPage_lienHe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    private void kiemTra()
    {
        string name = txtHoTen.Text;
        string sdt = txtSDT.Text;
        string result = "";
        if(name == "")
        {
            result+= "Tên";
        }
        if(sdt == "")
        {
            result+= "SĐT";
        }
    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        kiemTra();
    }
}