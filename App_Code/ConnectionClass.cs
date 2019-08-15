using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Collections;
using System.Data;

/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public static class ConnectionClass
{
    private static SqlConnection conn;
    private static SqlCommand cmd;
	static ConnectionClass()
	{
        string connectString = ConfigurationManager.ConnectionStrings["MyShopDatabase"].ToString();
        conn = new SqlConnection(connectString);
        cmd = new SqlCommand("", conn); 
	}

    public static ArrayList layTaiKhoan()
    {
        ArrayList list = new ArrayList();
        string query = string.Format("SELECT * FROM QUANLY");

        try
        {
            conn.Open();
            cmd.CommandText = query;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string username = reader.GetString(0);
                string matkhau = reader.GetString(1);
                string email = reader.GetString(2);
                string diachi = reader.GetString(3);
                string sdt = reader.GetString(4);
                string hoten = reader.GetString(5);
                int phanquyen = reader.GetInt32(6);

                QuanLy quanly = new QuanLy(username,matkhau,email,diachi,sdt,hoten,phanquyen);
                list.Add(quanly);
            }

        }
        finally
        {
            conn.Close();
        }

        return list;
    }

    public static ArrayList layDSSP(string loaisp)
    {
        ArrayList list = new ArrayList();
        string query = string.Format("SELECT * FROM SANPHAM WHERE MALOAI LIKE '{0}'" ,loaisp);

        try
        {
            conn.Open();
            cmd.CommandText = query;
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string masp = reader.GetString(0);
                string tensp = reader.GetString(1);
                string hinhanh = reader.GetString(2);
                string dvt = reader.GetString(3);
                int soluong = reader.GetInt32(4);
                double dongia = reader.GetDouble(5);
                string maloai = reader.GetString(6);
                string size = reader.GetString(7);
                string mausac = reader.GetString(8);
                SanPham quanly = new SanPham(masp, tensp, hinhanh, dvt, soluong, dongia, maloai,size,mausac);
                list.Add(quanly);
            }

        }
        finally
        {
            conn.Close();
        }

        return list;
    }

    public static DataSet layGtTruyVan(string query)
    {
        try
        {
            conn.Open();
            cmd.CommandText = query;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        finally
        {
            conn.Close();
        }
    }

    public static bool ThemSP(SanPham sanpham)
    {
        string query = "INSERT INTO SANPHAM VALUES(@ma,@ten,@hinhanh,@dvt,@sl,@gia,@maloai,@size,@mausac)";
        try{
            conn.Open();
            cmd.CommandText = query;
            cmd.Parameters.AddWithValue("ma", sanpham.masp);
            cmd.Parameters.AddWithValue("ten", sanpham.tensp);
            cmd.Parameters.AddWithValue("hinhanh", sanpham.hinhanh);
            cmd.Parameters.AddWithValue("dvt", sanpham.dvt);
            cmd.Parameters.AddWithValue("sl", sanpham.soluong);
            cmd.Parameters.AddWithValue("gia", sanpham.dongia);
            cmd.Parameters.AddWithValue("maloai", sanpham.maloai);
            cmd.Parameters.AddWithValue("size", sanpham.size);
            cmd.Parameters.AddWithValue("mausac", sanpham.mausac);
            int result = cmd.ExecuteNonQuery();
            return (result >= 1);
        }
        finally{
            conn.Close();
        }
    }
}