<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acreditation.aspx.cs" Inherits="AmiciEs.Acreditation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Аккредитация</title>
    <link href="Accred.css" rel="stylesheet" />
    <style type="text/css">
        .Accred {
            width: 438px;
            height: 445px;
            margin-left: 0px;
            background-size:cover;
        }
        #image1 {
        }
        .nnms {
            width: 250px;
            height: 208px;
            margin-left: 179px;
            margin-top: 0px;
        }
        .big {
            height: 621px;
        }
        .logo {
            height: 78px;
            width: 113px;
        }
        #file1 {
            margin-top: 26px;
            top: 148px;
            left: 3px;
        }
        .auto-style1 {
            text-align: center;
        }

        @media print {
            body {
                visibility: hidden;
            }
            
            .Accred{
                visibility:visible;
              
            }

            .nnms{
                visibility:visible;
            }

            .stat{
                 visibility:visible;
                 
            }
            .accSurn{
                
                   
            }

            .accName{
               
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <section style="background-color: #000000">
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
       <div class="big" style="overflow: hidden;"> 
        <div>
            <input type="file" id="file1" class="file" style="border-style:inset; border-color:black; background-color:Highlight; font-family:MatchTV" />
<button class="but" style="border-style:inset; border-color:black; background-color:Highlight; font-family:MatchTV; width: 184px;" onclick="save()">Загрузить<img src="Pict/attachment-line (1).png" style="margin-top: 1px"/></button>
             <button id="btPrint" class="btPrint" onclick="window.print()"><img src="Pict/printer-fill.png" /></button>
        </div>
        <left>
            <div style="width: 1311px; height: 124px; border-color:black; border-width:2px; font-family:MatchTV;" class="auto-style1">
<asp:Label ID="lblSurn" CssClass="lblSurn" runat="server"  Font-Size="14" Text="Фамилия"></asp:Label>
                <br />
<asp:TextBox ID="tbSurn" CssClass="tbSurn" BorderStyle="Inset" Font-Names="MatchTV" BorderColor="Black" runat="server" height="23px" width="188px"></asp:TextBox>
                <br />
<asp:Label ID="lblName" CssClass="lblName" runat="server" Font-Size="14" Text="Имя"></asp:Label>
                <br />
<asp:TextBox ID="tbName" CssClass="tbName" BorderStyle="Inset" Font-Names="MatchTV" BorderColor="Black" runat="server" height="23px" width="188px"></asp:TextBox>
                 <br />
<asp:Label ID="lblMiddle" CssClass="lblMiddle" runat="server" Font-Size="14" Text="Отчество"></asp:Label>
                <br />
<asp:TextBox ID="tbMiddle" CssClass="tbMiddle" BorderStyle="Inset" Font-Names="MatchTV" BorderColor="Black" runat="server" height="23px" width="188px"></asp:TextBox>
                  <br />
<asp:Label ID="lblStatus" CssClass="lblStatus" runat="server" Font-Size="14" Text="Статус"></asp:Label>
                <br />
<asp:DropDownList ID="DlStatus" CssClass="DlStatus" BorderStyle="Inset" Font-Names="MatchTV" BorderColor="Black" runat="server" height="23px" width="188px">
    <asp:ListItem>VIP</asp:ListItem>
    <asp:ListItem>STAFF</asp:ListItem>
    <asp:ListItem>PRESS</asp:ListItem>
    <asp:ListItem>TV</asp:ListItem>
    <asp:ListItem>PLAYER</asp:ListItem>
    <asp:ListItem>SECURITY</asp:ListItem>
    <asp:ListItem>MEDIA</asp:ListItem>
    <asp:ListItem>ORGANIZATOR</asp:ListItem>
    <asp:ListItem>ARTIST</asp:ListItem>
    <asp:ListItem>ARENA</asp:ListItem>
                </asp:DropDownList>
<asp:Label ID="lblDate" CssClass="lblDate" runat="server" Font-Size="14" Text="Действует ДО"></asp:Label>
                <br />
<asp:TextBox ID="tbDate" CssClass="tbDate" BorderStyle="Inset" Font-Names="MatchTV" TextMode="Date" BorderColor="Black" runat="server" height="23px" width="188px"></asp:TextBox>
                <asp:Label ID="lbNameTourn" CssClass="lbNameTourn" runat="server" Font-Size="14" Text="Название Турнира"></asp:Label>
                <br />
<asp:TextBox ID="tbTur" CssClass="tbTur" BorderStyle="Inset" Font-Names="MatchTV"  BorderColor="Black" runat="server" height="23px" width="188px"></asp:TextBox>
            </div>
        <asp:Button ID="BtForm" CssClass="BtForm" Font-Names="MatchTV" runat="server" Font-Size="17" BorderStyle="None" BackColor="hotpink" ForeColor="Black" Text="Сформировать Аккредитацию" OnClick="BtForm_Click" />
        </left>
    
        <div class="Accred" style="background-image: url('Pict/ammam.jpg'); background-repeat: no-repeat; margin-top: 38px;" >
            <center style="margin-top: 15px; margin-bottom: 0px"><h1 style="font-family: MatchTV; background-color:orangered; font-style: italic; font-variant: small-caps; color: snow; margin-bottom: 0px;">Аккредитация Amici eSport</h1></center>
            <center><div style="background-color:limegreen; margin-top: 0px;">
                <asp:Label ID="lflfl" runat="server" Text="Turn" ForeColor="Snow" Font-Size="18" Font-Names="MatchTV"></asp:Label>
                </div>
            </center>
<img id="image1" class="image1" style="position: absolute; height: 159px; width: 156px; left: 12px; top: 311px;" />

          
      <div class="nnms" style="background-color:orangered; font-family:MatchTV; color:snow">
                <center><h1 style="font-family: MatchTV;  background-color:#4da1f7; font-style: italic; font-variant: small-caps; color: snow">Данные владельца</h1></center>
                
                 <center><asp:Label ID="lblSurname" CssClass="accSurn" runat="server" Font-Size="15" Text="Surn"></asp:Label> </center>
                
                   <center><asp:Label ID="lblNameee" CssClass="accName" runat="server" Font-Size="15" Text="Surn"></asp:Label> </center>
               
                   <center><asp:Label ID="lblMiddleName" CssClass="accMddle" runat="server" Font-Size="15" Text="Surn"></asp:Label></center>
             
                   <center><asp:Label ID="Label1" runat="server" Text="Date" Font-Size="15"></asp:Label> </center>
                   
        
            </div>
            <br />
<center><div class="stat" style="background-color:orangered; height: 123px; margin-top: 47px;">

           <asp:Label ID="idStatus" runat="server" ForeColor="Snow" Font-Names="MatchTV" Font-Size="40" Text="sds"></asp:Label>
        </div>
      </center>
<br>
<script>
    
    function save ()  {
        let f = file1.files[0];
        if (f) {
            image1.src = URL.createObjectURL(f);
            localStorage.setItem('myImage', image1.src);
        }
    }
    
    image1.src = localStorage.getItem('myImage')
</script>
    </form>
</body>
</html>
