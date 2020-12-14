using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;

namespace AmiciEs
{
    public partial class TicketSale : System.Web.UI.Page
    {
        private string QR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            QR = DBConnect.qrTournament;
            if (!IsPostBack)
            {
                gvFill(QR);
                lbFill();
               
            }

        }

        private void gvFill(string qr) //заполнение таблицы
        {
            sdsTicket.ConnectionString =
                DBConnect.connection.ConnectionString;
            sdsTicket.SelectCommand = qr;
            sdsTicket.DataSourceMode = SqlDataSourceMode.DataReader;

        }

        private void lbFill()
        {
            DBConnect connection = new DBConnect();
            connection.TicketFill();
            lbTurn.DataSource = connection.dtTicket.DefaultView;
            lbTurn.DataValueField = "Tournament_ID";
            lbTurn.DataTextField = "Turik";
            lbTurn.DataBind();
        }

        protected void ibAcc_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Authorization.aspx");
        }

        protected void btConfirm_Click(object sender, EventArgs e)
        {
            //SqlCommand command = new SqlCommand("", DBConnect.connection);
            //command.CommandText = "Insert into [dbo].[Ticket] ([Price_Ticket], " +
            //    "[Category_Ticket], [Tournament_ID]) values('" + tbCatA.Text + "','"
            //   + dlCatA.Text + "', '" + lbTurn.Text + "')";
            //DBConnect.connection.Open();
            //command.ExecuteNonQuery();
            //DBConnect.connection.Close();
            //gvFill(QR);
            Response.Redirect("Ticket.aspx");
        }


        protected void btA_Click(object sender, ImageClickEventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Ticket] ([Price_Ticket], " +
                "[Category_Ticket], [Tournament_ID]) values('" + tbCatA.Text + "','"
               + LblCatA.Text + "', '" + lbTurn.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
            tbCatA.Enabled = false;

        }

        protected void btB_Click(object sender, ImageClickEventArgs e)
        {

            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Ticket] ([Price_Ticket], " +
                "[Category_Ticket], [Tournament_ID]) values('" + tbCatB.Text + "','"
               + LblCatB.Text + "', '" + lbTurn.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
            tbCatB.Enabled = false;

        }

        protected void btC_Click(object sender, ImageClickEventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Ticket] ([Price_Ticket], " +
                "[Category_Ticket], [Tournament_ID]) values('" + tbCatC.Text + "','"
               + LblCatC.Text + "', '" + lbTurn.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
            tbCatC.Enabled = false;

        }

        protected void btVip_Click(object sender, ImageClickEventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Ticket] ([Price_Ticket], " +
                "[Category_Ticket], [Tournament_ID]) values('" + tbCatVip.Text + "','"
               + LblCatVip.Text + "', '" + lbTurn.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
            tbCatVip.Enabled = false;

        }
    }
}