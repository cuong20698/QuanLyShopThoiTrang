using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyShop_masterpage_DangNhap : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void KiemTraCookie()
    {
        HttpCookie c1 = Request.Cookies["username"];
        HttpCookie c2 = Request.Cookies["password"];
        if (c1 != null)
        {
            string username = c1.Value.ToString();
            Session.Add("username", username);
            Response.Redirect("DSSP.aspx");
            
        }
    }

    private void SetCookie()
    {
        if (chkLuu.Checked)
        {
            HttpCookie c1 = new HttpCookie("username", txtUsername.Value);
            HttpCookie c2 = new HttpCookie("password", txtPassword.Value);
            DateTime d = DateTime.Now;
            TimeSpan ts = new TimeSpan(0, 1, 0, 0);
            c1.Expires = d.Add(ts);
            c2.Expires = d.Add(ts);
            Request.Cookies.Add(c1);
            Request.Cookies.Add(c2);
        }
    }
    private void DangNhap()
    {
        bool result = connect.Login(txtUsername.Value,txtPassword.Value);
        if (result)
        {
            Session["username"] = txtUsername.Value;
            SetCookie();
            Response.Redirect("DSSP.aspx");
        }
        else{
            lblThongBao.Text = @"<script>alert('Tên đăng nhập hoặc tài khoản không chính xác');</script>";
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DangNhap();
    }
}