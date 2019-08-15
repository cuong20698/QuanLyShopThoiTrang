using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyShop_masterpage_TaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        load_DSTK();
    }

    private void load_DSTK()
    {
        Int32 a = 0;
        ArrayList tkList = ConnectionClass.layTaiKhoan();
        StringBuilder sb = new StringBuilder();
        foreach (QuanLy quanly in tkList)
        {
            a++;
            sb.Append(string.Format(
                @"<tr>
                       <td>{5}</td>
                       <td>{0}</td>
                       <td>{1}</td>
                       <td>{2}</td>
                       <td>{3}</td>
                       <td>{4}</td>
                       <td></td>
                  </tr>",
                          quanly.username, quanly.hoten, quanly.email, quanly.sdt, quanly.diachi, a));
            lblTK.Text = sb.ToString();
        }
    }
}