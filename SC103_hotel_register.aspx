<%@ Page Title="" Language="C#" MasterPageFile="~/SC001_master_admin_page.Master" AutoEventWireup="true" CodeBehind="SC103_hotel_register.aspx.cs" Inherits="hotel_groupB.SC103_hotel_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 379px;
        }
        .auto-style2 {
            height: 40px;
        }
        .auto-style3 {
            width: 379px;
            height: 40px;
        }
    .auto-style4 {
        height: 40px;
        width: 258px;
    }
    .auto-style5 {
        width: 258px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Label ID="Label7" runat="server" Text="宿登録画面"　font-size="30px"></asp:Label>

    </div>
    
    <table style="width:100%;">

        <tr>
          
             
            <td class="auto-style4">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/ビルのアイコン素材 4.png" />
                <asp:Label ID="Label1" runat="server" Text="宿名" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txb_hotel_name" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="宿名を入力して下さい"
                                            ControlToValidate="txb_hotel_name" ForeColor="Red">
                                             
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/画像イメージのアイコン素材 1.png" />
                <asp:Label ID="Label6" runat="server" Text="写真登録" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:FileUpload ID="fup" runat="server" />
                <asp:Image ID="img" runat="server" />
            </td>
            <td class="auto-style2">
                <asp:Label ID="lbl_message" runat="server" Text="" ForeColor="Red"></asp:Label>
                <asp:TextBox ID="txb_picture" runat="server" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/世界地図のフリーアイコン 1.png" />
                <asp:Label ID="Label2" runat="server" Text="都道府県" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txb_hotel_prefecture" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="都道府県を入力して下さい"
                                            ControlToValidate="txb_hotel_prefecture" ForeColor="Red">

                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/ペライチの資料の無料アイコン素材 1.png" />
                <asp:Label ID="Label3" runat="server" Text="市区町村" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txb_hotel_address" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="住所を入力して下さい" ControlToValidate="txb_hotel_address"　ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/時計・メーターのアイコン素材 3.png" />
                <asp:Label ID="Label4" runat="server" Text="チェックイン時間" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txb_intime" runat="server" TextMode="Time"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="チェックイン時間を入力して下さい" ControlToValidate="txb_intime"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/時計・メーターのアイコン素材 3.png" />
                <asp:Label ID="Label5" runat="server" Text="チェックアウト時間" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txb_outtime" runat="server" TextMode="Time"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="チェックアウト時間を入力して下さい" ControlToValidate="txb_outtime"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登録" 　class="btn btn-outline-primary"/>
            </td>
        </tr>
    </table>
</asp:Content>
