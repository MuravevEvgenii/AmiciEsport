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
using System.Windows.Forms;

namespace AmiciEs
{
    public partial class Registr : System.Web.UI.Page
    {

        private string QR = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            QR = DBConnect.qrPersonal;
            if (!IsPostBack) 
            {
                gvFill(QR);
            }
        }

        private void gvFill(string qr) //заполнение таблицы
        {
            sdsPersonal.ConnectionString =
                DBConnect.connection.ConnectionString;
            sdsPersonal.SelectCommand = qr;
            sdsPersonal.DataSourceMode = SqlDataSourceMode.DataReader;
        }

        protected void btAuth_Click(object sender, EventArgs e)
        {
           

            SqlCommand command = new SqlCommand("", DBConnect.connection);
            command.CommandText = "Insert into [dbo].[Personal] ([Surname_Personal]," +
                "[Name_Personal], [MiddleName_Personal], [Login_Personal], [Password_Personal])" +
                "values ('" + tbSurname.Text + "', '"
                   + tbName.Text + "','"
                   + tbMiddleName.Text + "','"
                   + tbLogin.Text + "','"
                   + tbPass.Text + "')";
            DBConnect.connection.Open();
            command.ExecuteNonQuery();
            DBConnect.connection.Close();
            //tbName.Text = "";
            //tbMiddleName.Text = "";
            //tbLogin.Text = "";
            //tbPass.Text = "";
          
            string script = "alert( Используйте логин и пароль для входа на сайт.');";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "MessageBox", script, true);
            MessageBox.Show("Используйте логин и пароль для авторизации");
            //if (String.IsNullOrEmpty(tbSurname.Text)
            //    || String.IsNullOrEmpty(tbName.Text)
            //    || String.IsNullOrEmpty(tbMiddleName.Text)
            //    || String.IsNullOrEmpty(tbLogin.Text)
            //    || String.IsNullOrEmpty(tbPass.Text)
            //    || String.IsNullOrEmpty(tbConfPass.Text))
            //    //(tbSurname.Text == "" 
            //    //|| tbName.Text == ""
            //    //|| tbMiddleName.Text == ""
            //    //|| tbLogin.Text == ""
            //    //|| tbPass.Text == ""
            //    //|| tbConfPass.Text == "")

            //{
            //    MessageBox.Show("Все поля обязательны к заполнению!");
            //    tbSurname.BackColor = System.Drawing.Color.Red;
            //    tbName.BackColor = System.Drawing.Color.Red;
            //    tbMiddleName.BackColor = System.Drawing.Color.Red;
            //    tbLogin.BackColor = System.Drawing.Color.Red;
            //    tbPass.BackColor = System.Drawing.Color.Red;
            //    tbConfPass.BackColor = System.Drawing.Color.Red;
            //}

            Response.Redirect("Authorization.aspx");

        }
    }
}