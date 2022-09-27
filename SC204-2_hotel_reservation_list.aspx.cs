using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC204_2_hotel_reservation_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, CommandEventArgs e)
        {
            string hotel_id = e.CommandArgument.ToString();
            Session["hotel_id"] = hotel_id;


            


            //object Data = ListView_search_hotel.SelectItem(ListView_search_hotel.SelectedIndex);


            Response.Redirect("SC204-3_hotel_reservation_plan.aspx", false);
        }

       
    }
}