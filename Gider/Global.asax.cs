using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Gider
{
	public class Global : HttpApplication
	{
		void Application_Start(object sender, EventArgs e)
		{
			if (Request.Url.AbsolutePath.EndsWith("/"))
			{
				Server.Transfer("~/User/Logon.aspx");
			}
			RouteConfig.RegisterRoutes(RouteTable.Routes);
			BundleConfig.RegisterBundles(BundleTable.Bundles);
		}
	}
}