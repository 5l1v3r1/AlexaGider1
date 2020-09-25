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
			
			
				if (User.Identity.IsAuthenticated)
				{
				   Response.Write(User.Identity.Name);
			    }
				else
				{
					Response.Redirect("~/User/Logon.aspx");
				}	
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlCommand komut = new SqlCommand("insert into Tbl_giris (KullaniciAd,Currency,Departman,Miktar,Aciklama,KayitTarih,Firma) values (@t1,@t2,@t3,@t4,@t5,@t6,@t7)", bgl.baglanti());
			komut.Parameters.AddWithValue("@t1", User.Identity.Name);
			komut.Parameters.AddWithValue("@t2", Currency.Value.ToString());
			komut.Parameters.AddWithValue("@t3", Departman.Value.ToString());
			komut.Parameters.AddWithValue("@t4", Miktar.Value.ToString());
			komut.Parameters.AddWithValue("@t5", Aciklama.Value.ToString()); ;
			komut.Parameters.AddWithValue("@t6", datetime.Value.ToString());
			komut.Parameters.AddWithValue("@t7", Firma.Value.ToString());
			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
			Button1.Enabled = false;
		}
		//private void cmdSignOut_ServerClick(object sender, System.EventArgs e)
		//{
		//	FormsAuthentication.SignOut();
		//	Response.Redirect("~/User/Logon.aspx", true);
		//}
	}
}