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
using System.Drawing;

namespace AmiciEs
{
    public partial class Ticket : System.Web.UI.Page
    {
        private string QR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            QR = DBConnect.qrTicket;
            if (!IsPostBack)
            {
                gvFill(QR);
                lbFill();
            }
         }

        private void lbFill()
        {
            DBConnect connection = new DBConnect();
            connection.TicketFill();
            LbTourn.DataSource = connection.dtTicket.DefaultView;
            LbTourn.DataValueField = "Tournament_ID";
            LbTourn.DataTextField = "Turik";
            LbTourn.DataBind();
        }

        private void gvFill(string QR)
        {
            sdsTicket.ConnectionString =
                DBConnect.connection.ConnectionString.ToString();
            sdsTicket.SelectCommand = QR;
            sdsTicket.DataSourceMode = SqlDataSourceMode.DataReader;
            gvTicket.DataSource = sdsTicket;
            gvTicket.DataBind();
        }

        protected void gvTicket_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void gvTicket_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            switch (System.Windows.Forms.MessageBox.Show(
                   "Удалить выбранную запись?",
                   "Билет удален", System.Windows.Forms.MessageBoxButtons.YesNo,
                   System.Windows.Forms.MessageBoxIcon.Question))

            {
                case System.Windows.Forms.DialogResult.Yes:
                    SqlCommand command = new SqlCommand("", DBConnect.connection);
                    command.CommandText = "delete from [dbo].[Ticket] " +
                 "where ID_Ticket= " + DBConnect.IDrecord + "";
                    DBConnect.connection.Open();
                    command.ExecuteNonQuery();
                    DBConnect.connection.Close();
                    gvFill(QR);
                    break;
            }
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "update [dbo].[Ticket] set " +
                "[Category_Ticket] ='" + dlCateg.Text + "'," +
                 "[Price_Ticket] ='" + tbNameTurn.Text + "'," +
                 "[Tournament_ID] ='" + LbTourn.Text + "'" +
                 " where ID_Tournament =" + DBConnect.IDrecord + "";

            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
        }

        protected void btInsert_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Ticket] ([Category_Ticket], " +
                "[Price_Ticket], [Tournament_ID]) values('" + dlCateg.Text + "','"
               + tbNameTurn.Text + "', '" + LbTourn.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvTicket.Rows)
            {
                if (row.Cells[2].Text.Equals(tbSearch.Text)
                    || row.Cells[3].Text.Equals(tbSearch.Text)
                    || row.Cells[4].Text.Equals(tbSearch.Text)
                    //|| row.Cells[5].Text.Equals(tbSearch.Text)
                    //   || row.Cells[6].Text.Equals(tbSearch.Text)
                //    || row.Cells[7].Text.Equals(tbSearch.Text)
                //    //   || row.Cells[8].Text.Equals(tbSearch.Text)
                //    || row.Cells[9].Text.Equals(tbSearch.Text)
                ////    || row.Cells[10].Text.Equals(tbSearch.Text)
                //    || row.Cells[11].Text.Equals(tbSearch.Text)
                //    //   || row.Cells[12].Text.Equals(tbSearch.Text)
                //    || row.Cells[13].Text.Equals(tbSearch.Text)
                //    //   || row.Cells[14].Text.Equals(tbSearch.Text)
                //    || row.Cells[15].Text.Equals(tbSearch.Text)
                ////    || row.Cells[16].Text.Equals(tbSearch.Text)
                 || row.Cells[5].Text.Equals(tbSearch.Text))
                   row.BackColor = System.Drawing.Color.Navy;
               // row.ForeColor = System.Drawing.Color.Azure;
                else
                    row.BackColor = System.Drawing.Color.White;
            }
        }

        protected void btFiltr_Click(object sender, EventArgs e)
        {
            string newQr = QR + " where [Category_Ticket] like '%" + tbSearch.Text + "%' or " +
                "[Price_Ticket] like '%" + tbSearch.Text + "%' or " +
                " [Tournament_ID] like '%" + tbSearch.Text + "%'";
            gvFill(newQr);
        }

        protected void tbCancel_Click(object sender, EventArgs e)
        {
            tbSearch.Text = "";
            btSearch_Click(sender, e);
            gvFill(QR);
        }

        protected void ibSet_Click(object sender, ImageClickEventArgs e)
        {
            lbCat.Font.Size = 19;
            lbPrice.Font.Size = 19;
            LblTourn.Font.Size = 19;
            btInsert.Font.Size = 19;
            btUpdate.Font.Size = 19;
            btDelete.Font.Size = 19;
            gvTicket.Font.Size = 19;

            lbCat.BackColor = Color.Red;
            lbPrice.BackColor = Color.Red;
            LblTourn.BackColor = Color.Red;
            btInsert.BackColor = Color.Red;
            btUpdate.BackColor = Color.Red;
            btDelete.BackColor = Color.Red;
            gvTicket.BackColor = Color.Red;
        }

        protected void ibAcc_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Authorization.aspx");
        }

        protected void btHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}