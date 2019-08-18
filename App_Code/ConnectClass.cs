using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public class ConnectClass
{
    string connectString = ConfigurationManager.ConnectionStrings["MyShopDB"].ConnectionString;
    public ConnectClass()
    {

    }
    public bool KiemTraMaSP(string ma)
    {
        string query = "SELECT COUNT(*) FROM SANPHAM WHERE MASP = '" + ma + "'";
        using (SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            int result = (int)cmd.ExecuteScalar();
            conn.Close();
            return (result >= 1);
        }
    }

    public DataSet LoadDataSet(string query)
    {
        using (SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();
            return ds;
        }
    }

    public DataTable LoadDataTable(string query)
    {
        using (SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            return dt;
        }
    }
    public bool ThemSP(SanPham sanpham)
    {
        string query = @"INSERT INTO dbo.SANPHAM VALUES('" + sanpham.masp + "',N'" + sanpham.tensp + "','" 
                        + sanpham.hinhanh + "','"+ sanpham.dvt + "','" + sanpham.soluong + "','" 
                        + sanpham.dongia + "','"+sanpham.maloai+"','" + sanpham.size + "',N'" + sanpham.mausac + "')";
        using (SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            int result = cmd.ExecuteNonQuery();
            conn.Close();
            return (result >= 1);
        }
    }

    public bool SuaSP(string query)
    {
        using(SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            int result = cmd.ExecuteNonQuery();
            conn.Close();
            return (result >= 1);
        }
    }

    public bool XoaSP(string masp)
    {
        string query = "DELETE SANPHAM WHERE MASP = '"+masp+"'";
        using(SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            int result = cmd.ExecuteNonQuery();
            conn.Close();
            return (result >= 1);
        }
    }

    public bool Login(string username, string password)
    {
        string query = "SELECT COUNT(*) FROM QUANLY WHERE TAIKHOAN = '" + username + "' AND MATKHAU = '" + password + "'";
        using (SqlConnection conn = new SqlConnection(connectString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            int result = (int)cmd.ExecuteScalar();
            conn.Close();
            return (result >= 1);
        }
    }
}
