<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authorization.aspx.cs" Inherits="AmiciEs.Authorization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Авторизация</title>
    <link href="Auth.css" rel="stylesheet" />
    <style type="text/css">
        .logo {
            position: absolute;
            height: 175px;
            width: 240px;
            top: 30px;
            left: 825px;
        }
    </style>
</head>
<body>
    <form id="Auth" runat="server">
         <section style="background-color: #000000">
             </section>
        <div>

             <img class="logo" src="Pict/Logo.png" />
             <div id="Rect1" class="rect1">
                 <asp:Label ID ="lbAmici" CssClass ="lbAmici" Text="Amici eSport" runat="server" Font-Names="MatchTV" ForeColor="#33CC33" Font-Size="38pt"></asp:Label>
                  <asp:Label ID ="lbLogin" CssClass ="lbLogin" Text="Логин" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="25pt"></asp:Label>
                 <asp:Label ID ="lbPass" CssClass ="lbPass" Text="Пароль" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="25pt"></asp:Label>
                 <asp:Label ID ="lblTitle" CssClass ="lblTitle" runat="server" Font-Names="MatchTV" ForeColor="Red" Font-Size="12pt"></asp:Label>

                 <asp:TextBox ID ="tbLogin" CssClass ="tbLogin" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
                  <asp:TextBox ID ="tbPass" CssClass ="tbPass" TextMode ="Password" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>

                 <asp:Button ID ="btAuth" CssClass ="btAuth" Text="Авторизация" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="25pt" BackColor="#66FF66" BorderStyle="None" OnClick="btAuth_Click" />
                 <asp:LinkButton ID ="lbtReg" CssClass ="lbtReg" Text ="Регистрация" runat="server" Font-Names="MatchTV" ForeColor="Navy" Font-Size="20pt" OnClick="lbtReg_Click" ></asp:LinkButton>

                </div>
        </div>
    </form>
</body>
</html>
