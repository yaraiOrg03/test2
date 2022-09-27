using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace hotel_groupB
{
    public class yoyakutarinai
    {

        private string ConnectionString;

        private int hotel_id;

        private string inday;

        private int plan_id;


        public yoyakutarinai(int plan_id, int hotel_id, string inday)
        {
            this.hotel_id = hotel_id;

            this.inday = inday;

            this.plan_id = plan_id;

            this.ConnectionString = ConfigurationManager.ConnectionStrings["group2"].ConnectionString;

        }

        //引き算の結果が1以上のときture それ以外の時はfalseを返すメソッド

        public bool judgeRoom()
        {
            bool result = false;
            string query = @"
                            select
(
    select
   
    P.room 
from
    plan_register P
 where
 P.planid='" + this.plan_id.ToString() + @"'
 )
-
(
select
 
    Sum(H.room)as room
from
    hotel_register_list H
    where
    H.hotelid = '" + this.hotel_id.ToString() + @"'
and
    H.planid = '" + this.plan_id.ToString() + @"'
and
    H.inday = '" + this.inday.ToString() + @"'
group by
    H.hotelid,
    H.planid
    

    
    
    
) as nokori
                            ";



            System.Diagnostics.Debug.WriteLine("[LOG] : query = " + query);
            using (var conn = new SqlConnection(this.ConnectionString))
            {
                var cmd = conn.CreateCommand();
                cmd.CommandText = query;
                conn.Open();
                using (var sdr = cmd.ExecuteReader())
                {
                    int nokori = 1000;

                    if (sdr.HasRows)
                    {
                        while (sdr.Read())
                        {
                            if (sdr["nokori"].ToString() != "")
                            {
                                nokori = Convert.ToInt32(sdr["nokori"]);
                            }
                        }
                    }
                    if (nokori >= 1)
                    {
                        result = true;
                    }
                    else
                    {

                    }

                }
            }
            return result;
        }


    }
}