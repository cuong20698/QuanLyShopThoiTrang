using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyShop_masterpage_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"] == null)
        {
            Response.Redirect("DangNhap.aspx");
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        HttpCookie c1 = new HttpCookie("username");
        HttpCookie c2 = new HttpCookie("password");
        c1.Expires = DateTime.Now.AddDays(-1);
        c2.Expires = DateTime.Now.AddDays(-1);
        Response.Cookies.Add(c1);
        Response.Cookies.Add(c2);
        Response.Redirect("DSSP.aspx");
    }
}
