using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC103_hotel_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fup.HasFile)
            {
                var postfile = fup.PostedFile;
                var uppath = Server.MapPath($"~/hotel_picture/{Path.GetFileName(postfile.FileName)}");
                postfile.SaveAs(uppath);
                img.ImageUrl = $"~/hotel_picture/{Path.GetFileName(postfile.FileName)}";

                txb_picture.Text = img.ImageUrl;
            }

            else
            {
                lbl_message.Text = "ファイルが選択されていません。";
            }



            /*string intime = txb_intime.ToString();
            string hotelname = txb_hotel_name.ToString();
            string prefecture = txb_hotel_prefecture.ToString();
            string picture*/

            Session["txb_hotel_name"] = txb_hotel_name.Text;
            Session["txb_hotel_address"] = txb_hotel_address.Text;


            this.DataInsert(txb_hotel_name.Text, txb_picture.Text, txb_hotel_prefecture.Text, txb_hotel_address.Text, txb_intime.Text, txb_outtime.Text);
            Response.Redirect("SC104_hotelplan_register.aspx", false);
        }
        private void DataInsert(string hotelname, string picture, string prefecture, string hoteladress, string intime, string outtime)
        {
            var query = String.Format("INSERT INTO hotel_register ( hotelname, picture, prefecture, hoteladress, intime , outtime) VALUES ( '{0}','{1}','{2}','{3}','{4}','{5}')", hotelname, picture, prefecture, hoteladress, intime, outtime); using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["group2"].ConnectionString))
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