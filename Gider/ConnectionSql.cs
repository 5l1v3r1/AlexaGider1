using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Gider
{
	public class ConnectionSql
	{
		public SqlConnection baglanti()
		{
			SqlConnection baglan = new SqlConnection(@"Data Source =tcp:alexagider.database.windows.net,1433;Initial Catalog =dbo_giris;User ID=mertcandbgider@alexagider;Password:3230219Abc");
			baglan.Open();
			return baglan;
		}
	}
}