<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="WebApp.Logon" %>

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
                        <asp:TextBox ID="txtUserName" runat="server" Height="34px" Width="190px" placeholder="请输入用户名"></asp:TextBox>
                        </div>
                        <div id="CenterDiv3">
                            <asp:TextBox ID="txtPassword" runat="server" Height="34px" Width="190px" placeholder="请输入密码" TextMode="Password"></asp:TextBox>
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
                        <asp:Button ID="btnLogon" runat="server" Text="登陆" Height="30px" Width="194px" BackColor="#4886CF" BorderStyle="None" ForeColor="White" OnClick="btnLogon_Click"/>
                    </div>
                </div>
            </div>
    
    
    </form>
</body>
</html>
