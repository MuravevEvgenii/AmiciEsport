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
    public partial class InfoTourn : System.Web.UI.Page


    {
        private string QR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            QR = DBConnect.qrTournament;
            if (!IsPostBack)
            {
                //bindgrid();
                gvFill(QR);
               lbFill();
               lbFill1();
               lbFill2();
               lbFill3();
                lbFill4();
                lbFill5();
            }
            if (!File.Exists("itextsharp.dll"))
            {
                string script2 = "alert('Все динамические библиотеки установлены');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "MessageBox", script2, true);

            }
        }



        //protected void bindgrid()
        //{
        //    //DBConnect.Open();
        //    SqlDataAdapter da = new SqlDataAdapter("select * from Archive", QR);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    gvTurnir.DataSource = dt;
        //    gvTurnir.DataBind();
        //   // DBConnect.Close();

        //}
        public override void VerifyRenderingInServerForm(Control control)
        {
           // Verify that the control is rendered
        }

        private void lbFill()
        {
            DBConnect connection = new DBConnect();
            connection.TournamentFill();
            lbReglament.DataSource = connection.dtTournament.DefaultView;
            lbReglament.DataValueField = "Reglament_ID";
            lbReglament.DataTextField = "Reglament";
            lbReglament.DataBind();
        }

        private void lbFill1()
        {
            DBConnect connection = new DBConnect();
            connection.TournamentFill();
            lbArena.DataSource = connection.dtTournament.DefaultView;
            lbArena.DataValueField = "Arena_ID";
            lbArena.DataTextField = "Arena";
            lbArena.DataBind();
        }

        private void lbFill2()
        {
            DBConnect connection = new DBConnect();
            connection.TournamentFill();
            lbPersonal.DataSource = connection.dtTournament.DefaultView;
            lbPersonal.DataValueField = "Personal_ID";
            lbPersonal.DataTextField = "Pers";
            lbPersonal.DataBind();
        }


        private void lbFill3()
        {
            DBConnect connection = new DBConnect();
            connection.TournamentFill();
            lbFormat.DataSource = connection.dtTournament.DefaultView;
            lbFormat.DataValueField = "Format_ID";
            lbFormat.DataTextField = "Format";
            lbFormat.DataBind();
        }


        private void lbFill4()
        {
            DBConnect connection = new DBConnect();
            connection.TournamentFill();
            lbDiscipline.DataSource = connection.dtTournament.DefaultView;
            lbDiscipline.DataValueField = "Discipline_ID";
            lbDiscipline.DataTextField = "Discipline";
            lbDiscipline.DataBind();
        }

        private void lbFill5()
        {
            DBConnect connection = new DBConnect();
            connection.TournamentFill();
            lbCity.DataSource = connection.dtTournament.DefaultView;
            lbCity.DataValueField = "City_ID";
            lbCity.DataTextField = "City";
            lbCity.DataBind();
        }

        private void gvFill(string QR)
            {
                sdsTurnir.ConnectionString =
                    DBConnect.connection.ConnectionString.ToString();
                sdsTurnir.SelectCommand = QR;
                sdsTurnir.DataSourceMode = SqlDataSourceMode.DataReader;
                gvTurnir.DataSource = sdsTurnir;
                gvTurnir.DataBind();
            }

            protected void gvTurnir_SelectedIndexChanged1(object sender, EventArgs e)
            {
                GridViewRow row = gvTurnir.SelectedRow;
                tbNameTurn.Text = row.Cells[2].Text.ToString();
                tbNumb.Text = row.Cells[3].Text.ToString();
                tbDate.Text = row.Cells[4].Text.ToString();
                tbMoney.Text = row.Cells[5].Text.ToString();
                lbReglament.Text = row.Cells[6].Text.ToString();
                lbFormat.Text = row.Cells[8].Text.ToString();
                lbArena.Text = row.Cells[10].Text.ToString();
                lbCity.Text = row.Cells[12].Text.ToString();
                lbDiscipline.Text = row.Cells[14].Text.ToString();
                lbPersonal.Text = row.Cells[16].Text.ToString();
                //  tbSeriaNom.Text = row.Cells[7].Text.ToString();
                DBConnect.IDrecord = Convert.ToInt32(row.Cells[1].Text.ToString());

            } 
               

        //Скрытые столбцы в таблице
        protected void gvTurnir_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            e.Row.Cells[1].Visible = false;
            e.Row.Cells[6].Visible = false;
            e.Row.Cells[8].Visible = false;
            e.Row.Cells[10].Visible = false;
            e.Row.Cells[12].Visible = false;
            e.Row.Cells[14].Visible = false;
            e.Row.Cells[16].Visible = false;

        }
        //Кнопка добавить
        protected void btInsert_Click(object sender, EventArgs e)
        {

            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Tournament] ([Name_Tournament], " +
                "[Numb_Teams], [Date_Tournament], [Money_Tournament], [Reglament_ID], [Format_ID], [Arena_ID], [City_ID], [Discipline_ID], [Personal_ID]) values('" + tbNameTurn.Text + "','"
               + tbNumb.Text + "','" + tbDate.Text + "', '" + tbMoney.Text + "', '" + lbReglament.Text + "', '" + lbFormat.Text + "', '" + lbArena.Text + "', '" + lbCity.Text + "', '" + lbDiscipline.Text + "', '" + lbPersonal.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
        }
        //Кнопка обновить
        protected void btUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "update [dbo].[Tournament] set " +
                "[Name_Tournament] ='" + tbNameTurn.Text + "'," +
                 "[Numb_Teams] ='" + tbNumb.Text + "'," +
                 "[Date_Tournament] ='" + tbDate.Text + "'," +
                 "[Money_Tournament] ='" + tbMoney.Text + "'," +
                 "[Reglament_ID] ='" + lbReglament.Text + "'," +
                 "[Format_ID] ='" + lbFormat.Text + "'," +
                 "[Arena_ID] ='" + lbArena.Text + "'," +
                 "[City_ID] ='" + lbCity.Text + "'," +
                 "[Discipline_ID] ='" + lbDiscipline.Text + "'," +
                 "[Personal_ID] ='" + lbPersonal.Text + "'" +
                 " where ID_Tournament =" + DBConnect.IDrecord + "";

            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
        }

        protected void btDelete_Click(object sender, EventArgs e)
        {

            switch (System.Windows.Forms.MessageBox.Show(
                   "Удалить выбранную запись?",
                   "Турнир удален", System.Windows.Forms.MessageBoxButtons.YesNo,
                   System.Windows.Forms.MessageBoxIcon.Question))

            {
                case System.Windows.Forms.DialogResult.Yes:
                    SqlCommand command = new SqlCommand("", DBConnect.connection);
                    command.CommandText = "delete from [dbo].[Tournament] " +
                 "where ID_Tournament= " + DBConnect.IDrecord + "";
                    DBConnect.connection.Open();
                    command.ExecuteNonQuery();
                    DBConnect.connection.Close();
                    gvFill(QR);
                    break;
            }
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in gvTurnir.Rows)
            {
                if (row.Cells[2].Text.Equals(tbSearch.Text)
                    || row.Cells[3].Text.Equals(tbSearch.Text)
                    || row.Cells[4].Text.Equals(tbSearch.Text)
                    || row.Cells[5].Text.Equals(tbSearch.Text)
                 //   || row.Cells[6].Text.Equals(tbSearch.Text)
                    || row.Cells[7].Text.Equals(tbSearch.Text)
                 //   || row.Cells[8].Text.Equals(tbSearch.Text)
                    || row.Cells[9].Text.Equals(tbSearch.Text)
                //    || row.Cells[10].Text.Equals(tbSearch.Text)
                    || row.Cells[11].Text.Equals(tbSearch.Text)
                 //   || row.Cells[12].Text.Equals(tbSearch.Text)
                    || row.Cells[13].Text.Equals(tbSearch.Text)
                 //   || row.Cells[14].Text.Equals(tbSearch.Text)
                    || row.Cells[15].Text.Equals(tbSearch.Text)
                //    || row.Cells[16].Text.Equals(tbSearch.Text)
                    || row.Cells[17].Text.Equals(tbSearch.Text))
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

        protected void btFiltr_Click(object sender, EventArgs e)
        {
            string newQr = QR + " where [Name_Tournament] like '%" + tbSearch.Text + "%' or " +
                 "[Numb_Teams] like '%" + tbSearch.Text + "%' or " +
                 "[Date_Tournament] like '%" + tbSearch.Text + "%' or " +
                 "[Money_Tournament] like '%" + tbSearch.Text + "%' or " +
                 "[Reglament_ID] like '%" + tbSearch.Text + "%' or " +
                 "[Format_ID] like '%" + tbSearch.Text + "%' or " +
                 "[Arena_ID] like '%" + tbSearch.Text + "%' or " +
                 "[City_ID] like '%" + tbSearch.Text + "%' or " +
                 "[Discipline_ID] like '%" + tbSearch.Text + "%' or " +
                 " [Personal_ID] like '%" + tbSearch.Text + "%'";
            gvFill(newQr);
        }

        protected void btHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btExcel_Click(object sender, ImageClickEventArgs e)
        {
            // выбираем таблицу и источник данных
            GridView gv = new GridView();
            GridView gridView = gvTurnir;
            DBConnect.connection.Open();
            gv.DataSource = sdsTurnir;
            DBConnect.connection.Close();
            gvFill(QR);

            gv.DataBind();

            Response.ClearContent();
            Response.Buffer = true;
            gvTurnir.AllowPaging = false;
            Response.AddHeader("content-disposition", "attachment; filename=" + DateTime.Now.ToShortDateString() + ".xls");
            Response.ContentType = "application/vnd.ms-excel";
            Response.ContentEncoding = System.Text.Encoding.Unicode;
            Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            gv.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

        }

        protected void tbWord_Click(object sender, ImageClickEventArgs e)
        {

            //GridView gv = new GridView();
            //GridView gridView = gvTurnir;
            //DBConnect.connection.Open();
            //gv.DataSource = sdsTurnir;
            //DBConnect.connection.Close();
            //gvFill(QR);

            //gv.DataBind();

           
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.AddHeader("content-disposition", "attachment;filename= Tur.docx");
            Response.ContentType = "application/ms-word";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            gvTurnir.AllowPaging = false;
            gvTurnir.DataBind();
            gvTurnir.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }

        
    }
}