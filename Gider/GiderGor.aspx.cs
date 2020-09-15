using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gider
{
	public partial class GiderGor1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Page.IsPostBack)
			{
				if (User.Identity.Name == "admin1")
				{
					Response.Write(User.Identity.Name);
					Response.Redirect("Gidergor.aspx");
				}
				else
				{
					Response.Redirect("~/User/Gidergiris.aspx");
					Response.Write(User.Identity.Name);

				}
			}
		}
	}
}