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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string strUserName = this.txtUserName.Text.Trim();
            string strPassword = this.txtPassword.Text.Trim();
            string strAPassword = this.txtAPassword.Text.Trim();
            string strType = this.ListBox1.Text.Trim();
            //判断是否存在
            UserInfoDataContext ctx = new UserInfoDataContext();
            var query = ctx.UserInfo.Where(q => q.UserName == strUserName).FirstOrDefault();
            if (strPassword == strAPassword)
            {
                if (query == null)
                {
                    UserInfo lt = new UserInfo() { UserName = strUserName, Password = strPassword, Type = strType };
                    ctx.UserInfo.InsertOnSubmit(lt);
                    ctx.SubmitChanges();
                    Response.Write("<script>alert('注册成功！');</script>");
                    Response.Redirect("index.aspx");

                }
                else
                {
                    Response.Write("<script>alert('用户已经存在！');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('两次密码输入不一致，请重新输入！');</script>");
            }

        }
    }
}