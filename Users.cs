using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace hotel_groupB
{
    public class Users
    {
        private string UserID;
        private string PW;

        private string ConnectionString;

        private Users()
        {
            // 引数無しコンストラクタは使用不可
        }
        public Users(string userid, string pw)
        {
            this.UserID = userid;
            this.PW = pw;
            this.ConnectionString = ConfigurationManager.ConnectionStrings["group2"].ConnectionString;
        }

        /*
         * 
         * メソッド名：　existsUserID
         * 役割　　　：　ユーザIDがすでにUsersテーブルに存在するか確認する
         * 引数　　　：　無
         * 戻値　　　：　bool型 true: 有、false: 無
         * 
         */
        public bool existsUserID()
        {
            bool result = false;
            string query = "select * from member_register where account = '" + this.UserID + "'";
            System.Diagnostics.Debug.WriteLine("[LOG] : query = " + query);

            try
            {
                using (var conn = new SqlConnection(this.ConnectionString))
                {
                    var cmd = conn.CreateCommand();
                    cmd.CommandText = query;
                    conn.Open();
                    using (var sdr = cmd.ExecuteReader())
                    {
                        if (sdr.HasRows)
                        {
                            result = true;
                        }
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

            }

            return result;
        }

        /*
         * 
         * メソッド名：　judgeLogin
         * 役割　　　：　ユーザID・パスワードの組み合わせのログイン可否を判定する
         * 引数　　　：　無
         * 戻値　　　：　bool型 true: ログイン可、false: ログイン不可
         * 
         */
        public bool judgeLogin()
        {
            bool result = false;
            string query = "select * from member_register where account = '" + this.UserID + "' and password = '" + this.PW + "'";
            System.Diagnostics.Debug.WriteLine("[LOG] : query = " + query);
            using (var conn = new SqlConnection(this.ConnectionString))
            {
                var cmd = conn.CreateCommand();
                cmd.CommandText = query;
                conn.Open();
                using (var sdr = cmd.ExecuteReader())
                {
                    if (sdr.HasRows)
                    {
                        result = true;
                    }
                }
            }
            return result;
        }

        /*
         * 
         * メソッド名：　registerUser
         * 役割　　　：　ユーザID・パスワードをUsersテーブルに登録する
         * 引数　　　：　無
         * 戻値　　　：　bool型 true: 登録成功、false: 登録失敗
         * 
         */
        public bool registerUser()
        {
            bool success = false;

            var query = String.Format("insert into member_register ( account, password ) VALUES ( '{0}', HASHBYTES('SHA2_512','{1}') )", this.UserID, this.PW);

            using (SqlConnection con = new SqlConnection(this.ConnectionString))
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
                            success = true;
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
            return success;
        }
    }

}