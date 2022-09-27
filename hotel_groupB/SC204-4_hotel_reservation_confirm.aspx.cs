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
    public partial class SC204_4_hotel_reservation_confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = "チェックイン日" + ":" + "" + Session["inday"].ToString() + "\n";
            TextBox1.Text = TextBox1.Text + "チェックアウト日" + ":" + "" + Session["outday"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            int hotel_id = Convert.ToInt32(Session["hotel_id"]);
            int planid = Convert.ToInt32(Session["planid"]);
            string reservation = DateTime.Today.ToString();
            string inday = Session["inday"].ToString();
            string outday = Session["outday"].ToString();
            int room = Convert.ToInt32(Session["room"]);

            this.DataInsert( hotel_id, planid,reservation, inday, outday, room);

            Response.Redirect("SC202_user_menu.aspx", false);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        private void DataInsert(int hotel_id, int planid,string reservation, string inday, string outday, int room)
        {
            var query = String.Format("INSERT INTO hotel_register_list (memberid, hotelid,planid,reservation, inday,outday,room )" +
                " VALUES ( (select id from member_register where account = '{0}'),'{1}','{2}','{3}','{4}','{5}','{6}' )" ,Session["LOGIN_USER"],  hotel_id, planid,reservation, inday, outday, room);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["group2"].ConnectionString))
            {
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
    }
}
