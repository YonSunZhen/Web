using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApp
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogon_Click(object sender, EventArgs e)
        {
            string strUserName = this.txtUserName.Text.Trim();
            string strPassword = this.txtPassword.Text.Trim();
            string strType = this.ListBox1.Text.Trim();            //判断用户名和密码不能为空

            UserInfoDataContext ctx = new UserInfoDataContext();

            var query = ctx.UserInfo.Where(q => ((q.Password == strPassword)&&(q.UserName == strUserName)&&(q.Type == strType))).FirstOrDefault();
            if (query == null)
            {
                Response.Write("<script>alert('请确认用户名，密码和用户类型是否正确');</script>");
            }
            else
            {
                Session["LogonUser"] = strUserName;//登录标识
                Session["LogonType"] = strType;
                Response.Redirect("index.aspx");
            }

        }
    }
}