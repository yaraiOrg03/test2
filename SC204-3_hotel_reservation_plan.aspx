<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC204-3_hotel_reservation_plan.aspx.cs" Inherits="hotel_groupB.SC204_3_hotel_reservation_plan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="lb_plan_selection" runat="server" Text="プラン選択" class="font-weight-bold" Font-Size="30px"></asp:Label>
        </div>
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">件数:
                    <asp:Label ID="件数Label" runat="server" Text='<%# Eval("件数") %>' />
                    <br />プラン内容:
                    <asp:Label ID="プラン内容Label" runat="server" Text='<%# Eval("プラン内容") %>' />
                    <br />金額:
                    <asp:Label ID="金額Label" runat="server" Text='<%# Eval("金額") %>' />
                    <br />部屋数:
                    <asp:Label ID="部屋数Label" runat="server" Text='<%# Eval("部屋数") %>' />
                    <br />
                      備考:
                    <asp:Label ID="備考Label" runat="server" Text='<%# Eval("備考") %>' />
                <br />
                     <asp:Button ID="Label1" runat="server" Text='予約の確認をする' OnCommand="Button1_Click" CommandArgument='<%# Eval("件数") %>' />
                <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">件数:
                    <asp:Label ID="件数Label1" runat="server" Text='<%# Eval("件数") %>' />
                    <br />
                    プラン内容:
                    <asp:TextBox ID="プラン内容TextBox" runat="server" Text='<%# Bind("プラン内容") %>' />
                    <br />金額:
                    <asp:TextBox ID="金額TextBox" runat="server" Text='<%# Bind("金額") %>' />
                    <br />部屋数:
                    <asp:TextBox ID="部屋数TextBox" runat="server" Text='<%# Bind("部屋数") %>' />
                    <br />備考:
                    <asp:TextBox ID="備考TextBox" runat="server" Text='<%# Bind("備考") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                    <br />
                    </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>データは返されませんでした。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">プラン内容:
                    <asp:TextBox ID="プラン内容TextBox" runat="server" Text='<%# Bind("プラン内容") %>' />
                    <br />金額:
                    <asp:TextBox ID="金額TextBox" runat="server" Text='<%# Bind("金額") %>' />
                    <br />部屋数:
                    <asp:TextBox ID="部屋数TextBox" runat="server" Text='<%# Bind("部屋数") %>' />
                    <br />備考:
                    <asp:TextBox ID="備考TextBox" runat="server" Text='<%# Bind("備考") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                    <br />
                    </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">件数:
                    <asp:Label ID="件数Label" runat="server" Text='<%# Eval("件数") %>' />
                    <br />プラン内容:
                    <asp:Label ID="プラン内容Label" runat="server" Text='<%# Eval("プラン内容") %>' />
                    <br />金額:
                    <asp:Label ID="金額Label" runat="server" Text='<%# Eval("金額") %>' />
                    <br />部屋数:
                    <asp:Label ID="部屋数Label" runat="server" Text='<%# Eval("部屋数") %>' />
                    <br />
                     
                    備考:
                    <asp:Label ID="備考Label" runat="server" Text='<%# Eval("備考") %>' />
                     
                    <br />
                        <asp:Button ID="Label1" runat="server" Text='予約の確認をする' OnCommand="Button1_Click" CommandArgument='<%# Eval("件数") %>' />
                <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">件数:
                    <asp:Label ID="件数Label" runat="server" Text='<%# Eval("件数") %>' />
                    <br />プラン内容:
                    <asp:Label ID="プラン内容Label" runat="server" Text='<%# Eval("プラン内容") %>' />
                    <br />金額:
                    <asp:Label ID="金額Label" runat="server" Text='<%# Eval("金額") %>' />
                    <br />部屋数:
                    <asp:Label ID="部屋数Label" runat="server" Text='<%# Eval("部屋数") %>' />
                    <br />備考:
                    <asp:Label ID="備考Label" runat="server" Text='<%# Eval("備考") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="select
   P.planid as &quot;件数&quot;,
   P.detail as &quot;プラン内容&quot;,
   P.money as &quot;金額&quot;,
   P.room as &quot;部屋数&quot;,
   P.comment as &quot;備考&quot;
   
from
    plan_register P
where
    hotelid=@hotelid">
            <SelectParameters>
                <asp:SessionParameter Name="hotelid" SessionField="hotel_id" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label_error" runat="server" BorderColor="Red" Width="701px" ForeColor="Red"></asp:Label>
        </div>
    <div>
        <br />
        </div>
</asp:Content>
