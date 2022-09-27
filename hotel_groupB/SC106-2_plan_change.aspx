<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC106-2_plan_change.aspx.cs" Inherits="hotel_groupB.SC106_2_plan_change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="プラン検索結果一覧" class="font-weight-bold" Font-Size="30px"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="hotelid,detail" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="select
    P.planid,
    P.hotelid,
    H.hotelname,
    P.detail ,
    P.money ,
    P.room,
    P.comment
from
    plan_register P
inner join
    hotel_register H
on
    P.hotelid=H.hotelid
where
  hotelname like '%'+@hotelname+'%'" DeleteCommand="DELETE FROM [plan_register] WHERE [hotelid] = @hotelid AND [detail] = @detail" InsertCommand="INSERT INTO [plan_register] ([hotelid], [detail], [money], [room], [comment]) VALUES (@hotelid, @detail, @money, @room, @comment)" UpdateCommand="UPDATE [plan_register] SET [money] = @money, [room] = @room, [comment] = @comment WHERE [hotelid] = @hotelid AND [detail] = @detail">
            <DeleteParameters>
                <asp:Parameter Name="hotelid" />
                <asp:Parameter Name="detail" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="hotelid" />
                <asp:Parameter Name="detail" />
                <asp:Parameter Name="money" />
                <asp:Parameter Name="room" />
                <asp:Parameter Name="comment" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="hotelname" SessionField="hotel_name" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="money" />
                <asp:Parameter Name="room" />
                <asp:Parameter Name="comment" />
                <asp:Parameter Name="hotelid" />
                <asp:Parameter Name="detail" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
