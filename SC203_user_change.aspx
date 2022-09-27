<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC203_user_change.aspx.cs" Inherits="hotel_groupB.SC203_user_change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="lb_private_data" runat="server" Text="会員情報" class="font-weight-bold" Font-Size="30px"></asp:Label>
        <asp:GridView ID="gridview_private_data_list" runat="server" AutoGenerateColumns="False" DataKeyNames="account" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="account" HeaderText="アカウント名" SortExpression="account" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="氏名" SortExpression="name" />
                <asp:BoundField DataField="adress" HeaderText="住所" SortExpression="adress" />
                <asp:BoundField DataField="mail" HeaderText="E-mail" SortExpression="mail" />
                <asp:BoundField DataField="number" HeaderText="電話番号" SortExpression="number" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="SELECT [brithday], [admission], [mail], [adress], [number], [account], [name] FROM [member_register] WHERE ([account] = @account)" DeleteCommand="DELETE FROM [member_register] WHERE [account] = @account" InsertCommand="INSERT INTO [member_register] ([brithday], [admission], [mail], [adress], [number], [account], [name]) VALUES (@brithday, @admission, @mail, @adress, @number, @account, @name)" UpdateCommand="UPDATE [member_register] SET [brithday] = @brithday, [admission] = @admission, [mail] = @mail, [adress] = @adress, [number] = @number, [name] = @name WHERE [account] = @account">
            <DeleteParameters>
                <asp:Parameter Name="account" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="brithday" />
                <asp:Parameter DbType="Date" Name="admission" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="adress" Type="String" />
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="account" SessionField="LOGIN_USER" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="brithday" />
                <asp:Parameter DbType="Date" Name="admission" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="adress" Type="String" />
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="account" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
