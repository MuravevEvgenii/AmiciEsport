<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="AmiciEs.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="Menu.css" rel="stylesheet" />
    <style type="text/css">
        .logo {
            height: 62px;
            width: 96px;
            margin:0;
            padding:0;
        }
        #Rect1 {
            height: 442px;
            top: 152px;
            left: 89px;
            margin-top: 30px;
        }
        .DanijelMotors {
            height: 90px;
            width: 149px;
            top: 656px;
            left: 608px;
        }
        </style>
</head>
<body>
    <form id="Menu" runat="server">
        <section style="background-color: #000000">
           
            <img class="logo" src="Pict/Logo.png" />
            <asp:ImageButton ID ="ibAcc" CssClass="ibAcc" runat ="server"  ImageUrl="~/Pict/Acc.png" OnClick="ibAcc_Click"  />
             <nav class="dws-menu">
               <ul>
                   <li><a href="#.aspx">Игровые дисциплины</a></li>
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

           </section>

        <div class ="sec2">

                <div id="Rect1" class="rect1">

                </div>
         
                <div id ="Rect2" class="rect2">

                </div>

                <div id ="Rect3" class ="rect3">

                </div>

             <div id ="Rect4" class ="rect4">

                </div>

            <asp:LinkButton ID ="lbGame" CssClass ="lbGame" runat ="server" Text="Учет игровых дисциплин" Font-Names="Bridge Type" Font-Size="28pt" ForeColor="White" Font-Overline="False" OnClick="lbGame_Click"></asp:LinkButton>
           <asp:LinkButton ID ="lbTourn" CssClass ="lbTourn" runat ="server" Text="Организация турнира" Font-Names="Bridge Type" Font-Size="28pt" ForeColor="White" Font-Overline="False" OnClick="lbTourn_Click"></asp:LinkButton>
            <asp:LinkButton ID ="lbMark" CssClass="lbMark" runat ="server" Text ="Маркетинг" Font-Names="Bridge Type" Font-Size="28pt" ForeColor="White" Font-Overline="False" OnClick="lbMark_Click"></asp:LinkButton>
             <asp:LinkButton ID ="LbTable" CssClass="LbTable" runat ="server" Text ="Справочники" Font-Names="Bridge Type" Font-Size="28pt" ForeColor="White" Font-Overline="False" OnClick="LbTable_Click"></asp:LinkButton>

            <asp:ImageButton ID ="ibtGame" CssClass ="ibtGame" runat="server" ImageUrl="~/Pict/Игроки.png" OnClick="ibtGame_Click" />
            <asp:ImageButton ID ="ibtTourn" CssClass ="ibtTourn" runat="server" ImageUrl="~/Pict/Турик.png" OnClick="ibtTourn_Click" />
            <asp:ImageButton ID ="IbtMarketing" CssClass ="IbtMarketing" runat="server" ImageUrl="~/Pict/kisspng-search-engine-optimization-pay-per-click-digital-m-marketing-5ab9180be56b49.1900141615220797559397.png" OnClick="IbtMarketing_Click"  />
            <asp:ImageButton ID ="ibTables" CssClass ="ibTables" runat="server" ImageUrl="~/Pict/grid-fill.png" OnClick="ibTables_Click"   />

          
          <footer style="background-color:black; height: 109px; margin-top: 646px; width: 1730px; margin-right: 0px; opacity: 0.9;">
                <img class="DanijelMotors" src="Pict/odbnc6zp3oQ.jpg" />
            <img class="imgAir" src="Pict/Airw.png" />
            <img class="imgYtn" src="Pict/Ytn.png" /></div>

          </footer>
    </form>
</body>
</html>
