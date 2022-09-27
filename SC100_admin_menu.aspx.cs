using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC100_admin_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC101-1_user_change.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC102-1_hotel_register.aspx", false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC103_hotel_register.aspx", false);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC105_hotel_reservationlist.aspx", false);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SC101-1_user_change.aspx", false);
        }

        protected void btn_admin_hotel_list_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC102-1_hotel_register.aspx", false);
        }

        protected void btn_admin_hotel_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC103_hotel_register.aspx", false);
        }

        protected void btn_admin_reservation_hotel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC105_hotel_reservationlist.aspx", false);
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("SC106-1_plan_list.aspx", false);
        }
    }
}