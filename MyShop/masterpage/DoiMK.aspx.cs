using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyShop_masterpage_DoiMK : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            txtTK.Text = Session["username"].ToString();
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("TaiKhoan.aspx");
    }

    private void doiMK()
    {
        string mkc = txtMK.Text;
        string mkm = txtMKM.Text;
        string nl = txtNLMK.Text;
        string tk = txtTK.Text;
        bool kt = connect.Login(tk,mkc);
        string query = "UPDATE QUANLY SET MATKHAU = '"+mkm+"' WHERE TAIKHOAN = '"+tk+"'";
        if (kt)
        {
            if (mkm == nl)
            {
                bool result = connect.SuaSP(query);
                if (result)
                {
                    lblThongbao.Text = @"<script>alert('Đổi mật khẩu thành công!');</script>";
                }
            }
            else
            {
                lblThongbao.Text = @"<script>alert('Mật khẩu không khớp!');</script>";
            }
        }
        else
        {
            lblThongbao.Text = @"<script>alert('Mật khẩu không chính xác!');</script>";
        }
    }
    protected void btnDoiMK_Click(object sender, EventArgs e)
    {
        doiMK();
    }
}