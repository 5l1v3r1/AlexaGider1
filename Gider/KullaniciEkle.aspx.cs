using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Gider
{
	public partial class KullaniciEkle : System.Web.UI.Page
	{
		ConnectionSql bgl = new ConnectionSql();
		protected void Page_Load(object sender, EventArgs e)
		{
			if(User.Identity.Name == "admin1")
			{

			}
			else
			{
				Response.Redirect("~/User/GiderGiris.aspx");
			}
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlCommand komut = new SqlCommand("insert into users (uname,pwd) values (@t1,@t2)", bgl.baglanti());
			komut.Parameters.AddWithValue("@t1", userName.Value);
			komut.Parameters.AddWithValue("@t2", pwd.Value);
			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
			Button1.Enabled = false;
			Button1.Text = "Kullanıcı Eklendi";

		}
	}
}