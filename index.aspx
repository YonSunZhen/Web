<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApp.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="style/index.css" id="color" />
    <script type="text/javascript" src="js/Cookie.js"></script>

</head>

<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="top">
                <div class="title"></div>
                <div>
                    <span>
                        <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLogon" runat="server" Text="登录" PostBackUrl="~/Logon.aspx" BackColor="#FF3300" ForeColor="White" />
                        <asp:Button ID="btnRegister" runat="server" Text="注册" PostBackUrl="~/Register.aspx" BackColor="#1E131D" ForeColor="White" />
                        <asp:Button ID="btnAdd" runat="server" Text="发帖" BackColor="#009900" ForeColor="White" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnLogout" runat="server" Text="注销" BackColor="#006600" ForeColor="White" OnClick="btnLogout_Click" />
                        <asp:Button ID="btnUserInfo" runat="server" Text="后台管理" BackColor="#663300" ForeColor="White" OnClick="btnUserInfo_Click" />
                        <input type="button" id="button1" onclick="ChangeSkin()" value="换肤" style="color: black;" />

                    </span>
                </div>
            </div>
            <div class="content">
                <table>
                    <tr>
                        <td width="200px">
                            <div class="leftImg1 Img"></div>
                            <div class="BiaoZhu"><a href="https://baike.baidu.com/item/c%23" />C#</div>
                            <div class="leftImg2 Img"></div>
                            <div class="BiaoZhu"><a href="https://baike.baidu.com/item/c%E8%AF%AD%E8%A8%80/105958?fr=aladdin">C语言</a></div>
                            <div class="leftImg3 Img"></div>
                            <div class="BiaoZhu"><a href="https://baike.baidu.com/item/C%2B%2B">C++</div>
                        </td>
                        <td width="500px">
                            <div class="center">
                                <asp:GridView ID="gvdIndex" runat="server" Height="149px" Width="480px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TopicID" DataSourceID="sdsTopicInfo" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="17">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="TopicID" HeaderText="TopicID" InsertVisible="False" ReadOnly="True" SortExpression="TopicID" Visible="False" />
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" Visible="False" />
                                        <asp:BoundField DataField="TopicName" HeaderText="主题" SortExpression="TopicName" />
                                        <asp:BoundField DataField="TopicContent" HeaderText="内容" SortExpression="TopicContent" Visible="False" />
                                        <asp:HyperLinkField DataNavigateUrlFields="TopicID" DataNavigateUrlFormatString="ContentShow.aspx?TopicID={0}" DataTextFormatString="{0}" HeaderText="查看" Text="查看" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="sdsTopicInfo" runat="server" ConnectionString="<%$ ConnectionStrings:cnPc %>" SelectCommand="SELECT * FROM [TopicInfo]"></asp:SqlDataSource>
                            </div>
                        </td>
                        <td width="200px">
                            <div class="leftImg4 Img"></div>
                            <div class="BiaoZhu"><a href="https://baike.baidu.com/item/Python/407313">Python</div>
                            <div class="leftImg6 Img"></div>
                            <div class="BiaoZhu"><a href="https://baike.baidu.com/item/php/9337">PHP</a></div>
                            <div class="leftImg5 Img"></div>
                            <div class="BiaoZhu"><a href="https://baike.baidu.com/item/java/85979" />Java</div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="foot">
                <footer>
                    <p class="p">Posted by:孙永镇（2015112026）</p>

                </footer>

            </div>

        </div>
    </form>
</body>
</html>
