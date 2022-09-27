<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC204-4_hotel_reservation_confirm.aspx.cs" Inherits="hotel_groupB.SC204_4_hotel_reservation_confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="予約確認画面"　class="font-weight-bold" Font-Size="30px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="宿内容"　class="font-weight-bold" Font-Size="25px"></asp:Label>
        </div>
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                宿名:
                <asp:Label ID="宿名Label" runat="server" Text='<%# Eval("宿名") %>' />
                <br />
                住所:
                <asp:Label ID="住所Label" runat="server" Text='<%# Eval("住所") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="select
H.hotelname as &quot;宿名&quot;,
H.hoteladress as &quot;住所&quot;
from
hotel_register　H
where
hotelid=@hotelid">
            <SelectParameters>
                <asp:SessionParameter Name="hotelid" SessionField="hotel_id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div>
            <asp:Label ID="Label3" runat="server" Text="プラン内容"　class="font-weight-bold" Font-Size="25px"></asp:Label>
        </div>
        <br />
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                プラン内容:
                <asp:Label ID="プラン内容Label" runat="server" Text='<%# Eval("プラン内容") %>' />
                <br />
                金額:
                <asp:Label ID="金額Label" runat="server" Text='<%# Eval("金額") %>' />
                <br />
          
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="select
P.detail as &quot;プラン内容&quot;,
@room*P.money as &quot;金額&quot;
from
plan_register P
where
planid=@planid">
            <SelectParameters>
                <asp:SessionParameter Name="room" SessionField="room" />
                <asp:SessionParameter Name="planid" SessionField="planid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="チェックイン・アウト日付"　class="font-weight-bold" Font-Size="25px"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="None" Height="82px" Width="292px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <br />
        </div>
    <div>
    <asp:Button ID="btn_hotel_reservation" runat="server" OnClick="Button1_Click" Text="予約する"　class="btn btn-outline-primary" />
        </div>
</asp:Content>
