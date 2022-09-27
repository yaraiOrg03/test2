<%@ Page Title="" Language="C#" MasterPageFile="~/SC003_master.Master" AutoEventWireup="true" CodeBehind="SC200_login_page.aspx.cs" Inherits="hotel_groupB.SC200_login_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
    <asp:Label ID="lb_user_login_name" runat="server" Text="アカウント名"　class="font-weight-bold" Width="150px"></asp:Label>
    <asp:TextBox ID="txb_user_login_name" runat="server" Width="250px"></asp:TextBox>
   </p>
        <p>
    <asp:Label ID="label_user_login_password" runat="server" Text="パスワード" class="font-weight-bold" Width="150px"></asp:Label>
    <asp:TextBox ID="txb_user_login_password" TextMode="password" runat="server" Width="250px"></asp:TextBox>
    </p>
    <div>
    <asp:Label ID="error_message" runat="server" ForeColor="Red"></asp:Label>
    </div>
    <asp:Button ID="btn_user_login" runat="server" OnClick="Button1_Click" Text="ログイン"　class="btn btn-outline-primary" />
    <asp:Button ID="btn_user_new_register" runat="server" OnClick="Button2_Click" Text="新規登録"　class="btn btn-outline-primary" />
</asp:Content>
