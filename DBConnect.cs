using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace AmiciEs
{
    public class DBConnect
    {
        public static SqlConnection connection = new SqlConnection(
           "Data Source = ZHENE4KA; " +
           " Initial Catalog = Amici_DB; Integrated Security = true;");


        public DataTable dtColor_Product = new DataTable("Color_Product");
        public DataTable dtType_Product = new DataTable("Type_Product");
        public DataTable dtProduct = new DataTable("Product");
        public DataTable dtCountry = new DataTable("Country");
        public DataTable dtCity = new DataTable("City");
        public DataTable dtArena = new DataTable("Arena");
        public DataTable dtReglament = new DataTable("Reglament");
        public DataTable dtFormat = new DataTable("Format");
        public DataTable dtType_Ticket = new DataTable("Type_Ticket");
        public DataTable dtTicket = new DataTable("Ticket");
        public DataTable dtCheck = new DataTable("Check");
        public DataTable dtCheck_Product = new DataTable("Check_Product");
        public DataTable dtCheck_Ticket = new DataTable("Check_Ticket");
        public DataTable dtDiscipline = new DataTable("Discipline");
        public DataTable dtPlayer = new DataTable("Player");
        public DataTable dtTeam = new DataTable("Team");
        public DataTable dtDolzhnost = new DataTable("Dolzhnost");
        public DataTable dtRole = new DataTable("Role");
        public DataTable dtPersonal = new DataTable("Personal");
        public DataTable dtTournament = new DataTable("Tournament");
        public static string qrColor_Product = "SELECT [ID_Color_Product], [Name_Color] FROM [dbo].[Color_Product]",
            qrType_Product = "SELECT [ID_Type_Product], [Name_Product] FROM [dbo].[Type_Product]",
            qrProduct = "SELECT [ID_Product], [Type_Product_ID], [Color_Product_ID], [Price] FROM [dbo].[Product]",
            qrCountry = "SELECT [ID_Name_Country], [Name_Country] FROM [dbo].[Country]",
            qrCity = "SELECT [ID_City], [City], [Name_Country_ID] FROM [dbo].[City]",
            qrArena = "SELECT [ID_Arena], [Name_Arena], [Numb_Seats] FROM [dbo].[Arena]",
            qrReglament = "SELECT [ID_Reglament], [Name_Reglament] FROM [dbo].[Reglament]",
            qrFormat = "SELECT [ID_Format], [Name_Format] FROM [dbo].[Format]",
            qrType_Ticket = "SELECT [ID_Type_Ticket], [Name_Type_Ticket] FROM [dbo].[Type_Ticket]",
            qrTicket = "SELECT [ID_Ticket], [Price_Ticket], [Category_Ticket],  [Tournament_ID], [Name_Tournament]+' | '+[Date_Tournament] As \"Turik\" FROM [dbo].[Ticket]" +

            "INNER JOIN [dbo].[Tournament] ON [dbo].[Ticket].[Tournament_ID] = [dbo].[Tournament].[ID_Tournament]",


            qrCheck = "SELECT [ID_Check], [Date_Check], [Time_Check], [Number_Check] FROM [dbo].[Check]",
            qrCheck_Product = "SELECT [ID_Check_Product], [Product_ID], [Check_ID] FROM [dbo].[Check_Product]",
            qrCheck_Ticket = "SELECT [ID_Check_Ticket], [Ticket_ID], [Check_ID] FROM [dbo].[Check_Ticket]",
            qrDiscipline = "SELECT [ID_Discipline], [Name_Discipline], [Number_Players] FROM [dbo].[Discipline]",
            qrPlayer = "SELECT [ID_Player], [Surname_Player], [Name_Player], [MiddleName_Player], [Nickname_Player], [Role_in_Team], [Discipline_ID] FROM [dbo].[Player]",
            qrTeam = "SELECT [ID_Team], [Discipline_ID], [Player_ID] FROM [dbo].[Team]",
            qrDolzhnost = "SELECT [ID_Dolzhnost], [Name_Dolzhnost] FROM [dbo].[Dolzhnost]",
            qrRole = "SELECT [ID_Role], [Name_Role], [Organization_Tournament], [Add_Team], [Update_Team], [Delete_Team], [Add_Product], [Update_Product], [Delete_Product] FROM [dbo].[Role]",
            qrPersonal = "SELECT [ID_Personal], [Surname_Personal], [Name_Personal], [MiddleName_Personal], [Login_Personal], [Password_Personal], [Dolzhnost_ID], [Name_Dolzhnost] As \"Dolz\" FROM [dbo].[Personal]" +
             "INNER JOIN [dbo].[Dolzhnost] ON [dbo].[Personal].[Dolzhnost_ID] = [dbo].[Dolzhnost].[ID_Dolzhnost]",

            qrTournament = "SELECT [ID_Tournament], [Name_Tournament] As \"Имя турнира\", [Numb_Teams] As \"Количество\", [Date_Tournament] As \"Дата\", [Money_Tournament] As \"Призовой фонд\", [Reglament_ID], [Name_Reglament] As \"Reglament\", [Format_ID],  [Name_Format]  As \"Format\", [Arena_ID], [Name_Arena] As \"Arena\", [City_ID], [City] As \"City\", [Discipline_ID], [Name_Discipline] As \"Discipline\", [Personal_ID], [Surname_Personal]+' '+[Name_Personal] As \"Pers\" FROM [dbo].[Tournament]" +

             "INNER JOIN [dbo].[Reglament] ON [dbo].[Tournament].[Reglament_ID] = [dbo].[Reglament].[ID_Reglament]" +
            "INNER JOIN [dbo].[Format] ON [dbo].[Tournament].[Format_ID] = [dbo].[Format].[ID_Format]" +
            "INNER JOIN [dbo].[Arena] ON [dbo].[Tournament].[Arena_ID] = [dbo].[Arena].[ID_Arena]" +
            "INNER JOIN [dbo].[City] ON [dbo].[Tournament].[City_ID] = [dbo].[City].[ID_City]" +
            "INNER JOIN [dbo].[Discipline] ON [dbo].[Tournament].[Discipline_ID] = [dbo].[Discipline].[ID_Discipline]" +
            "INNER JOIN [dbo].[Personal] ON [dbo].[Tournament].[Personal_ID] = [dbo].[Personal].[ID_Personal]";

        private SqlCommand command = new SqlCommand("", connection);
        public static Int32 IDrecord, IDuser;


        public void dbEnter(string login, string password)
        {
            command.CommandText = "SELECT count(*) FROM [dbo].[Personal]" +
                "where [Login_Personal] = '" + login + "' and [Password_Personal] = '" +
                password + "'";
            connection.Open();
            IDuser = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();
        }

        private void dtFill(DataTable table, string query)
        {
            command.CommandText = query;
            connection.Open();
            table.Load(command.ExecuteReader());
            connection.Close();
        }

        public void Color_ProductFill()
        {
            dtFill(dtColor_Product, qrColor_Product);
        }
        public void Type_ProductFill()
        {
            dtFill(dtType_Product, qrType_Product);
        }
        public void ProductFill()
        {
            dtFill(dtProduct, qrProduct);
        }
        public void CountryFill()
        {
            dtFill(dtCountry, qrCountry);
        }
        public void CityFill()
        {
            dtFill(dtCity, qrCity);
        }
        public void ArenaFill()
        {
            dtFill(dtArena, qrArena);
        }
        public void ReglamentFill()
        {
            dtFill(dtReglament, qrReglament);
        }
        public void FormatFill()
        {
            dtFill(dtFormat, qrFormat);
        }
        public void Type_TicketFill()
        {
            dtFill(dtType_Ticket, qrType_Ticket);
        }
        public void TicketFill()
        {
            dtFill(dtTicket, qrTicket);
        }
        public void CheckFill()
        {
            dtFill(dtCheck, qrCheck);
        }
        public void Check_ProductFill()
        {
            dtFill(dtCheck_Product, qrCheck_Product);
        }
        public void Check_TicketFill()
        {
            dtFill(dtCheck_Ticket, qrCheck_Ticket);
        }
        public void DisciplineFill()
        {
            dtFill(dtDiscipline, qrDiscipline);
        }
        public void PlayerFill()
        {
            dtFill(dtPlayer, qrPlayer);
        }
        public void TeamFill()
        {
            dtFill(dtTeam, qrTeam);
        }
        public void DolzhnostFill()
        {
            dtFill(dtDolzhnost, qrDolzhnost);
        }
        public void RoleFill()
        {
            dtFill(dtRole, qrRole);
        }
        public void PersonalFill()
        {
            dtFill(dtPersonal, qrPersonal);
        }

        public void TournamentFill()
        {
            dtFill(dtTournament, qrTournament);
        }

        public Int32 Authorization(string User_Login, string User_Password)
        {
            Int32 ID_record = 0;
            command.CommandType = System.Data.CommandType.Text;
            command.CommandText = "select [dbo].[Personal]('"
                + User_Login + "','" + User_Password + "')";
            DBConnect.connection.Open();
            ID_record = Convert.ToInt32(command.ExecuteScalar().ToString());
            DBConnect.connection.Close();
            return (ID_record);
        }

    }
}