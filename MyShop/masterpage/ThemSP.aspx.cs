using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyShop_masterpage_ThemSP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    private void themSP()
    {
        SanPham sanpham = laySanPham();
        StringBuilder sb = new StringBuilder();
        bool result = ConnectionClass.ThemSP(sanpham);
        if (result)
        {
            sb.Append(string.Format(@"
            <script>
                alert('Thêm thành công!');
            </script>
            "));
        }
        else
        {
            sb.Append(string.Format(@"
            <script>
                alert('Thêm không thành công!');
            </script>
            "));
        }

        lblThongBao.Text = sb.ToString();
    }

    private SanPham laySanPham()
    {
        string masp = txtMaSP.Text;
        string tensp = txtTenSP.Text;
        string hinhanh = fUpload.FileName;
        string dvt = txtDVT.Text;
        int soluong = int.Parse(txtSluong.Text);
        double dongia = Double.Parse(txtGia.Text);
        string maloai = ddlLoaiSP.SelectedValue;
        string size = ddlSize.SelectedValue;
        string mausac = txtMauSac.Text;
        SanPham sanpham = new SanPham("SP09", "Áo sơ mi", "a", "cái", 30, 180000, "MSPA", "M", "trắng");
        return sanpham;
    }
    protected void btnThem_Click(object sender, EventArgs e)
    {
        themSP();
    }
}