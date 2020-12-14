<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketSale.aspx.cs" Inherits="AmiciEs.TicketSale" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="TicketSale.css" rel="stylesheet" />
    <style type="text/css">
        .logo {
            height: 64px;
            width: 102px;
        }
        .btA {
            top: 315px;
            left: 1042px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <asp:SqlDataSource ID="sdsTicket" runat ="server"></asp:SqlDataSource>
         <section style="background-color: #000000">
             <div id="Rect1" class="rect1">

                </div>
           <span class="checkbox"></span></label><img class="logo" src="Pict/Logo.png" />
            <asp:ImageButton ID ="ibAcc" CssClass="ibAcc" runat ="server"  ImageUrl="~/Pict/Acc.png" OnClick="ibAcc_Click"  />
            

           </section>
        <asp:Label ID ="lblTurn" CssClass="lblTurn" Text="Выберите турнир" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
        <asp:ListBox ID ="lbTurn" CssClass ="lbTurn" runat ="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="12pt"></asp:ListBox>
        <asp:Label ID ="LblCatA" CssClass="LblCatA" Text="Категория A" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
         <asp:Label ID ="lblPriceA" CssClass="lblPriceA" Text="Цена" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>

        <asp:TextBox ID ="tbCatA" CssClass="tbCatA" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BorderColor="Black"></asp:TextBox>

        <asp:Label ID ="LblCatB" CssClass="LblCatB" Text="Категория B" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
         <asp:Label ID ="lblPriceB" CssClass="lblPriceB" Text="Цена" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
        <asp:TextBox ID ="tbCatB" CssClass="tbCatB" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BorderColor="Black"></asp:TextBox>

        <asp:Label ID ="LblCatC" CssClass="LblCatC" Text="Категория C" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
         <asp:Label ID ="lblPriceC" CssClass="lblPriceC" Text="Цена" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>

         <asp:TextBox ID ="tbCatC" CssClass="tbCatC" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BorderColor="Black"></asp:TextBox>

         <asp:Label ID ="LblCatVip" CssClass="LblCatVip" Text="Категория VIP" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
         <asp:Label ID ="lblPriceVip" CssClass="lblPriceVip" Text="Цена" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>

        
         <asp:TextBox ID ="tbCatVip" CssClass="tbCatVip" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BorderColor="Black"></asp:TextBox>

         


        <asp:Button ID ="btConfirm" CssClass="btConfirm" runat ="server" Text ="Подтвердить"  Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BackColor="#99FF66" ForeColor="White" OnClick="btConfirm_Click" />
        <asp:Button ID ="btBack" CssClass="btBack" runat ="server" Text ="Назад"  Font-Names="MatchTV" Font-Size="15pt" BorderStyle="None" BackColor="#FF3300" ForeColor="White" />
 
        <div style="height: 493px">
        
      
         
        <asp:ImageButton ID ="BtA" CssClass="btA" runat ="server"  OnClick="btA_Click" ImageUrl="~/Pict/check-double-line.png" />
        
        <asp:ImageButton ID ="BtB" CssClass="btB" runat ="server"  OnClick="btB_Click" ImageUrl="~/Pict/check-double-line.png" />
        
        <asp:ImageButton ID ="BtC" CssClass="btC" runat ="server" OnClick="btC_Click" Width="61px" ImageUrl="~/Pict/check-double-line.png" />
         <asp:ImageButton ID ="BtVip" CssClass="BtVip" runat ="server"  OnClick="btVip_Click" ImageUrl="~/Pict/check-double-line.png" />
    </div>
    </form>
</body>
</html>
