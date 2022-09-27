<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC101-2_user_change.aspx.cs" Inherits="hotel_groupB.SC101_2_user_change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lb_user_search_result" runat="server" Text="検索結果" class="font-weight-bold" Font-Size="30px"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="account" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="名前" SortExpression="name" />
            <asp:BoundField DataField="account" HeaderText="アカウント名" ReadOnly="True" SortExpression="account" />
            <asp:BoundField DataField="adress" HeaderText="住所" SortExpression="adress" />
            <asp:BoundField DataField="number" HeaderText="電話番号" SortExpression="number" />
            <asp:BoundField DataField="mail" HeaderText="E-Mail" SortExpression="mail" />
            <asp:BoundField DataField="brithday" HeaderText="生年月日" SortExpression="brithday" DataFormatString="{0:yyyy/MM/dd}" />
            <asp:BoundField DataField="admission" HeaderText="入会年月日" SortExpression="admission" DataFormatString="{0:yyyy/MM/dd}" />
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
*
from
    member_register
WHERE ([name] like '%'+@name+'%')" DeleteCommand="DELETE FROM [member_register] WHERE [account] = @account" InsertCommand="INSERT INTO [member_register] ([name], [account], [adress], [number], [mail], [brithday], [admission]) VALUES (@name, @account, @adress, @number, @mail, @brithday, @admission)" UpdateCommand="UPDATE [member_register] SET [name] = @name, [adress] = @adress, [number] = @number, [mail] = @mail, [brithday] = @brithday, [admission] = @admission WHERE [account] = @account
">
        <DeleteParameters>
            <asp:Parameter Name="account" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" />
            <asp:Parameter Name="account" />
            <asp:Parameter Name="adress" />
            <asp:Parameter Name="number" />
            <asp:Parameter Name="mail" />
            <asp:Parameter Name="brithday" />
            <asp:Parameter Name="admission" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="name" SessionField="name" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" />
            <asp:Parameter Name="adress" />
            <asp:Parameter Name="number" />
            <asp:Parameter Name="mail" />
            <asp:Parameter Name="brithday" />
            <asp:Parameter Name="admission" />
            <asp:Parameter Name="account" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
