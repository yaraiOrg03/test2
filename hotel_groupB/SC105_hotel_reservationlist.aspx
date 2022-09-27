<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC105_hotel_reservationlist.aspx.cs" Inherits="hotel_groupB.SC105_hotel_reservationlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lb_hotel_reservation" runat="server" Text="宿予約履歴一覧" class="font-weight-bold" Font-Size="30px"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="会員ID" HeaderText="会員ID" SortExpression="会員ID" />
            <asp:BoundField DataField="氏名" HeaderText="氏名" SortExpression="氏名" />
            <asp:BoundField DataField="宿ID" HeaderText="宿ID" SortExpression="宿ID" />
            <asp:BoundField DataField="宿名" HeaderText="宿名" SortExpression="宿名" />
            <asp:BoundField DataField="プランID" HeaderText="プランID" SortExpression="プランID" />
            <asp:BoundField DataField="プラン内容" HeaderText="プラン内容" SortExpression="プラン内容" />
            <asp:BoundField DataField="部屋数" HeaderText="部屋数" SortExpression="部屋数" />
            <asp:BoundField DataField="金額" HeaderText="金額" SortExpression="金額" />
            <asp:BoundField DataField="予約年月日" DataFormatString="{0:yyyy/MM/dd}" HeaderText="予約年月日" SortExpression="予約年月日" />
            <asp:BoundField DataField="チェックイン日" DataFormatString="{0:yyyy/MM/dd}" HeaderText="チェックイン日" SortExpression="チェックイン日" />
            <asp:BoundField DataField="チェックアウト日" DataFormatString="{0:yyyy/MM/dd}" HeaderText="チェックアウト日" SortExpression="チェックアウト日" />
        </Columns>
        <EditRowStyle BackColor="White" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2 %>" SelectCommand="select
 
    h.memberid as &quot;会員ID&quot;
,   m.name as &quot;氏名&quot;
,    h.hotelid as &quot;宿ID&quot;
,   r.hotelname as &quot;宿名&quot;
,    h.planid as &quot;プランID&quot;
,   p.detail as &quot;プラン内容&quot;
,    h.room as &quot;部屋数&quot;
,   p.money as &quot;金額&quot;
,    h.reservation as &quot;予約年月日&quot;
,    h.inday as &quot;チェックイン日&quot;
,    h.outday as &quot;チェックアウト日&quot;
from
    hotel_register_list h
inner join
    hotel_register r
on
    h.hotelid = r.hotelid
inner join
    member_register m
on
    m.id = h.memberid
inner join
    plan_register p
on
    p.planid = h.planid"></asp:SqlDataSource>
</asp:Content>
