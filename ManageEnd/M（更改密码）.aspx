<%@ Page Title="" Language="C#" MasterPageFile="~/Manage.Master" AutoEventWireup="true" CodeBehind="M（更改密码）.aspx.cs" Inherits="WebApp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .SmallDiv {
        width:150px;
        margin-top:23px;
    }
    
    
</style>
    <div style="width:500px;height:268px;">
        <div style="margin:30px auto;width:100px;height:auto;">
            <div class="SmallDiv">
                <asp:TextBox ID="txtOPassword" runat="server" Width="150px" Height="24px" placeholder="原密码" TextMode="Password"></asp:TextBox>
            </div>
            <div class="SmallDiv">
                <asp:TextBox ID="txtNPassword" runat="server" Width="150px" Height="24px" placeholder="新密码/包含字母和数字" TextMode="Password"></asp:TextBox>
            </div>
             <div class="SmallDiv">
                <asp:TextBox ID="txtAPassword" runat="server" Width="150px" Height="24px" placeholder="再次输入密码" TextMode="Password"></asp:TextBox>
            </div>
            <div class="SmallDiv">
                <asp:Button ID="btnUpdataPwd" runat="server" Text="确认提交" Width="150px"  Height="30px" BackColor="#0099FF" Font-Size="Large" ForeColor="White" OnClick="btnUpdataPwd_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
