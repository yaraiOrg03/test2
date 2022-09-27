<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC205_hotel_change.aspx.cs" Inherits="hotel_groupB.SC205_hotel_change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lb_hotel_history" runat="server" Text="宿履歴" Font-Size="30px"></asp:Label>
        </div>
    <div>
    <asp:GridView ID="gridview_user_hotel_history" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="yoyakuID" HeaderText="予約ID" SortExpression="yoyakuID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="hotelname" HeaderText="宿名" SortExpression="hotelname" />
            <asp:BoundField DataField="hoteladress" HeaderText="住所" SortExpression="hoteladress" />
            <asp:BoundField DataField="detail" HeaderText="プラン内容" SortExpression="detail" />
            <asp:BoundField DataField="money" HeaderText="金額" SortExpression="money" />
            <asp:BoundField DataField="room" HeaderText="部屋数" SortExpression="room" />
            <asp:BoundField DataField="intime" HeaderText="チェックイン時間" SortExpression="intime" />
            <asp:BoundField DataField="outtime" HeaderText="チェックアウト時間" SortExpression="outtime" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" DeleteCommand="DELETE FROM hotel_register_list WHERE (id = @yoyakuID)" SelectCommand="SELECT H.id AS yoyakuID, R.hotelname, R.hoteladress, P.detail, P.money, H.room, R.intime, R.outtime FROM hotel_register_list AS H INNER JOIN hotel_register AS R ON H.hotelid = R.hotelid INNER JOIN plan_register AS P ON H.planid = P.planid INNER JOIN member_register AS M ON H.memberid = M.id WHERE (M.account = @account)">
            <DeleteParameters>
                <asp:Parameter Name="yoyakuID" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="account" SessionField="LOGIN_USER" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
