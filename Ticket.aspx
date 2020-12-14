<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="AmiciEs.Ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Информация о билетах</title>
    <link href="Ticket.css" rel="stylesheet" />
    <style type="text/css">
        .gvTicket {
            margin-left: 0px;
            top: 195px;
            left: 554px;
            height: 235px;
            width: 479px;
        }
        .logo {
            height: 73px;
            width: 114px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <asp:SqlDataSource ID="sdsTicket" runat ="server"></asp:SqlDataSource>

        <section style="background-color: #000000; height: 79px; margin-top: 0px;">
          
              
            
            
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
            <asp:ImageButton ID ="ibAcc" CssClass="ibAcc" runat ="server"  ImageUrl="~/Pict/Acc.png" OnClick="ibAcc_Click"  />
            <asp:ImageButton ID ="ibSet" CssClass ="ibSet" runat ="server" ImageUrl="~/Pict/search-eye-line.png" OnClick="ibSet_Click" />

           </section>
        <div style="height: 389px">

            <asp:Label ID ="lbPrice" Text="Стоимость билета" runat ="server" CssClass ="lbNameTurn"      ForeColor="Black" Font-Size="15pt"></asp:Label>
            <asp:GridView ID ="gvTicket" CssClass="gvTicket" runat ="server" OnRowDataBound="gvTicket_RowDataBound" OnSelectedIndexChanged="gvTicket_SelectedIndexChanged1" GridLines="Vertical" Font-Size="15pt" BorderColor="#000066" BorderStyle="Solid"   >
                    <Columns> 
                        <asp:CommandField ShowSelectButton ="true" />
                             </Columns> 
                    </asp:GridView> 

            <asp:TextBox ID ="tbNameTurn" CssClass="tbNameTurn" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>

             <asp:Label ID ="LblTourn" Text="Турнир" runat ="server" CssClass ="LblTourn" Font-Names="MatchTV" ForeColor="Black" Font-Size="15pt"></asp:Label>
             <asp:ListBox ID ="LbTourn" CssClass ="lbReglament" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>

            <asp:Label ID ="lbCat" Text="Категория билета" runat ="server" CssClass ="lbCat" Font-Names="MatchTV" ForeColor="Black" Font-Size="15pt"></asp:Label>
            <asp:DropDownList ID ="dlCateg" CssClass ="dlCateg" runat ="server" Font-Names="MatchTV" Font-Size="13pt">
                <asp:ListItem>Категория А</asp:ListItem>
                <asp:ListItem>Категория В</asp:ListItem>
                <asp:ListItem>Категория С</asp:ListItem>
                <asp:ListItem>Категория VIP</asp:ListItem>
            </asp:DropDownList>

            
            <asp:Button ID="btInsert" CssClass ="btInsert" Text="Добавить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btInsert_Click" />
            <asp:Button ID="btUpdate" CssClass ="btUpdate" Text="Обновить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btUpdate_Click" />
            <asp:Button ID="btDelete" CssClass ="btDelete" Text="Удалить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btDelete_Click" />

             <asp:Button ID="btSearch" CssClass ="btSearch" Text="Поиск"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btSearch_Click" />
            <asp:Button ID="btFiltr" CssClass ="btFiltr" Text="Фильтр"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btFiltr_Click" />
              <asp:Button ID="tbCancel" CssClass ="tbCancel" Text="Отмена"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="tbCancel_Click" />
                <asp:TextBox ID ="tbSearch" CssClass ="tbSearch"  Font-Names="MatchTV" runat="server"  BorderColor="Black"></asp:TextBox>
        </div>
    </form>
</body>
</html>
