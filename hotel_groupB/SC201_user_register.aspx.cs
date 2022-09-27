using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC201_user_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txb_new_user_admisson.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            account a = new account(txb_new_user_account.Text);

            if (a.ExistsAccount() == true)
            {
                //アカウント名が既に存在しているとき
                string error_name = "そのアカウント名は既に使われております";
                System.Diagnostics.Debug.WriteLine(error_name);
                lb_error.Text = error_name;
            }
            else
            {
                //アカウント名が存在しないとき
                if (txb_new_user_password.Text == txb_new_user_password2.Text)
                {
                    this.DataInsert(txb_new_user_name.Text, txb_new_user_address.Text, txb_new_user_phone.Text, txb_new_user_mail.Text, txb_new_user_birthday.Text, txb_new_user_account.Text, txb_new_user_admisson.Text, txb_new_user_password.Text);

                    Response.Redirect("SC200_login_page.aspx", false);
                }
                else
                {
                    TextBox1.Text = "同じパスワードを入力してください";
                }

            }


           

        }
        private void DataInsert(string name, string address, string phone, string mail, string brithday, string account, string admission, string password)
        {
            var query = String.Format("INSERT INTO member_register (name, adress, number, mail, brithday, account, admission, password) VALUES ( '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", name, address, phone, mail, brithday, account, admission, password); using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["group2"].ConnectionString))
            {
                System.Diagnostics.Debug.WriteLine(query);
                try
                {
                    con.Open(); // データベースの接続
                    using (var transaction = con.BeginTransaction())
                    using (var command = new SqlCommand() { Connection = con, Transaction = transaction })
                    {
                        try
                        {
                            command.CommandText = query; // コマンドのセット
                            command.ExecuteNonQuery(); // コマンドの実行
                            transaction.Commit(); // コミット
                        }

                        catch
                        {
                            transaction.Rollback(); // ロールバック
                            throw;
                        }
                    }
                }
                catch (Exception exception)
                {
                    System.Diagnostics.Debug.WriteLine(exception.Message);
                    throw;
                }
                finally
                {
                    con.Close(); // データベースの接続終了
                }
            }
        }

        protected void txb_new_user_mail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txb_new_user_account_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txb_new_user_password2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txb_new_user_address_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txb_new_user_phone_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txb_new_user_birthday_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txb_new_user_password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}