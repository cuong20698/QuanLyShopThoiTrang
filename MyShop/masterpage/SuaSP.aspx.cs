using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Collections;

public partial class MyShop_masterpage_SuaSP : System.Web.UI.Page
{
    ConnectClass connect = new ConnectClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        loadSP();

        if (!IsPostBack)
        {
            loadDSAnh();
            loadLoaiSP();
            loadSize();
        }
    }
    private SanPham laySanPham()
    {
        string masp = Request.QueryString["MaSP"].ToString();
        string tensp = txtTenSP.Text;
        string hinhanh = ddlUpAnh.SelectedValue;
        string dvt = txtDvt.Text;
        int soluong = int.Parse(txtSluong.Text);
        double dongia = Double.Parse(txtGia.Text);
        string maloai = ddlMaLoai.SelectedValue;
        string size = ddlSize.SelectedValue;
        string mausac = txtMauSac.Text;
        SanPham sanpham = new SanPham(masp, tensp, hinhanh, dvt, soluong, dongia, maloai, size, mausac);
        return sanpham;
    }
    private void loadLoaiSP()
    {
        string query = "SELECT * FROM LOAISANPHAM";
        DataSet ds = connect.LoadDataSet(query);
        ddlMaLoai.DataTextField = ds.Tables[0].Columns["TENLOAI"].ToString();
        ddlMaLoai.DataValueField = ds.Tables[0].Columns["MALOAI"].ToString();
        ddlMaLoai.DataSource = ds.Tables[0];
        ddlMaLoai.DataBind();
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

    private void loadSP()
    {
        string query = "SELECT * FROM SANPHAM WHERE MASP = '" + Request.QueryString["MaSP"] + "'";
        DataTable dt = connect.LoadDataTable(query);
        txtMaSP.Text = Request.QueryString["MaSP"];
        txtTenSP.Text = dt.Rows[0]["TENSP"].ToString();
        txtDvt.Text = dt.Rows[0]["DONVITINH"].ToString();
        txtGia.Text = dt.Rows[0]["DONGIA"].ToString();
        txtSluong.Text = dt.Rows[0]["SOLUONG"].ToString();
        txtMauSac.Text = dt.Rows[0]["MAUSAC"].ToString();
        ddlMaLoai.SelectedValue = dt.Rows[0]["MALOAI"].ToString();
        ddlSize.SelectedValue = dt.Rows[0]["SIZE"].ToString();
        imgSP.ImageUrl = "~/MyShop/picture/" + dt.Rows[0]["HINHANH"].ToString();

    }
    private void loadDSAnh()
    {
        string[] images = Directory.GetFiles(Server.MapPath("/MyShop/picture/"));
        ArrayList imagelist = new ArrayList();
        foreach (string image in images)
        {
            string imageName = image.Substring(image.LastIndexOf(@"\") + 1);
            imagelist.Add(imageName);
        }
        ddlUpAnh.DataSource = imagelist;
        ddlUpAnh.DataBind();
    }
    protected void btnXemAnh_Click(object sender, EventArgs e)
    {
        imgSP.ImageUrl = "~/MyShop/picture/" + ddlUpAnh.SelectedValue;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("DSSP.aspx");
    }
}