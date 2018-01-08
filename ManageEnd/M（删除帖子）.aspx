<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.Master" AutoEventWireup="true" CodeBehind="M（删除帖子）.aspx.cs" Inherits="WebApp.后台管理_管理员_.M_删除帖子_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="TopicID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="500px" PageSize="7">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="TopicID" HeaderText="TopicID" InsertVisible="False" ReadOnly="True" SortExpression="TopicID" Visible="False" />
            <asp:BoundField DataField="UserName" HeaderText="用户" SortExpression="UserName" />
            <asp:BoundField DataField="TopicName" HeaderText="标题" SortExpression="TopicName" />
            <asp:BoundField DataField="TopicContent" HeaderText="内容" SortExpression="TopicContent" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnPc %>" DeleteCommand="DELETE FROM [TopicInfo] WHERE [TopicID] = @TopicID" InsertCommand="INSERT INTO [TopicInfo] ([UserName], [TopicName], [TopicContent]) VALUES (@UserName, @TopicName, @TopicContent)" SelectCommand="SELECT * FROM [TopicInfo]" UpdateCommand="UPDATE [TopicInfo] SET [UserName] = @UserName, [TopicName] = @TopicName, [TopicContent] = @TopicContent WHERE [TopicID] = @TopicID">
        <DeleteParameters>
            <asp:Parameter Name="TopicID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="TopicName" Type="String" />
            <asp:Parameter Name="TopicContent" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="TopicName" Type="String" />
            <asp:Parameter Name="TopicContent" Type="String" />
            <asp:Parameter Name="TopicID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
