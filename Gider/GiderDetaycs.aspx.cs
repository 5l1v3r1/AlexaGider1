using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Gider
{
	public partial class GiderDetaycs : System.Web.UI.Page
	{
		string _id = "";
		ConnectionSql bgl = new ConnectionSql();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				_id = Request.QueryString["id"];
				SqlCommand komut = new SqlCommand("Select * from tbl_giris where id=@p1", bgl.baglanti());
				komut.Parameters.AddWithValue("@p1", _id);
				SqlDataReader dr = komut.ExecuteReader();
				while (dr.Read())
				{
					Isim.Value = dr[4].ToString();
					Aciklama.Value = dr[1].ToString();
					CurrencyMiktar.Value = dr[2].ToString() + dr[5].ToString();
				}
				bgl.baglanti().Close();
			}
		}

		protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
		{
				_id = Request.QueryString["id"];
				SqlCommand komut = new SqlCommand("Delete from tbl_giris where id=@p1", bgl.baglanti());
				komut.Parameters.AddWithValue("@p1", _id);
				komut.ExecuteNonQuery();
				bgl.baglanti().Close();
				Server.Transfer("Gidergor.aspx");
			Response.Redirect("Gidergor.aspx");

		}

		protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
		{
			Server.Transfer("Gidergor.aspx");
		}

		protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
		{
			Response.Redirect("Gidergor.aspx");
		}
	}
	
}