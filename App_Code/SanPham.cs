using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class SanPham
{
    public string masp { get; set;}
    public string tensp { get; set; }
    public string hinhanh { get; set; }
    public string dvt { get; set; }
    public int soluong { get; set; }
    public double dongia { get; set; }
    public string maloai { get; set; }
    public string size { get; set; }
    public string mausac { get; set; }

	public SanPham(string masp, string tensp, string hinhanh, string dvt, int soluong, double dongia, string maloai, string size, string mausac)
	{
        this.masp = masp;
        this.tensp = tensp;
        this.hinhanh = hinhanh;
        this.dvt = dvt;
        this.soluong = soluong;
        this.dongia = dongia;
        this.maloai = maloai;
        this.size = size;
        this.mausac = mausac;
	}
}