<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mail.aspx.cs" Inherits="AmiciEs.Mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="Mail.css" rel="stylesheet" />
    <title>Обратная связь</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="dws-menu">
               <ul>
                   <li><a href="#.aspx">Игровые дисциплины</a>
                       <ul>
                           <li><a href="#">Игроки</a></li>
                           <li><a href="#">Команды</a></li>
                       
                       </ul>
                   </li>
                   <li><a href="#.aspx">Турниры</a>
                        <ul>
                           <li><a href="#">Организовать турнир</a></li>
                            <li><a href="#">Просмотреть турниры</a></li>
                            <li><a href="#">Аккредитации</a></li>
                       </ul>
                   </li>

                   <li><a href="#">Маркетинг</a>
                        <ul>
                           <li><a href="TicketSale.aspx">Цены на билеты</a></li>
                            <li><a href="Ticket.aspx">Информация о билетах</a></li>
                       </ul>
                   </li>
                   <li><a href="Tables.aspx">Справочники</a>
                       <ul>
                           <li><a href="Personal.aspx">Сотрудники</a></li>
                            <li><a href="InfoTourn.aspx">Турниры</a></li>
                           <li><a href="#">Игроки</a></li>
                           <li><a href="Ticket.aspx">Билеты</a></li>
                       </ul>
                   </li>
                   <li><a href="Menu.aspx">Меню</a></li>
                   <li><a href="#.aspx">О нас</a></li>
               </ul>
           </nav>
        </div>
         <div id="Rect1" class="rect1">
             <asp:Label ID="lblOtKoog" CssClass="lblOtKoog" runat ="server" Font-Names="MatchTV" Font-Size="15pt" Text="Введите Ваш email"></asp:Label>
             <asp:Label ID="lblPassw" CssClass="lblPassw" runat ="server" Font-Names="MatchTV" Font-Size="15pt" Text="Введите пароль"></asp:Label>
                <asp:Label ID="LblTema" CssClass="LblTema" runat ="server" Font-Names="MatchTV" Font-Size="15pt" Text="Текст"></asp:Label>
              <asp:Label ID="lblTeeema" CssClass="lblTeeema" runat ="server" Font-Names="MatchTV" Font-Size="15pt" Text="Тема письма"></asp:Label>

             <asp:TextBox ID="tbMail" CssClass="tbMail" runat="server" TextMode="Email" Height="36px"  Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
           
              <asp:TextBox ID="tbPass" CssClass="tbPass" runat="server" TextMode="Password" Font-Names="MatchTV" Height="36px" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
              <asp:TextBox ID="TbText" CssClass="TbText" runat="server" TextMode="MultiLine" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
             <asp:TextBox ID="TbTema" CssClass="TbTema" runat="server" Font-Names="MatchTV" Height="36px" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>

             <asp:Button ID ="btSend" CssClass="btSend" runat="server" Text="Отправить" ForeColor="Snow" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BackColor="#0033cc" OnClick="btSend_Click" />
             <asp:Panel ID="Panel1" runat="server" Height="131px" Width="613px">
             </asp:Panel>
          
         </div>
    </form>
</body>
</html>
