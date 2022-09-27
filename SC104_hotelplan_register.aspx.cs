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
    public partial class SC104_hotelplan_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string the_hote_ld = "";
            if (FormView1.SelectedValue == null)
            {
                the_hote_ld = Session["宿ID"].ToString();
            }
            else
            {
                the_hote_ld = FormView1.SelectedValue.ToString();
            }
            this.DataInsert(the_hote_ld, txb_hotel_plan_detail.Text, txb_money.Text, txb_room.Text, txb_comment.Text);
            Response.Redirect("SC100_admin_menu.aspx", false);
        }
        private void DataInsert(string hotelid, string detail, string money, string room, string comment)
        {
            var query = String.Format("INSERT INTO plan_register (hotelid, detail, money, room, comment) VALUES ( '{0}','{1}','{2}','{3}','{4}')", hotelid, detail, money, room, comment); using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["group2"].ConnectionString))
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

        protected void txb_money_TextChanged(object sender, EventArgs e)
        {

        }
    }
}