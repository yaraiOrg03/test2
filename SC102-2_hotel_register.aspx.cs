using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC102_2_hotel_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowindex = GridView1.SelectedIndex;

            object tmp_hotelid = GridView1.Rows[rowindex].Cells[0].Text;

            Session["宿ID"] = Convert.ToInt32(tmp_hotelid);

            Response.Redirect("SC104_hotelplan_register.aspx", false);
        }
    }
}