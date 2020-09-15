using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
namespace Gider.Admins
{
	public partial class LoginAdmin : System.Web.UI.Page
	{

        ConnectionSql bgl = new ConnectionSql();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdLogin.ServerClick += new System.EventHandler(this.cmdLogin_ServerClick);
        }
        private bool ValidateUser(string userName, string passWord)
        {

            SqlCommand cmd;
            string lookupPassword = null;
            if ((null == userName) || (0 == userName.Length) || (userName.Length > 15))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
                return false;
            }
            if ((null == passWord) || (0 == passWord.Length) || (passWord.Length > 25))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
                return false;
            }
            try
            {
                cmd = new SqlCommand("Select pwd from admins where uname=@userName", bgl.baglanti());
                cmd.Parameters.Add("@userName", SqlDbType.VarChar, 25);
                cmd.Parameters["@userName"].Value = userName;
                lookupPassword = (string)cmd.ExecuteScalar();
                cmd.Dispose();
                bgl.baglanti().Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }
            if (null == lookupPassword)
            {
                return false;
            }
            return (0 == string.Compare(lookupPassword, passWord, false));

        }
        private void cmdLogin_ServerClick(object sender, System.EventArgs e)
        {
            if (ValidateUser(txtUserName.Value, txtUserPass.Value))
            {
                FormsAuthenticationTicket tkt;
                string cookiestr;
                HttpCookie ck;
                tkt = new FormsAuthenticationTicket(1, txtUserName.Value, DateTime.Now,
                DateTime.Now.AddMinutes(30), chkPersistCookie.Checked, "ASD");
                cookiestr = FormsAuthentication.Encrypt(tkt);
                ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                if (chkPersistCookie.Checked)
                    ck.Expires = tkt.Expiration;
                ck.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(ck);

                string strRedirect;
                strRedirect = Request["~/Gidergor.aspx"];
                if (strRedirect == null)
                    strRedirect = "~/Gidergor.aspx";
                Response.Redirect(strRedirect, true);
            }
            else
                Response.Redirect("LoginAdmin.aspx", true);
        }

    }

}
