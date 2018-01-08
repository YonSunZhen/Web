using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnUpdataPwd_Click(object sender, EventArgs e)
        {
            
            string strUserName = Convert.ToString(Session["LogonUser"]);
            //Session["LogonUser"] = strUserName
            string strOPassword = this.txtOPassword.Text.Trim();
            string strNPassword = this.txtNPassword.Text.Trim();
            string strAPassword = this.txtAPassword.Text.Trim();
            if (strNPassword == strAPassword)
            {
                 UserInfoDataContext ctx = new UserInfoDataContext();
                 var query = ctx.UserInfo.Where(q => q.UserName == strUserName && q.Password == strOPassword).FirstOrDefault();
                 if (query != null)
                 {
                    query.Password = strNPassword;
                    ctx.SubmitChanges();
                    Response.Write("<script>alert('密码修改成功,请重新登录！');</script>");
                    Session.Abandon();
                    
                    
                    
                    
                 }
                 else
                 {
                    Response.Write("<script>alert('原密码输入有误！');</script>");
                 } 
            }
            else
            {
                Response.Write("<script>alert('两次密码输入不一致');</script>");
            }
        }
    }
}