<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.Master" AutoEventWireup="true" CodeBehind="M(用户管理).aspx.cs" Inherits="WebApp.后台管理_管理员_.W_用户管理_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="UserName" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" PageSize="8" Width="500px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="UserName" HeaderText="用户" ReadOnly="True" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="密码" SortExpression="Password" />
            <asp:BoundField DataField="Type" HeaderText="类型" SortExpression="Type" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnPc %>" DeleteCommand="DELETE FROM [UserInfo] WHERE [UserName] = @UserName" InsertCommand="INSERT INTO [UserInfo] ([UserName], [Password], [Type]) VALUES (@UserName, @Password, @Type)" SelectCommand="SELECT * FROM [UserInfo]" UpdateCommand="UPDATE [UserInfo] SET [Password] = @Password, [Type] = @Type WHERE [UserName] = @UserName">
        <DeleteParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
