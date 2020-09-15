using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Gider
{
	public partial class GiderGorTL : System.Web.UI.Page
	{
		ConnectionSql bgl = new ConnectionSql();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (User.Identity.Name == "admin1")
			{
				SqlCommand komut = new SqlCommand("Select * from Tbl_giris where Currency=@p1", bgl.baglanti());
				komut.Parameters.AddWithValue("@p1", "TL");
				SqlDataReader dr = komut.ExecuteReader();
				DataList1.DataSource = dr;
				DataList1.DataBind();
			}
			else
			{
				Response.Redirect("~/User/GiderGiris.aspx");
			}
		}
	}
}