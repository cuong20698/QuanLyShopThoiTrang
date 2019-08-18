using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyShop_masterpage_ThemSP : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadLoaiSP();
            loadSize();
        }
    }
    private void themSP()
    {
        SanPham sanpham = laySanPham();
        bool kiemtra = connect.KiemTraMaSP(sanpham.masp);
        if (kiemtra)
        {
            lblThongBao.Text = thongbao("Mã sản phẩm này đã tồn tại!").ToString();
        }
        else
        {
            if (!fUpload.HasFile)
            {
                lblThongBao.Text = thongbao("Chưa chọn hình ảnh").ToString();
            }
            else
            {
                string imgname = fUpload.FileName;
                string imgLink = Server.MapPath("/MyShop/picture/" + imgname);
                fUpload.SaveAs(imgLink);

                bool result = connect.ThemSP(sanpham);
                if (result)
                {
                    lblThongBao.Text = thongbao("Thêm thành công!").ToString();
                }
            }
        }
    }

    public StringBuilder thongbao(string thongbao)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(string.Format(@"
                <script type = 'text/javascript'>
                    alert('{0}');
                </script>
                ",thongbao));
        return sb;
    }

    private SanPham laySanPham()
    {
        string masp = txtMaSP.Text;
        string tensp = txtTenSP.Text;
        string hinhanh = fUpload.FileName;
        string dvt = txtDvt.Text;
        int soluong = int.Parse(txtSluong.Text);
        double dongia = Double.Parse(txtGia.Text);
        string maloai = ddlLoaiSP.SelectedValue;
        string size = ddlSize.SelectedValue;
        string mausac = txtMauSac.Text;
        SanPham sanpham = new SanPham(masp, tensp, hinhanh, dvt, soluong, dongia, maloai, size, mausac);
        return sanpham;
    }
    private void loadLoaiSP()
    {
        string query = "SELECT * FROM LOAISANPHAM";
        DataSet ds = connect.LoadDataSet(query);
        ddlLoaiSP.DataTextField = ds.Tables[0].Columns["TENLOAI"].ToString();
        ddlLoaiSP.DataValueField = ds.Tables[0].Columns["MALOAI"].ToString();
        ddlLoaiSP.DataSource = ds.Tables[0];
        ddlLoaiSP.DataBind();
    }

    private void loadSize()
    {
        string query = "SELECT * FROM SIZE";
        DataSet ds = connect.LoadDataSet(query);
        ddlSize.DataTextField = ds.Tables[0].Columns["MASIZE"].ToString();
        ddlSize.DataValueField = ds.Tables[0].Columns["MASIZE"].ToString();
        ddlSize.DataSource = ds.Tables[0];
        ddlSize.DataBind();
    }
    private void XoaForm()
    {
        txtMaSP.Text = "";
        txtTenSP.Text = "";
        txtSluong.Text = "";
        txtGia.Text = "";
        txtDvt.Text = "";
        txtMauSac.Text = "";
    }
    protected void btnThem_Click1(object sender, EventArgs e)
    {
        themSP();
        XoaForm();
    }
    protected void btnUpFile_Click(object sender, EventArgs e)
    {
        if (fUpload.HasFile)
        {
            imgSP.ImageUrl = "~/MyShop/picture/"+fUpload.FileName;
        }
    }
}