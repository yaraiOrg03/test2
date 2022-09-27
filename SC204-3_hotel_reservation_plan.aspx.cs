using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC204_3_hotel_reservation_plan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, CommandEventArgs e)
        {
            string planid = e.CommandArgument.ToString();




            yoyakutarinai y = new yoyakutarinai(Convert.ToInt32(planid), Convert.ToInt32(Session["hotel_id"]), Session["inday"].ToString());
            if (y.judgeRoom())
            {
                // 部屋数可
                Session["planid"] = planid;
                Response.Redirect("SC204-4_hotel_reservation_confirm.aspx", false);

            }
            else
            {
                string error = "部屋数が埋まっております";
                System.Diagnostics.Debug.WriteLine(error);
                Label_error.Text = error;
            }

        }
    }
}