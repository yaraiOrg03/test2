using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel_groupB
{
    public partial class SC202_user_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LOGIN_USER"] != null)
            {
                name_in.Text = "ようこそ、" + Session["LOGIN_USER"].ToString();
            }
            else
            {
                name_in.Text = "";
                name_in.Text = "";
                System.Diagnostics.Debug.WriteLine("[LOG] : セッション切れ　ログイン画面に移動する");
                Response.Redirect("SC200_login_page.aspx", false);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC203_user_change.aspx", false);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC204-1_hotel_reservation.aspx", false);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC205_hotel_change.aspx", false);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SC206_hotel_comment.aspx", false);
        }
    }
}