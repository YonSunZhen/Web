<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApp.Register" %>

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
                        <div >
                        <asp:TextBox ID="txtUserName" runat="server" Height="34px" Width="190px" placeholder="用户名/3至20个字符"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="您输入的用户名有误！" ControlToValidate="txtUserName" ValidationExpression="^\S{3,20}$" Font-Size="Smaller" ForeColor="Red" Height="5px"></asp:RegularExpressionValidator>              
                        </div>
              
                        <div style="position:relative; width:190px; margin-top:0px;">
                            <asp:TextBox ID="txtPassword" runat="server" Height="34px" Width="190px" placeholder="密码/至少包含字母和数字" TextMode="Password"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="您输入的密码有误！" ControlToValidate="txtPassword" Font-Size="Smaller" ForeColor="Red" Font-Italic="False" ValidationExpression="^(?=.*[0-9])(?=.*[a-zA-Z])(.{1,})$"></asp:RegularExpressionValidator>
                        </div>
                        <div style="position:relative; width:190px; margin-top:0px;">
                            <asp:TextBox ID="txtAPassword" runat="server" Height="34px" Width="190px" placeholder="请再次输入密码" TextMode="Password"></asp:TextBox>

                        </div> 
                        <div id="CenterDiv4">
                            <asp:ListBox ID="ListBox1" runat="server" Height="30px" Width="194px" Rows="1" placeholder="用户类型">
                                <asp:ListItem>管理员</asp:ListItem>
                                <asp:ListItem>普通会员</asp:ListItem>
                            </asp:ListBox>
                        </div>           
                    </div>
                  
                </div>
                <div id="BottomDiv">
                    <div id="BottomDiv1">
                        <asp:Button ID="btnRegister" runat="server" Text="注册" Height="30px" Width="194px" BackColor="#4886CF" BorderStyle="None" ForeColor="White" OnClick="btnRegister_Click"/>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
