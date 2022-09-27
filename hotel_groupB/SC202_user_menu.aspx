<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC202_user_menu.aspx.cs" Inherits="hotel_groupB.SC202_user_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <asp:Label ID="name_in" runat="server" ForeColor="Red"></asp:Label>さん。
  <asp:HyperLink ID="log_out" runat="server" NavigateUrl="~/sc200_login_page.aspx" ForeColor="black">ログアウト</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>    
    <asp:HyperLink ID="link_user_data_list" runat="server" NavigateUrl="~/SC203_user_change.aspx"　class="btn btn-outline-primary" style="width:20%;padding:5px;font-size:20px;">会員情報の変更・退会</asp:HyperLink>
    </p>
        <p>
        <asp:HyperLink ID="link_user_hotel_search" runat="server" NavigateUrl="~/SC204-1_hotel_reservation.aspx"　class="btn btn-outline-primary" style="width:20%;padding:5px;font-size:20px;">宿を検索・予約する</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="link_user_reservation_change" runat="server" NavigateUrl="~/SC205_hotel_change.aspx"　class="btn btn-outline-primary" style="width:20%;padding:5px;font-size:20px;">予約履歴を確認する</asp:HyperLink>
    </p>
    </asp:Content>
