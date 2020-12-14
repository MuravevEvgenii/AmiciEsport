<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organization.aspx.cs" Inherits="AmiciEs.Organization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Организация турнира</title>
    <link href="Organization.css" rel="stylesheet" />

    <style type="text/css">
        .Logo {
            height: 89px;
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="Org" runat="server">
        <asp:SqlDataSource ID="sdsTurnir" runat ="server"></asp:SqlDataSource>
        <section>
            <img src="Pict/Logo.png" class="Logo" />
            <asp:ImageButton ID ="btHome" CssClass ="btHome" runat ="server" ImageUrl="~/Pict/BigHome.png" OnClick="btHome_Click" />
        </section>
        <div>
            <div id="Rect1" class="rect1">
             
                </div>
            <div id="Rect2" class ="rect2">
                </div>
 <asp:Label ID ="lbNameTurn" Text="Наименование турнира" runat ="server" CssClass ="lbNameTurn" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
            <asp:TextBox ID ="tbNameTurn" CssClass="tbNameTurn" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
                 <asp:Label ID ="lbNumbTms" CssClass="lbNumbTms" Text ="Количество команд" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
             <asp:TextBox ID ="tbNumb" CssClass="tbNumb" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
            <asp:Label ID ="lblDate" CssClass="lblDate" Text ="Дата проведения" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
            <asp:TextBox ID ="tbDate" CssClass="tbDate" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black" TextMode="Date"></asp:TextBox>
             <asp:Label ID ="lblMoney" CssClass="lblMoney" Text ="Призовой фонд" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="15pt"></asp:Label>
            <asp:TextBox ID ="tbMoney" CssClass="tbMoney" runat="server" Font-Names="MatchTV" Font-Size="15pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>

            <asp:ListBox ID ="lbReglament" CssClass ="lbReglament" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
            <asp:ListBox ID ="lbFormat" CssClass ="lbFormat" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
             <asp:ListBox ID ="lbArena" CssClass ="lbArena" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
            <asp:ListBox ID ="lbCity" CssClass ="lbCity" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
             <asp:ListBox ID ="lbDiscipline" CssClass ="lbDiscipline" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
            <asp:ListBox ID ="lbPersonal" CssClass ="lbPersonal" runat="server" Font-Names="MatchTV" Font-Size="10pt"></asp:ListBox>
        </div>
            <asp:Button ID="Btorg" CssClass ="Btorg" Text="Организовать"  Font-Names="MatchTV" Font-Size="15pt" runat="server" BackColor="#66FF33" BorderStyle="None" ForeColor="Azure" OnClick="Btorg_Click" />
    </form>
</body>
</html>
