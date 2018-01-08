<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContentShow.aspx.cs" Inherits="WebApp.ContentShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/ContentShow.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="BigDiv">
        <div class="title"><h1>标题：<%=TopicName %></h1></div>
        <div class="UserName">发帖者：<%=UserName %></div>
        <div class="content">
            <div class="content1"><p><%=TopicContent %></p></div>
        </div>
        <div class="OldComment">
            <div class="CommentPlace">评论区</div>
            <div>
            <asp:GridView ID="gdvOCC" runat="server" Height="80px" Width="700px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </div>
        </div>
        <div class="NewComment">
            <div>
                
                    <asp:Button ID="btnLogon" runat="server" Text="登录" BackColor="#FF3300" ForeColor="White" PostBackUrl="~/Logon.aspx" />
                
                
                    <asp:Button ID="btnRegister" runat="server" Text="注册" BackColor="#1E131D" ForeColor="White" PostBackUrl="~/Register.aspx" />

                    <asp:Button ID="Button1" runat="server" Text="返回首页" BackColor="blue" ForeColor="White" PostBackUrl="~/index.aspx" />
                
            </div>
            <div>
                <asp:TextBox ID="txtContent" runat="server" Width="700px" BorderColor="Black" BorderWidth="3px"></asp:TextBox>
            </div>
            <div>
                <div class="comment3">
                <asp:Button ID="btnUpload" runat="server" Text="发表评论" OnClick="btnUpload_Click" BackColor="#FF6600" ForeColor="White" Width="78px" />
                </div>
            </div>
        </div>
        
    
   
        
    
    </div>
    </form>
</body>
</html>
