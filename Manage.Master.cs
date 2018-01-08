using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.后台管理_管理员_
{
    public partial class Manage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null)
            {
                Response.Redirect("../Logon.aspx");
            }
            else
            {
                this.Label1.Text = Session["LogonUser"].ToString();
            }
                    
        }
    }
}