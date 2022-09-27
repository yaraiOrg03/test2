<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC204-2_hotel_reservation_list.aspx.cs" Inherits="hotel_groupB.SC204_2_hotel_reservation_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lb_hotel_search_result_list" runat="server" Text="検索結果一覧" class="font-weight-bold" Font-Size="30px"></asp:Label>
        </div>
    <div>
        <asp:ListView ID="ListView_search_hotel" runat="server" DataKeyNames="宿ID" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">宿ID:
                    <asp:Label ID="宿IDLabel" runat="server" Text='<%# Eval("宿ID") %>' />
                    <br />宿名:
                    <asp:Label ID="宿名Label" runat="server" Text='<%# Eval("宿名") %>' />
                    <br />写真登録:
                    <asp:Image ID="写真登録Label" runat="server" ImageUrl='<%# Eval("写真登録") %>' />
                    <br />都道府県:
                    <asp:Label ID="都道府県Label" runat="server" Text='<%# Eval("都道府県") %>' />
                    <br />住所:
                    <asp:Label ID="住所Label" runat="server" Text='<%# Eval("住所") %>' />
                    <br />チェックイン時間:
                    <asp:Label ID="チェックイン時間Label" runat="server" Text='<%# Eval("チェックイン時間") %>' />
                    <br />チェックアウト時間:
                    <asp:Label ID="チェックアウト時間Label" runat="server" Text='<%# Eval("チェックアウト時間") %>' />
                    <br />
                         <asp:Button ID="Label1" runat="server" Text='この宿のプランを選択をする' OnCommand="Button1_Click" CommandArgument='<%# Eval("宿ID") %>' />
                <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">宿ID:
                    <asp:Label ID="宿IDLabel1" runat="server" Text='<%# Eval("宿ID") %>' />
                    <br />宿名:
                    <asp:TextBox ID="宿名TextBox" runat="server" Text='<%# Bind("宿名") %>' />
                    <br />写真登録:
                    <asp:TextBox ID="写真登録TextBox" runat="server" Text='<%# Bind("写真登録") %>' />
                    <br />都道府県:
                    <asp:TextBox ID="都道府県TextBox" runat="server" Text='<%# Bind("都道府県") %>' />
                    <br />住所:
                    <asp:TextBox ID="住所TextBox" runat="server" Text='<%# Bind("住所") %>' />
                    <br />チェックイン時間:
                    <asp:TextBox ID="チェックイン時間TextBox" runat="server" Text='<%# Bind("チェックイン時間") %>' />
                    <br />チェックアウト時間:
                    <asp:TextBox ID="チェックアウト時間TextBox" runat="server" Text='<%# Bind("チェックアウト時間") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                    <br /></td>
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
                <td runat="server" style="">宿名:
                    <asp:TextBox ID="宿名TextBox" runat="server" Text='<%# Bind("宿名") %>' />
                    <br />写真登録:
                    <asp:TextBox ID="写真登録TextBox" runat="server" Text='<%# Bind("写真登録") %>' />
                    <br />都道府県:
                    <asp:TextBox ID="都道府県TextBox" runat="server" Text='<%# Bind("都道府県") %>' />
                    <br />住所:
                    <asp:TextBox ID="住所TextBox" runat="server" Text='<%# Bind("住所") %>' />
                    <br />チェックイン時間:
                    <asp:TextBox ID="チェックイン時間TextBox" runat="server" Text='<%# Bind("チェックイン時間") %>' />
                    <br />チェックアウト時間:
                    <asp:TextBox ID="チェックアウト時間TextBox" runat="server" Text='<%# Bind("チェックアウト時間") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">宿ID:
                    <asp:Label ID="宿IDLabel" runat="server" Text='<%# Eval("宿ID") %>' />
                    <br />宿名:
                    <asp:Label ID="宿名Label" runat="server" Text='<%# Eval("宿名") %>' />
                    <br />写真登録:
                    
                    <asp:Image ID="写真登録Label" runat="server" ImageUrl='<%# Eval("写真登録") %>' />
                    <br />都道府県:
                    <asp:Label ID="都道府県Label" runat="server" Text='<%# Eval("都道府県") %>' />
                    <br />住所:
                    <asp:Label ID="住所Label" runat="server" Text='<%# Eval("住所") %>' />
                    <br />チェックイン時間:
                    <asp:Label ID="チェックイン時間Label" runat="server" Text='<%# Eval("チェックイン時間") %>' />
                    <br />チェックアウト時間:
                    <asp:Label ID="チェックアウト時間Label" runat="server" Text='<%# Eval("チェックアウト時間") %>' />
                    <br />
                       <asp:Button ID="Label1" runat="server" Text='この宿のプランを選択をする' OnCommand="Button1_Click" CommandArgument='<%# Eval("宿ID") %>' />
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
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">宿ID:
                    <asp:Label ID="宿IDLabel" runat="server" Text='<%# Eval("宿ID") %>' />
                    <br />宿名:
                    <asp:Label ID="宿名Label" runat="server" Text='<%# Eval("宿名") %>' />
                    <br />写真登録:
                    <asp:Label ID="写真登録Label" runat="server" Text='<%# Eval("写真登録") %>' />
                    <br />都道府県:
                    <asp:Label ID="都道府県Label" runat="server" Text='<%# Eval("都道府県") %>' />
                    <br />住所:
                    <asp:Label ID="住所Label" runat="server" Text='<%# Eval("住所") %>' />
                    <br />チェックイン時間:
                    <asp:Label ID="チェックイン時間Label" runat="server" Text='<%# Eval("チェックイン時間") %>' />
                    <br />チェックアウト時間:
                    <asp:Label ID="チェックアウト時間Label" runat="server" Text='<%# Eval("チェックアウト時間") %>' />
                    <br /></td>
            </SelectedItemTemplate>

        </asp:ListView>
        
      
        
        
      
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="select
    H.hotelid as &quot;宿ID&quot;,
    H.hotelname as &quot;宿名&quot;,
    H.picture as &quot;写真登録&quot;,
    H.prefecture as &quot;都道府県&quot;,
    H.hoteladress as &quot;住所&quot;,
    H.intime as &quot;チェックイン時間&quot;,
    H.outtime as &quot;チェックアウト時間&quot;
from
    hotel_register H
where
    prefecture=@prefecture

    ">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="prefecture" SessionField="prefecture" />
            </SelectParameters>
        </asp:SqlDataSource>
        
      
        
        
      
        </div>
</asp:Content>
