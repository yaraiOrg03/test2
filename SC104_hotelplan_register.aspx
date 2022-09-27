<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC104_hotelplan_register.aspx.cs" Inherits="hotel_groupB.SC104_hotelplan_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 116px;
        }
        .auto-style2 {
            width: 282px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            width: 282px;
            height: 40px;
        }
        .auto-style5 {
            height: 67px;
        }
        .auto-style6 {
            width: 282px;
            height: 67px;
        }
        .auto-style7 {
            height: 70px;
        }
        .auto-style8 {
            width: 282px;
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Label ID="Label2" runat="server" Text="プラン登録画面"　font-size="30px"></asp:Label>

    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style20" style="text-align: right">
                    &nbsp;</td>
                <td class="auto-style2">
                    <br />
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="宿ID" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            宿ID:
                            <asp:Label ID="宿IDLabel1" runat="server" Text='<%# Eval("宿ID") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            宿ID:
                            <asp:Label ID="宿IDLabel" runat="server" Text='<%# Eval("宿ID") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </td>
                <td>
                   
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="select
H.hotelid as &quot;宿ID&quot;
from
hotel_register H
where
    hotelname=@hotelname 
and
    hoteladress=@hoteladress">
                        <SelectParameters>
                            <asp:SessionParameter Name="hotelname" SessionField="txb_hotel_name" />
                            <asp:SessionParameter Name="hoteladress" SessionField="txb_hotel_address" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/ペライチの資料の無料アイコン素材 1.png" />
                    <asp:Label ID="lb_hotel_plan_detail" runat="server" Text="プラン内容" class="font-weight-bold"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txb_hotel_plan_detail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="プラン内容を入力して下さい"
                                                ControlToValidate="txb_hotel_plan_detail"　ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/円のお札の無料アイコン素材.png" Width="64px" />
                    <asp:Label ID="lb_money" runat="server" Text="金額" class="font-weight-bold"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txb_money" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="金額を入力して下さい"　ForeColor="Red"
                                                 ControlToValidate="txb_money">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/ホテルのベッドアイコン素材 3.png" />
                    <asp:Label ID="lb_room" runat="server" Text="部屋数" class="font-weight-bold"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txb_room" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="部屋数を入力して下さい"　ForeColor="Red"
                                                ControlToValidate="txb_room">

                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/ビジネス手帳の無料アイコン素材 3.png" />
                    <asp:Label runat="server" Text="備考" class="font-weight-bold"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txb_comment" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style5">    <asp:Button ID="btn_hotel_plan_register" runat="server" OnClick="Button1_Click" Text="登録"  class="btn btn-outline-primary"/>
                </td>
            </tr>
        </table>
    
</asp:Content>
