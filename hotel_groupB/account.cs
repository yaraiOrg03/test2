using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace hotel_groupB
{
    public class account
    {
        private string Account;

        private string ConnectionString;

        private account()
        {

        }

        public account(string account_name)
        {
            this.Account = account_name;
            this.ConnectionString = ConfigurationManager.ConnectionStrings["group2"].ConnectionString;
        }

        public bool ExistsAccount()
        {
            bool result = false;
            string query = "select * from member_register where account = '" + this.Account + "'";
            System.Diagnostics.Debug.WriteLine("[LOG] : query = " + query);
            try
            {
                using (var conn = new SqlConnection(this.ConnectionString))
                {
                    var amd = conn.CreateCommand();
                    amd.CommandText = query;
                    conn.Open();
                    using (var acu = amd.ExecuteReader())
                    {
                        if (acu.HasRows)
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
    }




}


