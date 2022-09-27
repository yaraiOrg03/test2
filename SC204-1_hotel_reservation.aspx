<%@ Page Title="" Language="C#" MasterPageFile="~/SC002_master_user_page.Master" AutoEventWireup="true" CodeBehind="SC204-1_hotel_reservation.aspx.cs" Inherits="hotel_groupB.SC204_1_hotel_reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 26;
        }
        .auto-style2 {
            height: 38px;
        }
        .auto-style3 {
            width: 258px;
        }
        .auto-style4 {
            height: 38px;
            width: 258px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        &nbsp;&nbsp; 　&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    <div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/ビルのアイコン素材 4.png" />
        <asp:Label ID="lb_hotel_search_image" runat="server" Text="宿検索" class="font-weight-bold"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/世界地図のフリーアイコン 1.png" />
        <asp:Label ID="lb_search_prefecture" runat="server" Text="都道府県名" class="font-weight-bold"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="SELECT DISTINCT [prefecture] FROM [hotel_register]"></asp:SqlDataSource>
                </td>
                <td class="auto-style2"  style="text-align: left">
        <asp:DropDownList ID="dropdownlist_search_prefecture" runat="server" DataSourceID="SqlDataSource1" DataTextField="prefecture" DataValueField="prefecture" OnSelectedIndexChanged="dropdownlist_search_prefecture_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dropdownlist_search_prefecture" ErrorMessage="都道府県を入力して下さい" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/ホテルのベッドアイコン素材 3.png" />
        <asp:Label ID="lb_search_room" runat="server" Text="部屋数" class="font-weight-bold"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:group2ConnectionString %>" SelectCommand="SELECT DISTINCT [room] FROM [plan_register]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                </td>
                <td class="auto-style2" style="text-align: left">
        <asp:DropDownList ID="dropdownlist_search_room" runat="server" DataSourceID="SqlDataSource2" DataTextField="room" DataValueField="room" OnSelectedIndexChanged="dropdownlist_search_room_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dropdownlist_search_room" ErrorMessage="部屋数を入力して下さい" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/カレンダー・スケジュールの無料アイコン素材 3.png" />
        <asp:Label ID="lb_search_inday" runat="server" Text="チェックイン日" class="font-weight-bold"></asp:Label>

        
                </td>
                <td class="auto-style2" style="text-align: left">
                    <asp:TextBox ID = "txb_search_inday" TextMode="Date" runat="server" Width="241px" OnTextChanged="txb_search_inday_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="チェックイン日を入力して下さい" ControlToValidate="txb_search_inday" ForeColor="Red"></asp:RequiredFieldValidator>
      
     
        
   <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="以前の日付は選べません" ControlToValidate="txb_search_inday" Type="Date"
                           MaximumValue="9999/12/31" ForeColor="Red">

        </asp:RangeValidator>

        
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/カレンダー・スケジュールの無料アイコン素材 3.png" />
        <asp:Label ID="lb_search_outday" runat="server" Text="チェックアウト日" class="font-weight-bold"></asp:Label>
      
     
        
                </td>
                <td class="auto-style2" style="text-align: left">
        <asp:TextBox ID="txb_search_outday"　TextMode="Date" runat="server" CssClass="auto-style1" Width="242px"></asp:TextBox>
      
     
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txb_search_outday" ErrorMessage="チェックアウト日を入力して下さい" ForeColor="Red"></asp:RequiredFieldValidator>
      
     
        
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">

        <asp:Label ID="lbl_debug" runat="server" ForeColor="Red"></asp:Label>

                </td>
                <td style="text-align: left">
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="チェックイン日はチェックアウト日以前の日を指定して下さい" ControlToValidate="txb_search_outday" ControlToCompare="txb_search_inday"
                              Operator="GreaterThanEqual" Type="Date" ForeColor="Red">

        </asp:CompareValidator>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
        <asp:Button ID="btn_user_hotel_search_list" runat="server" OnClick="Button1_Click" Text="検索" class="btn btn-outline-primary"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
</asp:Content>
