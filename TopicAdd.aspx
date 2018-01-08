<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopicAdd.aspx.cs" Inherits="WebApp.TopicAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/LogSite.css" />
</head>
<body>
    <form id="form1" runat="server">
     <div id="BigDiv">
                <div id="TopDiv"></div>
                <div id="CenterDiv">
                    <div id="CenterDiv1">
                        <div id="CenterDiv2">
                        <asp:TextBox ID="txtTopicName" runat="server" Height="34px" Width="190px" placeholder="请输入标题名/不得超过50个字符"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="标题名长度有误！" ControlToValidate="txtTopicName" Font-Size="Smaller" ForeColor="Red" ValidationExpression="^\S{2,50}$"></asp:RegularExpressionValidator>
                        </div>
                        <div style="margin-top:0px;position:relative;width:190px;">
                            <asp:TextBox ID="txtTopicContent" runat="server" Height="76px" Width="190px" placeholder="请编辑内容,长度不限！" Rows="5" TextMode="MultiLine"></asp:TextBox>
                        </div> 
                        
                    </div>
                  
                </div>
                <div id="BottomDiv">
                    <div id="BottomDiv1">
                        <asp:Button ID="btnTopicAdd" runat="server" Text="提交" Height="30px" Width="194px" BackColor="#4886CF" BorderStyle="None" ForeColor="White" OnClick="btnTopicAdd_Click"/>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
