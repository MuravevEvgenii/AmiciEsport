using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AmiciEs
{
    public partial class Organization : System.Web.UI.Page
    {
       
              private string QR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            QR = DBConnect.qrTournament;
            if (!IsPostBack)
            {
                gvFill(QR);
                lbFill();
                lbFill1();
                lbFill2();
                lbFill3();
                lbFill4();
                lbFill5();
            }
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

        private void gvFill(string qr) //заполнение таблицы
        {
            sdsTurnir.ConnectionString =
                DBConnect.connection.ConnectionString;
            sdsTurnir.SelectCommand = qr;
            sdsTurnir.DataSourceMode = SqlDataSourceMode.DataReader;

        }

        protected void Btorg_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Tournament] ([Name_Tournament], " +
                "[Numb_Teams], [Date_Tournament], [Money_Tournament], [Reglament_ID], [Format_ID], [Arena_ID], [City_ID], [Discipline_ID], [Personal_ID]) values('" + tbNameTurn.Text + "','"
               + tbNumb.Text + "','" + tbDate.Text + "', '" + tbMoney.Text + "', '" + lbReglament.Text + "', '" + lbFormat.Text + "', '" + lbArena.Text + "', '" + lbCity.Text + "', '" + lbDiscipline.Text + "', '" + lbPersonal.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            gvFill(QR);
            Response.Redirect("Info.aspx");
        }

        protected void btHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}