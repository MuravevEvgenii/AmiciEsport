<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GameMenu.aspx.cs" Inherits="AmiciEs.GameMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="GameMenu.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID ="btPlayers" CssClass ="btPlayers" Text="Игроки" runat="server" BackColor="Blue" BorderStyle="None" Font-Names="MatchTV" Font-Size="16pt" ForeColor="White" />
            <asp:Button ID ="btTeams" CssClass ="btTeams" Text="Команды" runat="server" BackColor="Blue" BorderStyle="None" Font-Names="MatchTV" Font-Size="16pt" ForeColor="White" />
            <asp:ImageButton ID ="btHome" CssClass ="btHome" runat="server" ImageUrl="~/Pict/home-3-line.png" OnClick="btHome_Click" />
        </div>
    </form>
</body>
</html>
