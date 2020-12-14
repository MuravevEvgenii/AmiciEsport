<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="AmiciEs.AboutPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>О нас</title>
     <link href="About.css" rel="stylesheet" />
    <style type="text/css">
        .logo {
            height: 80px;
            width: 122px;
        }
        #AbPage {
            height: 425px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="AbPage" runat="server">
          <section style="background-color: #000000; margin-top: 0px;">
           
            <img class="logo" src="Pict/Logo.png" /> 

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
                           <li><a href="Organization.aspx">Организовать турнир</a></li>
                            <li><a href="InfoTourn.aspx">Просмотреть турниры</a></li>
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
                   <li><a href="Mail.aspx">Обратная связь</a></li>
               </ul>
           </nav>
          </section>
        <div style="background-color: #000000; opacity:0.8; border-radius: 10px;">
            
            <h1 style="font-family:MatchTV; color:snow; margin-top: 158px;">О AmiciEsport</h1>
            <h2 style="font-family:MatchTV; color:snow;">Киберспортивная организация из России</h2>

        </div>
              <div style="background-color: #000000; opacity:0.9; border-radius: 10px;">
                  <center>
                      <h1 style="font-family:MatchTV; color:snow;">Местоположение организации</h1>
              <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A7dbcf5c5677eda0eb2accb4701554dafcfc30f23de3e2b41dcfcc9c9a5281aac&amp;width=600&amp;height=437&amp;lang=ru_RU&amp;scroll=true"></script>
                    </center>
 <p style="font-family:MatchTV; color:snow">Московский международный деловой центр Москва-Сити </p>
<p style="font-family:MatchTV; color:snow">Пресненский район, Центральный административный округ, Москва, Россия</p>
       </div>
        <center>
        <div style="background-color: #000000; opacity:0.9; border-radius: 10px;">
<h1 style="font-family:MatchTV; color:snow;">Наши партнеры</h1>
   <h2 style="font-family:MatchTV; color:snow;">Магазин электроники YaTion</h2>
            <img src="Pict/Ytn.png" style="height: 254px; width: 438px" />
             <h2 style="font-family:MatchTV; color:snow;">Автосалон DanijelMotors</h2>
              <img src="Pict/odbnc6zp3oQ.jpg" style="height: 254px; width: 438px; opacity: 1.0" />
             <h2 style="font-family:MatchTV; color:snow;">Авиакомпания Eagle Airways</h2>
              <img src="Pict/Airw.png" style="height: 254px; width: 438px" opacity: 1.0 />
        </center style="height: 311px; width: 467px">
        
        </div>
         

   </form>
</body>
</html>
