using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiciEs
{
    public partial class MarketingMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btTicket_Click(object sender, EventArgs e)
        {
            Response.Redirect("TicketSale.aspx");
        }

        protected void ibTicket_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("TicketSale.aspx");
        }

        protected void btTick_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ticket.aspx");
        }
    }
}