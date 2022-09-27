using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC204_1_hotel_reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (YoyakuChecker.isOverFiveYoyaku(Session["LOGIN_USER"].ToString()))
            {
                lbl_debug.Text = "※６件目以降の予約をすることはできません";
                btn_user_hotel_search_list.Enabled = false;
            }
            else
            {
                lbl_debug.Text = "";
            }

            string today = DateTime.Now.ToString("yyyy/MM/dd");
            RangeValidator1.MinimumValue = today;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["prefecture"] = dropdownlist_search_prefecture.Text.ToString();
            Session["room"] = dropdownlist_search_room.Text.ToString();
            Session["inday"] = txb_search_inday.Text.ToString();
            Session["outday"] = txb_search_outday.Text.ToString();

            Response.Redirect("SC204-2_hotel_reservation_list.aspx", false);
        }

        protected void txb_search_inday_TextChanged(object sender, EventArgs e)
        {


        }

        protected void dropdownlist_search_prefecture_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dropdownlist_search_room_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}