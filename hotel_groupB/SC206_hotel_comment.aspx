<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC206_hotel_comment.aspx.cs" Inherits="hotel_groupB.SC206_hotel_comment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label2" runat="server" Text="宿名"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="宿ID"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    <div>
        </div>
    
    <div>
        <asp:Label ID="lb_review" runat="server" Text="口コミ"></asp:Label>
        </div>
    <div>
    <asp:TextBox ID="txb_review" runat="server"></asp:TextBox>
        </div>
    <p>
    </p>
    <div>
    <asp:Button ID="btn_review" runat="server" OnClick="Button1_Click" Text="送信" />
        </div>
</asp:Content>
