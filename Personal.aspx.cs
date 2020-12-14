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
    public partial class Personal : System.Web.UI.Page
    {
        private string QR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            QR = DBConnect.qrPersonal;
            if (!IsPostBack)
            {
                gvFill(QR);
                lbFill();
                //lbFill1();
                //lbFill2();
                //lbFill3();
                //lbFill4();
                //lbFill5();
            }

        }

        private void gvFill(string QR)
        {
            sdsPersonal.ConnectionString =
                DBConnect.connection.ConnectionString.ToString();
            sdsPersonal.SelectCommand = QR;
            sdsPersonal.DataSourceMode = SqlDataSourceMode.DataReader;
            gvPersonal.DataSource = sdsPersonal;
            gvPersonal.DataBind();
        }

        private void lbFill()
        {
            DBConnect connection = new DBConnect();
            connection.PersonalFill();
            lbDolz.DataSource = connection.dtPersonal.DefaultView;
            lbDolz.DataValueField = "Dolzhnost_ID";
            lbDolz.DataTextField = "Dolz";
            lbDolz.DataBind();
        }

        protected void gvPersonal_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = gvPersonal.SelectedRow;
            tbSurname.Text = row.Cells[2].Text.ToString();
            tbName.Text = row.Cells[3].Text.ToString();
            tbMiddleName.Text = row.Cells[4].Text.ToString();
            tbLogin.Text = row.Cells[5].Text.ToString();
            tbPass.Text = row.Cells[6].Text.ToString();
            lbDolz.Text = row.Cells[7].Text.ToString();
         
            //  tbSeriaNom.Text = row.Cells[7].Text.ToString();
            DBConnect.IDrecord = Convert.ToInt32(row.Cells[1].Text.ToString());
        }

        protected void gvPersonal_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[1].Visible = false;
            //e.Row.Cells[6].Visible = false;
            e.Row.Cells[7].Visible = false;
            //e.Row.Cells[10].Visible = false;
            //e.Row.Cells[12].Visible = false;
            //e.Row.Cells[14].Visible = false;
            //e.Row.Cells[16].Visible = false;
        }

        protected void ibAcc_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Authorization.aspx");
        }

        protected void btInsert_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Personal] ([Surname_Personal], " +
                "[Name_Personal], [MiddleName_Personal], [Login_Personal], [Password_Personal], [Dolzhnost_ID]) values('" + tbSurname.Text + "','"
               + tbName.Text + "','" + tbMiddleName.Text + "', '" + tbLogin.Text + "', '" + tbPass.Text + "', '" + lbDolz.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "update [dbo].[Personal] set " +
                "[Surname_Personal] ='" + tbSurname.Text + "'," +
                 "[Name_Personal] ='" + tbName.Text + "'," +
                 "[MiddleName_Personal] ='" + tbMiddleName.Text + "'," +
                 "[Login_Personal] ='" + tbLogin.Text + "'," +
                 "[Password_Personal] ='" + tbPass.Text + "'," +
                 "[Dolzhnost_ID] ='" + lbDolz.Text + "'" +
                 " where ID_Personal =" + DBConnect.IDrecord + "";

            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {
            switch (System.Windows.Forms.MessageBox.Show(
                   "Удалить выбранную запись?",
                   "Сотрудник удален", System.Windows.Forms.MessageBoxButtons.YesNo,
                   System.Windows.Forms.MessageBoxIcon.Question))

            {
                case System.Windows.Forms.DialogResult.Yes:
                    SqlCommand command = new SqlCommand("", DBConnect.connection);
                    command.CommandText = "delete from [dbo].[Personal] " +
                 "where ID_Personal= " + DBConnect.IDrecord + "";
                    DBConnect.connection.Open();
                    command.ExecuteNonQuery();
                    DBConnect.connection.Close();
                    gvFill(QR);
                    break;
            }
        }

        protected void btFiltr_Click(object sender, EventArgs e)
        {
            string newQr = QR + " where [Surname_Personal] like '%" + tbSearch.Text + "%' or " +
                "[Name_Personal] like '%" + tbSearch.Text + "%' or " +
                "[MiddleName_Personal] like '%" + tbSearch.Text + "%' or " +
                "[Login_Personal] like '%" + tbSearch.Text + "%' or " +
                "[Password_Personal] like '%" + tbSearch.Text + "%' or " +
                " [Dolzhnost_ID] like '%" + tbSearch.Text + "%'";
            gvFill(newQr);
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvPersonal.Rows)
            {
                if (row.Cells[2].Text.Equals(tbSearch.Text)
                    || row.Cells[3].Text.Equals(tbSearch.Text)
                    || row.Cells[4].Text.Equals(tbSearch.Text)
                    || row.Cells[5].Text.Equals(tbSearch.Text)
                    || row.Cells[6].Text.Equals(tbSearch.Text)
                    //|| row.Cells[7].Text.Equals(tbSearch.Text)
                    || row.Cells[8].Text.Equals(tbSearch.Text))
                    //|| row.Cells[9].Text.Equals(tbSearch.Text)
                    //|| row.Cells[10].Text.Equals(tbSearch.Text)
                    //|| row.Cells[11].Text.Equals(tbSearch.Text)
                    //|| row.Cells[12].Text.Equals(tbSearch.Text)
                    //|| row.Cells[13].Text.Equals(tbSearch.Text)
                    //   || row.Cells[14].Text.Equals(tbSearch.Text)
                //    || row.Cells[15].Text.Equals(tbSearch.Text)
                ////    || row.Cells[16].Text.Equals(tbSearch.Text)
                //    || row.Cells[17].Text.Equals(tbSearch.Text))
                    row.BackColor = System.Drawing.Color.Navy;
                //row.ForeColor = System.Drawing.Color.Azure;
                else
                    row.BackColor = System.Drawing.Color.White;
            }
        }

        protected void tbCancel_Click(object sender, EventArgs e)
        {
            tbSearch.Text = "";
            btSearch_Click(sender, e);
            gvFill(QR);
        }
    }
}