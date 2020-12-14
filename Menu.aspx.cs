using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiciEs
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibAcc_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Authorization.aspx");
        }

        protected void ibtGame_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("GameMenu.aspx");
        }

        protected void ibtTourn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Organization.aspx");
        }

        protected void lbGame_Click(object sender, EventArgs e)
        {
            Response.Redirect("GameMenu.aspx");
        }

        protected void lbTourn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Organization.aspx");
        }

        protected void lbMark_Click(object sender, EventArgs e)
        {
            Response.Redirect("TicketSale.aspx");
        }

        protected void IbtMarketing_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("TicketSale.aspx");
        }

        protected void ibTables_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Tables.aspx");
        }

        protected void LbTable_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tables.aspx");
        }
    }
}