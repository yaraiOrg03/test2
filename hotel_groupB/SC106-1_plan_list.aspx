<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC106-1_plan_list.aspx.cs" Inherits="hotel_groupB.SC106_1_plan_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txb_plan_search" placeholder="宿名を入力してください" runat="server"></asp:TextBox>
    <asp:Button ID="btn_plan_search" runat="server" OnClick="Button1_Click" Text="検索" class="btn btn-outline-primary" />
    <br />
    <br />
    <asp:Label ID="lb_plan_old" runat="server" Text="プラン情報一覧" class="font-weight-bold" Font-Size="30px"></asp:Label>
    <br />
    <asp:GridView ID="GridView_plan" runat="server" AutoGenerateColumns="False" DataKeyNames="hotelid,detail" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="planid" HeaderText="プランID" InsertVisible="False" ReadOnly="True" SortExpression="planid" />
            <asp:BoundField DataField="hotelid" HeaderText="宿ID" ReadOnly="True" SortExpression="hotelid" />
            <asp:BoundField DataField="hotelname" HeaderText="宿名" SortExpression="hotelname" />
            <asp:BoundField DataField="detail" HeaderText="プラン内容" SortExpression="detail" ReadOnly="True" />
            <asp:BoundField DataField="money" HeaderText="金額" SortExpression="money" />
            <asp:BoundField DataField="room" HeaderText="部屋数" SortExpression="room" />
            <asp:BoundField DataField="comment" HeaderText="備考" SortExpression="comment" />
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編集"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('本当に削除してよろしいでしょうか');" Text="削除"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2 %>" DeleteCommand="DELETE FROM [plan_register] WHERE [hotelid] = @hotelid AND [detail] = @detail" InsertCommand="INSERT INTO [plan_register] ([hotelid], [detail], [money], [room], [comment]) VALUES (@hotelid, @detail, @money, @room, @comment)" SelectCommand="select
    P.planid,
    P.hotelid,
    H.hotelname,
    P.detail,
    P.money,
    P.room,
    P.comment
from
    plan_register P
inner join
    hotel_register H
on
    P.hotelid=H.hotelid" UpdateCommand="UPDATE 
plan_register
SET
money = @money, 
room = @room, 
comment = @comment 
WHERE
hotelid = @hotelid
and
detail = @detail">
        <DeleteParameters>
            <asp:Parameter Name="hotelid" Type="Int32" />
            <asp:Parameter Name="detail" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="hotelid" Type="Int32" />
            <asp:Parameter Name="detail" Type="String" />
            <asp:Parameter Name="money" Type="Int32" />
            <asp:Parameter Name="room" Type="Int32" />
            <asp:Parameter Name="comment" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="money" Type="Int32" />
            <asp:Parameter Name="room" Type="Int32" />
            <asp:Parameter Name="comment" Type="String" />
            <asp:Parameter Name="hotelid" />
            <asp:Parameter Name="detail" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
