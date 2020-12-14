using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiciEs
{
    public partial class TournMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void infoTrn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InfoTourn.aspx");
        }

        protected void OrgTrn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Organization.aspx");
        }

        protected void btBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}