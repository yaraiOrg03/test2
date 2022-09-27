using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC200_login_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["LOGIN_USER"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Users u = new Users(txb_user_login_name.Text, txb_user_login_password.Text);

            if (u.judgeLogin())
            {
                // ログイン可
                string msg = "ログイン成功";                            // ログ用の処理
                System.Diagnostics.Debug.WriteLine(msg);                // ログ用の処理
                Session["LOGIN_USER"] = txb_user_login_name.Text;
                Response.Redirect("SC202_user_menu.aspx", false);

            }
            else
            {
                if (u.existsUserID())
                {
                    // ユーザIDは有
                    string msg = "パスワードが違います。";              // ログ用の処理
                    System.Diagnostics.Debug.WriteLine(msg);            // ログ用の処理
                    error_message.Text = msg;                             // ログイン失敗したメッセージを表示
                }
                else
                {
                    // ログイン不可
                    string msg = "指定したユーザIDは存在しません。";    // ログ用の処理
                    System.Diagnostics.Debug.WriteLine(msg);            // ログ用の処理
                    error_message.Text = msg;                             // ログイン失敗したメッセージを表示
                }
                Session["LOGIN_USER"] = null;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC201_user_register.aspx", false);
        }
    }
}