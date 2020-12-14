using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmiciEs
{
    public partial class Authorization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btAuth_Click(object sender, EventArgs e)
        {
            DBConnect connection = new DBConnect();
            connection.dbEnter(tbLogin.Text, tbPass.Text);
            switch (DBConnect.IDuser)
            {
                case (0):
                    tbLogin.BackColor = System.Drawing.Color.Red;
                    tbPass.BackColor = System.Drawing.Color.Red;
                    lblTitle.Text = "Введён неверный логин или пароль!";
                    tbPass.Text = "";
                    tbLogin.Text = "";
                    break;
                default:
                    Response.Redirect("Menu.aspx");
                    break;
            }
        }

        protected void lbtReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registr.aspx");
        }
    }
}