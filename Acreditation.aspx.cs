using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace AmiciEs
{
    public partial class Acreditation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void BtForm_Click(object sender, EventArgs e)
        {
            
            lflfl.Text = tbTur.Text;
            lblSurname.Text = tbSurn.Text;
            lblNameee.Text = tbName.Text;
            lblMiddleName.Text = tbMiddle.Text;
            Label1.Text = "Действует до: " + tbDate.Text;
            idStatus.Text = DlStatus.Text;
        }
    }
}