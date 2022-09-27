<%@ Page Title="" Language="C#" MasterPageFile="~/SC003_master.Master" AutoEventWireup="true" CodeBehind="SC201_user_register.aspx.cs" Inherits="hotel_groupB.SC201_user_register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            width: 476px;
        }
        .auto-style3 {
            height: 38px;
            width: 476px;
        }
        .auto-style4 {
            width: 476px;
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
            width: 326px;
        }
        .auto-style7 {
            width: 326px;
        }
        .auto-style8 {
            height: 38px;
            width: 326px;
        }
        .auto-style9 {
            height: 73px;
            width: 476px;
        }
        .auto-style10 {
            height: 73px;
            width: 326px;
        }
        .auto-style11 {
            height: 73px;
        }
        .auto-style12 {
            height: 36px;
            width: 476px;
        }
        .auto-style13 {
            height: 36px;
            width: 326px;
        }
        .auto-style14 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/汎用的な人のシルエットアイコン.png" />
        <asp:Label ID="lb_new_user_name" runat="server" Text="氏名" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style6">
    <asp:TextBox ID="txb_new_user_name" runat="server"　placeholder="（例）東京太郎"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_name"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/ペライチの資料の無料アイコン素材 1.png" />
        <asp:Label ID="lb_new_user_address" runat="server" Text="住所" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style7">
        <asp:TextBox ID="txb_new_user_address" runat="server" OnTextChanged="txb_new_user_address_TextChanged"　placeholder="（例）東京都"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_address"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/電話の受話器のアイコン素材 13.png" />
        <asp:Label ID="lb_new_user_phone" runat="server" Text="電話番号" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style8">
        <asp:TextBox ID="txb_new_user_phone" runat="server" OnTextChanged="txb_new_user_phone_TextChanged" placeholder="（例）090-0000-0000"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_phone"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="ハイフンを含めた電話番号を入力して下さい" ControlToValidate="txb_new_user_phone" ValidationExpression="(0\d{1,4}-|\(0\d{1,4}\) ?)?\d{1,4}-\d{4}"　ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/シンプルなメールのアイコン素材 2.png" />
        <asp:Label ID="lb_new_user_mail" runat="server" Text="E-mail" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style8">
        <asp:TextBox ID="txb_new_user_mail" runat="server" OnTextChanged="txb_new_user_mail_TextChanged" placeholder="（例）@example.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_mail"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="e-mailを入力して下さい" ControlToValidate="txb_new_user_mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"　ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/カレンダー・スケジュールの無料アイコン素材 3.png" />
        <asp:Label ID="lb_new_user_birthday" runat="server" Text="生年月日" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style8">
        <asp:TextBox ID="txb_new_user_birthday" placeholder="（例）2000/01/01" runat="server" OnTextChanged="txb_new_user_birthday_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_birthday"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="生年月日を入力して下さい" ControlToValidate="txb_new_user_birthday" ValidationExpression="^[0-9]{4}/(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])$"　ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/身分証・名札の無料アイコン素材 1.png" />
        <asp:Label ID="lb_new_user_account" runat="server" Text="アカウント名" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style8">
        <asp:TextBox ID="txb_new_user_account" runat="server" OnTextChanged="txb_new_user_account_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_account"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="lb_error" runat="server" BorderStyle="None" CssClass="offset-sm-0" ReadOnly="True" Width="396px"  ForeColor="Red"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/カレンダー・スケジュールの無料アイコン素材 3.png" />
        <asp:Label ID="Label1" runat="server" Text="入会年月日" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style10">
        <asp:TextBox ID="txb_new_user_admisson" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style11">
                </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/鍵・錠の無料アイコン素材 1.png" />
        <asp:Label ID="lb_new_user_password" runat="server" Text="パスワード" class="font-weight-bold"></asp:Label>
            </td>
            <td class="auto-style8">
        <asp:TextBox ID="txb_new_user_password" runat="server" TextMode="Password" OnTextChanged="txb_new_user_password_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_password"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <div>
                <asp:Label ID="Label2" runat="server" Text="大文字を含むアルファベットかつ記号を含んで、8桁以上入力してください"></asp:Label>
                </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="大文字を含むアルファベットかつ記号を含んで、8桁以上入力してください" ControlToValidate="txb_new_user_password" ValidationExpression="^(?=.*[A-Z])(?=.*[.?/-])[a-zA-Z0-9.?/-]{8,16}$"　ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/鍵・錠の無料アイコン素材 1.png" />
        <asp:Label ID="lb_new_user_password2" runat="server" Text="パスワード（確認）" class="font-weight-bold"></asp:Label>
        
        

            </td>
            <td class="auto-style13">
        <asp:TextBox ID="txb_new_user_password2" runat="server" TextMode="Password" OnTextChanged="txb_new_user_password2_TextChanged"></asp:TextBox>
        
        

                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="＊" ControlToValidate="txb_new_user_password2"　ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" ReadOnly="True" ForeColor="Red" Width="385px"></asp:TextBox>
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style8">
    <asp:Button ID="btn_new_user_register" runat="server" OnClick="Button1_Click" Text="登録" class="btn btn-outline-primary" />
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
