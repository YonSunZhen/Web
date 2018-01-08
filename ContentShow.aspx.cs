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
    public partial class ContentShow : System.Web.UI.Page
    {
        public string TopicContent = "";
        public string TopicName = "";
        public string UserName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["TopicID"] == null)
            {
                Response.Write("<script>alert('不能从该页面进入，正在返回首页');</script>");
                Response.Redirect("index.aspx");
                return;
            }
            else
            {
                int TopicID = int.Parse(Request["TopicID"].ToString());
                string strConn = "server=pc.hstc.cn;database=dhd2015112026;uid=2015112026;pwd=19950522;";
                string strSqlTopicContent = "SELECT   TopicContent,TopicName,UserName  FROM  TopicInfo WHERE   (TopicID= N'" + TopicID + "')";
                SqlConnection cn = new SqlConnection(strConn);
                cn.Open();
                SqlCommand cmd = new SqlCommand(strSqlTopicContent, cn);
                SqlDataReader dtr = cmd.ExecuteReader();
                dtr.Read();
                TopicContent = dtr["TopicContent"].ToString();
                TopicName = dtr["TopicName"].ToString();
                UserName = dtr["UserName"].ToString();
                dtr.Close();
            }


           
            int TopicID1 = int.Parse(Request["TopicID"].ToString());
            CommentDataContext ctx = new CommentDataContext();      
            var query = from b in ctx.Comment
                        where b.TopicID == TopicID1
                        select new { b.UserName, b.CommentContent };
            this.gdvOCC.DataSource = query;
            this.gdvOCC.DataBind();

            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (Session["LogonUser"] == null)
            {
                Response.Write("<script>alert('请先登录');</script>");
                //Response.Redirect("Logon.aspx");
            }
            else
            {
                int TopicID = int.Parse(Request["TopicID"].ToString());
                string strCommentContent = this.txtContent.Text;
                string UserName1 = Session["LogonUser"].ToString();//重新获得用户名
                string strConn = "server=pc.hstc.cn;database=dhd2015112026;uid=2015112026;pwd=19950522;";
                string strSql = "INSERT INTO Comment   ( TopicID,TopicName,UserName,CommentContent)   VALUES   ( N'" + TopicID + "', N'" + TopicName + "',N'" + UserName1 + "',N'" + strCommentContent + "')";
                SqlConnection cn = new SqlConnection(strConn);
                cn.Open();
                SqlCommand cmd = new SqlCommand(strSql, cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('评论成功');</script>");
                this.txtContent.Text = "";


                int TopicID1 = int.Parse(Request["TopicID"].ToString());
                CommentDataContext ctx = new CommentDataContext();
                var query = from b in ctx.Comment
                            where b.TopicID == TopicID1
                            select new { b.UserName, b.CommentContent };
                this.gdvOCC.DataSource = query;
                this.gdvOCC.DataBind();
            }
        
        }
    }
}