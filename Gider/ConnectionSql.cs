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
			SqlConnection baglan = new SqlConnection(@"Data Source=localhost;Initial Catalog=Dbo_giderler;Integrated Security=True");
			baglan.Open();
			return baglan;
		}
	}
}