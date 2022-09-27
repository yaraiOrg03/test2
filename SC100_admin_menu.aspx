<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC100_admin_menu.aspx.cs" Inherits="hotel_groupB.SC100_admin_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <asp:Label ID="lb_admin_top" runat="server" Text="こちらはトップページです" class="font-weight-bold" style="width:18%;padding:5px;font-size:30px;"></asp:Label>
         <br />
         <br />
    </div>
    <p>
        <asp:HyperLink ID="link_admin_user_search" runat="server" NavigateUrl="~/SC101-1_user_change.aspx" class="btn btn-outline-primary" style="width:18%;padding:5px;font-size:20px;">会員の検索</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="link_admin_hotel_register" runat="server" NavigateUrl="~/SC103_hotel_register.aspx" class="btn btn-outline-primary" style="width:18%;padding:5px;font-size:20px;">宿情報登録</asp:HyperLink>

    </p>
    <p>
        <asp:HyperLink ID="link_admin_hotel_list" runat="server" NavigateUrl="~/SC102-1_hotel_register.aspx" class="btn btn-outline-primary" style="width:18%;padding:5px;font-size:20px;">宿情報一覧</asp:HyperLink>

    </p>
    <p>
        <asp:HyperLink ID="link_plan_search" runat="server" NavigateUrl="~/SC106-1_plan_list.aspx" class="btn btn-outline-primary" style="width:18%;padding:5px;font-size:20px;">プラン情報一覧</asp:HyperLink>
    </p>
  
    <p>
        <asp:HyperLink ID="link_admin_reservation_hotel" runat="server" NavigateUrl="~/SC105_hotel_reservationlist.aspx" class="btn btn-outline-primary" style="width:18%;padding:5px;font-size:20px;">宿予約一覧</asp:HyperLink>
    </p>
    
    
    
    
    
</asp:Content>
