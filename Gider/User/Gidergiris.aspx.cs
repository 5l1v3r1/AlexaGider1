using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.InteropServices;
using System.Web.Security;
namespace Gider
{
	public partial class Gidergiris : System.Web.UI.Page
	{
		ConnectionSql bgl = new ConnectionSql();
		
		protected void Page_Load(object sender, EventArgs e)
		{
			if (User.Identity.IsAuthenticated == true)
			{
				this.cmdSignOut.ServerClick += new System.EventHandler(this.cmdSignOut_ServerClick);
			}
			else
			{
				Response.Redirect("~/User/Logon.aspx");
			}
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlCommand komut = new SqlCommand("insert into Tbl_giris (KullaniciAd,Currency,Departman,Miktar,Aciklama,KayitTarih) values (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
			komut.Parameters.AddWithValue("@t1", isimTxt.Text);
			komut.Parameters.AddWithValue("@t2", Currency.Value.ToString());
			komut.Parameters.AddWithValue("@t3", Departman.Value.ToString());
			komut.Parameters.AddWithValue("@t4", Miktar.Text);
			komut.Parameters.AddWithValue("@t5", AciklamaTxt.Text);
			komut.Parameters.AddWithValue("@t6", Tarihtxt.Text);
			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
			Response.Write("Gider Alındı");
			Button1.Enabled = false;
		}
		private void cmdSignOut_ServerClick(object sender, System.EventArgs e)
		{
			FormsAuthentication.SignOut();
			Response.Redirect("logon.aspx", true);
		}
	}
}