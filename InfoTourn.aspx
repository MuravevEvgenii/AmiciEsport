<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoTourn.aspx.cs" Inherits="AmiciEs.InfoTourn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Турниры</title>
    <link href="InfoTourn.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 85px;
            height: 59px;
        }
        .logo {
            height: 66px;
            width: 86px;
            top: 15px;
            left: -2px;
        }
        #InfoTurn {
            height: 614px;
            margin-top: 0px;
        }
           @media print{
           body{
               visibility:hidden;
               
           }


           .gvTurnir{
               visibility:visible;
               margin: 0;
               padding: 0;
                top: 1px;
                left: 1px;
           }

           .lbNameTurn{
               visibility:hidden;
           }

           .tbNameTurn{
               visibility:hidden;
           }
       }
        .dws-menu {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="InfoTurn" runat="server">
        <section style="background-color: #000000; height: 89px; margin-left: 0px; margin-top: 0px;">
          <asp:SqlDataSource ID="sdsTurnir" runat ="server"></asp:SqlDataSource>
          <nav class="dws-menu">
               <ul>
                   <li><a href="Menu.aspx">Меню</a></li>
                   <li><a href="#.aspx">Турниры</a>
                        <ul>
                           <li><a href="Organization.aspx">Организация турнира</a></li>
                            <li><a href="InfoTourn.aspx">Информация о турнирах</a></li>
                            <li><a href="Acreditation.aspx">Аккредитация</a></li>
                       </ul>
                   </li>

                   <li><a href="#">Маркетинг</a>
                       <ul>
                           <li><a href="TicketSale.aspx">Установить цену</a></li>
                            <li><a href="Ticket.aspx">Информация о билетах</a></li>
                            <li><a href="Acreditation.aspx">Аккредитация</a></li>
                       </ul>
                   </li>
                   <li><a href="Tables.aspx">Справочники</a>
                       <ul>
                           <li><a href="Personal.aspx">Сотрудники</a></li>
                            <li><a href="InfoTourn.aspx">Турниры</a></li>
                           <li><a href="Ticket.aspx">Билеты</a></li>
                       </ul>
                   </li>
                   <li><a href="Mail.aspx">Обратная связь</a></li>
                    <li><a href="AboutPage.aspx">О нас</a></li>
                   
               </ul>
           </nav>
            <img class="logo" src="Pict/Logo.png" /></section>
         <asp:ImageButton ID ="btHome" CssClass ="btHome" runat ="server" ImageUrl="~/Pict/BigHome.png" OnClick="btHome_Click" />
        <div>
             <asp:GridView ID ="gvTurnir" CssClass="gvTurnir" runat ="server" OnRowDataBound="gvTurnir_RowDataBound" OnSelectedIndexChanged="gvTurnir_SelectedIndexChanged1" GridLines="Vertical" Font-Size="15pt" BorderColor="#000066" BorderStyle="Solid"   >
                    <Columns> 
                        <asp:CommandField ShowSelectButton ="true" />
                             </Columns> 
                    </asp:GridView> 
           
            <asp:Label ID ="lbNameTurn" Text="Наименование турнира" runat ="server" CssClass ="lbNameTurn" Font-Names="MatchTV" ForeColor="Black" Font-Size="15pt"></asp:Label>
            <asp:TextBox ID ="tbNameTurn" CssClass="tbNameTurn" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
            <asp:Label ID ="lbNumbTms" CssClass="lbNumbTms" Text ="Количество команд" runat ="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="15pt"></asp:Label>
             <asp:TextBox ID ="tbNumb" CssClass="tbNumb" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
             <asp:Label ID ="lblDate" CssClass="lblDate" Text ="Дата проведения" runat ="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="15pt"></asp:Label>
            <asp:TextBox ID ="tbDate" CssClass="tbDate" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
             <asp:Label ID ="lblMoney" CssClass="lblMoney" Text ="Призовой фонд" runat ="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="15pt"></asp:Label>
            <asp:TextBox ID ="tbMoney" CssClass="tbMoney" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>

            <asp:Button ID="btInsert" CssClass ="btInsert" Text="Добавить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btInsert_Click" />
            <asp:Button ID="btUpdate" CssClass ="btUpdate" Text="Обновить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btUpdate_Click" />
            <asp:Button ID="btDelete" CssClass ="btDelete" Text="Удалить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btDelete_Click" />

            <asp:Button ID="btSearch" CssClass ="btSearch" Text="Поиск"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btSearch_Click" />
            <asp:Button ID="btFiltr" CssClass ="btFiltr" Text="Фильтр"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btFiltr_Click" />
              <asp:Button ID="tbCancel" CssClass ="tbCancel" Text="Отмена"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="tbCancel_Click" />

            <asp:TextBox ID ="tbSearch" CssClass ="tbSearch" runat ="server" Font-Names="MatchTV" BorderStyle="Inset" BorderColor="Black" ForeColor="Black" Font-Size="9pt"></asp:TextBox>

        </div>

            <asp:ListBox ID ="lbReglament" CssClass ="lbReglament" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
            <asp:ListBox ID ="lbFormat" CssClass ="lbFormat" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
             <asp:ListBox ID ="lbArena" CssClass ="lbArena" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
            <asp:ListBox ID ="lbCity" CssClass ="lbCity" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
             <asp:ListBox ID ="lbDiscipline" CssClass ="lbDiscipline" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
            <asp:ListBox ID ="lbPersonal" CssClass ="lbPersonal" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>

        <asp:ImageButton ID ="tbWord" CssClass ="tbWord" runat ="server" ImageUrl="~/Pict/file-word-2-fill.png" OnClick="tbWord_Click" />
         <asp:ImageButton ID ="btExcel" CssClass ="btExcel" runat ="server" ImageUrl="~/Pict/file-excel-2-fill.png" OnClick="btExcel_Click" />
        <button id="btPrint" class="btPrint" onclick="window.print()"><img src="Pict/printer-fill.png" /></button>


    </form>
</body>
</html>
