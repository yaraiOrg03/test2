<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC102-2_hotel_register.aspx.cs" Inherits="hotel_groupB.SC102_2_hotel_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="検索結果" class="font-weight-bold" Font-Size="30px"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="hotelid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="hotelid" HeaderText="宿ID" InsertVisible="False" ReadOnly="True" SortExpression="hotelid" />
            <asp:BoundField DataField="hotelname" HeaderText="宿名" SortExpression="hotelname" />
            <asp:BoundField DataField="picture" HeaderText="写真" SortExpression="picture" />
            <asp:BoundField DataField="prefecture" HeaderText="都道府県" SortExpression="prefecture" />
            <asp:BoundField DataField="hoteladress" HeaderText="住所" SortExpression="hoteladress" />
            <asp:BoundField DataField="intime" HeaderText="チェックイン時間" SortExpression="intime" />
            <asp:BoundField DataField="outtime" HeaderText="チェックアウト時間" SortExpression="outtime" />
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編集"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="プラン追加"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('本当に削除してよろしいでしょうか');" Text="削除"></asp:LinkButton>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" DeleteCommand="DELETE FROM [hotel_register] WHERE [hotelid] = @hotelid" InsertCommand="INSERT INTO [hotel_register] ([hotelname], [picture], [prefecture], [hoteladress], [intime], [outtime]) VALUES (@hotelname, @picture, @prefecture, @hoteladress, @intime, @outtime)" SelectCommand="select
*
from
    hotel_register H WHERE ([hotelname] like '%'+@hotelname+'%')" UpdateCommand="UPDATE [hotel_register] SET [hotelname] = @hotelname, [picture] = @picture, [prefecture] = @prefecture, [hoteladress] = @hoteladress, [intime] = @intime, [outtime] = @outtime WHERE [hotelid] = @hotelid">
        <DeleteParameters>
            <asp:Parameter Name="hotelid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="hotelname" Type="String" />
            <asp:Parameter Name="picture" Type="String" />
            <asp:Parameter Name="prefecture" Type="String" />
            <asp:Parameter Name="hoteladress" Type="String" />
            <asp:Parameter DbType="Time" Name="intime" />
            <asp:Parameter DbType="Time" Name="outtime" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="hotelname" SessionField="hotel_list" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="hotelname" Type="String" />
            <asp:Parameter Name="picture" Type="String" />
            <asp:Parameter Name="prefecture" Type="String" />
            <asp:Parameter Name="hoteladress" Type="String" />
            <asp:Parameter DbType="Time" Name="intime" />
            <asp:Parameter DbType="Time" Name="outtime" />
            <asp:Parameter Name="hotelid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
