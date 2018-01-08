<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.Master" AutoEventWireup="true" CodeBehind="M（删除评论）.aspx.cs" Inherits="WebApp.后台管理_管理员_.M_删除评论_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="CommentID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" PageSize="8" Width="500px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="CommentID" HeaderText="CommentID" InsertVisible="False" ReadOnly="True" SortExpression="CommentID" Visible="False" />
        <asp:BoundField DataField="TopicID" HeaderText="TopicID" SortExpression="TopicID" Visible="False" />
        <asp:BoundField DataField="TopicName" HeaderText="标题" SortExpression="TopicName" />
        <asp:BoundField DataField="UserName" HeaderText="用户" SortExpression="UserName" />
        <asp:BoundField DataField="CommentContent" HeaderText="评论内容" SortExpression="CommentContent" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnPc %>" DeleteCommand="DELETE FROM [Comment] WHERE [CommentID] = @CommentID" InsertCommand="INSERT INTO [Comment] ([TopicID], [TopicName], [UserName], [CommentContent]) VALUES (@TopicID, @TopicName, @UserName, @CommentContent)" SelectCommand="SELECT * FROM [Comment]" UpdateCommand="UPDATE [Comment] SET [TopicID] = @TopicID, [TopicName] = @TopicName, [UserName] = @UserName, [CommentContent] = @CommentContent WHERE [CommentID] = @CommentID">
    <DeleteParameters>
        <asp:Parameter Name="CommentID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TopicID" Type="Int32" />
        <asp:Parameter Name="TopicName" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="CommentContent" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TopicID" Type="Int32" />
        <asp:Parameter Name="TopicName" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="CommentContent" Type="String" />
        <asp:Parameter Name="CommentID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
