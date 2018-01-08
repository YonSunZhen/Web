using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class TopicAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTopicAdd_Click(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null)
            {
                Response.Write("<script>alert('您还未登录，请先登录！');</script>");
             
            }
            else
            {
                string strUserName = Session["LogonUser"].ToString();
                string strTopicName = this.txtTopicName.Text;
                string strTopicContent = this.txtTopicContent.Text;
                TopicInfoDataContext ctx = new TopicInfoDataContext();
                TopicInfo lt = new TopicInfo() { TopicName = strTopicName, TopicContent = strTopicContent, UserName = strUserName };
                ctx.TopicInfo.InsertOnSubmit(lt);
                ctx.SubmitChanges();
                Response.Write("<script>alert('添加成功！');</script>");
                Response.Redirect("index.aspx");
            }
        }
    }
}