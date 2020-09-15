using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Optimization;

namespace Gider
{
	public class ConnectionSql
	{
		public SqlConnection baglanti()
		{
			
			SqlConnection baglan = new SqlConnection(@"Data Source = alexagider.database.windows.net,1433; Initial Catalog = dbo_giris; User ID = mertcandbgider; Password = 3230219Abc");
			baglan.Open();
			return baglan;
		}
	}
}
