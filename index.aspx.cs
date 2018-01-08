using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null) 
            {
                this.Label2.Text = "您暂未登录";
            }
            else
            {
                this.Label2.Text = Session["LogonUser"].ToString();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null)
            {
                Response.Write("<script>alert('您还未登陆，请登录！')</script>");
            }
            else
            {
                Response.Redirect("TopicAdd.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null)
            {
                Response.Write("<script>alert('您还未登录！')</script>");
            }
            else
            {
                Session.Abandon();
                Response.Write("<script>alert('注销成功!')</script>");
                this.Label2.Text = "您暂未登录";
            }

        }

        protected void btnUserInfo_Click(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null)
            {
                Response.Write("<script>alert('请先登录！')</script>");
            }
            else
            {
                if (Session["LogonType"].ToString() == "管理员")
                {
                    Response.Redirect("ManageEnd/MEndIndex.aspx");
                }
                else
                {
                    Response.Redirect("UserEnd/UEndIndex.aspx");
                }
            }
        }
    }
}