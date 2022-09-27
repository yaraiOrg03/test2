using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace hotel_groupB
{
    public class YoyakuChecker
    {

        public static bool isOverFiveYoyaku(string account)
        {
            bool result = false; // 5件以上ではない

            string query = "select* from hotel_register_list H inner join member_register M on H.memberid = M.id where M.account = '" + account + "' and H.outday > GETDATE()";
            System.Diagnostics.Debug.WriteLine("[LOG] : query = " + query);

            try
            {
                using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["group2"].ConnectionString))
                {
                    var cmd = conn.CreateCommand();
                    cmd.CommandText = query;
                    conn.Open();
                    using (var sdr = cmd.ExecuteReader())
                    {
                        if (sdr.HasRows)
                        {
                            int rownum = 0;
                            while (sdr.Read())
                            {
                                rownum = rownum + 1;
                            }
                            if (rownum >= 5)
                            {
                                result = true;
                            }
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