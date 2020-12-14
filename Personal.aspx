<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal.aspx.cs" Inherits="AmiciEs.Personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Персонал</title>
    <link href="Personal.css" rel="stylesheet" />
    <style type="text/css">
        .logo {
            height: 73px;
            width: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <asp:SqlDataSource ID="sdsPersonal" runat ="server"></asp:SqlDataSource>
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
            

           </section>
       
        <div>
            <asp:GridView ID ="gvPersonal" CssClass="gvPersonal" runat ="server" OnRowDataBound="gvPersonal_RowDataBound" OnSelectedIndexChanged="gvPersonal_SelectedIndexChanged1" GridLines="Vertical" Font-Size="15pt" BorderColor="#000066" BorderStyle="Solid"   >
                    <Columns> 
                        <asp:CommandField ShowSelectButton ="true" />
                             </Columns> 
                    </asp:GridView> 


             <asp:Label ID ="lblMiddleName" CssClass ="lblMiddleName" runat="server" Text="Отчество" Font-Names="MatchTV" ForeColor="Black" Font-Size="22pt"></asp:Label>

                 <asp:TextBox ID ="tbSurname" CssClass ="tbSurname" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
                  <asp:TextBox ID ="tbName" CssClass ="tbName"  runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                 <asp:TextBox ID ="tbMiddleName" CssClass ="tbMiddleName"  runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                 <asp:TextBox ID ="tbLogin" CssClass ="tbLogin" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                  <asp:TextBox ID ="tbPass" CssClass ="tbPass" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
              <asp:Label ID ="lblName" CssClass ="lblName" Text="Имя" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="20pt"></asp:Label>


                  <asp:Label ID ="lbSurn" CssClass ="lbSurn" Text="Фамилия" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="20pt"></asp:Label>
                  <asp:Label ID ="lbLogin" CssClass ="lbLogin" Text="Логин" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="20pt"></asp:Label>
                  <asp:Label ID ="LbPass" CssClass ="LbPass" Text="Пароль" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="20pt"></asp:Label>

             <asp:Button ID="btInsert" CssClass ="btInsert" Text="Добавить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btInsert_Click" />
            <asp:Button ID="btUpdate" CssClass ="btUpdate" Text="Обновить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btUpdate_Click" />
            <asp:Button ID="btDelete" CssClass ="btDelete" Text="Удалить"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btDelete_Click" />

            <asp:Button ID="btSearch" CssClass ="btSearch" Text="Поиск"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btSearch_Click" />
            <asp:Button ID="btFiltr" CssClass ="btFiltr" Text="Фильтр"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="btFiltr_Click" />
              <asp:Button ID="tbCancel" CssClass ="tbCancel" Text="Отмена"  Font-Names="MatchTV" runat="server" BorderStyle="None" BackColor="Black" ForeColor="Azure" OnClick="tbCancel_Click" />

            <asp:TextBox ID ="tbSearch" CssClass ="tbSearch" runat ="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="9pt"></asp:TextBox>

               <asp:Label ID ="lbldlz" CssClass ="lbldlz" Text="Должность" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="20pt"></asp:Label>
            <asp:ListBox ID ="lbDolz" CssClass="lbDolz" runat ="server" Font-Names="MatchTV" Font-Size="18pt"></asp:ListBox>
        </div>
    </form>
</body>
</html>
