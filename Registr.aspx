<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registr.aspx.cs" Inherits="AmiciEs.Registr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Регистрация</title>
     <link href="Registr.css" rel="stylesheet" />
    <style type="text/css">
        .logo {
            height: 154px;
            width: 249px;
            top: 26px;
            left: 852px;
        }
    </style>
</head>
<body>
    <form id="Registr" runat="server">
        <asp:SqlDataSource ID="sdsPersonal" runat ="server"></asp:SqlDataSource>
        <div>
            
             &nbsp;<div id="Rect1" class="rect1">
                 <asp:Label ID ="lblMiddleName" CssClass ="lblMiddleName" runat="server" Text="Отчество" Font-Names="MatchTV" ForeColor="Black" Font-Size="22pt"></asp:Label>

                 <asp:TextBox ID ="tbSurname" CssClass ="tbSurname" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderStyle="Inset" BorderColor="Black"></asp:TextBox>
                  <asp:TextBox ID ="tbName" CssClass ="tbName"  runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                 <asp:TextBox ID ="tbMiddleName" CssClass ="tbMiddleName"  runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                 <asp:TextBox ID ="tbLogin" CssClass ="tbLogin" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>
                  <asp:TextBox ID ="tbPass" CssClass ="tbPass" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>\
                 <asp:TextBox ID ="tbConfPass" CssClass ="tbConfPass" runat ="server" Font-Names="MatchTV" Font-Size="20pt" BorderColor="Black" BorderStyle="Inset"></asp:TextBox>


                 <asp:Button ID ="btAuth" CssClass ="btAuth" Text="Регистрация" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="25pt" BackColor="#66FF66" BorderStyle="None" OnClick="btAuth_Click"  />
                 <asp:Label ID ="lblName" CssClass ="lblName" Text="Имя" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="22pt"></asp:Label>


                  <asp:Label ID ="lbSurn" CssClass ="lbSurn" Text="Фамилия" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="22pt"></asp:Label>
                  <asp:Label ID ="lbLogin" CssClass ="lbLogin" Text="Логин" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="22pt"></asp:Label>
                  <asp:Label ID ="LbPass" CssClass ="LbPass" Text="Пароль" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="22pt"></asp:Label>
                   <asp:Label ID ="LbConfirmPass" CssClass ="LbConfirmPass" Text="Подтвердите пароль" runat="server" Font-Names="MatchTV" ForeColor="Black" Font-Size="20pt"></asp:Label>

        </div>
        </div>
                 <asp:Label ID ="lbAmici" CssClass ="lbAmici" Text="Amici eSport" runat="server" Font-Names="MatchTV" ForeColor="#33CC33" Font-Size="38pt"></asp:Label>
        <p>
            
             <img class="logo" src="Pict/Logo.png" /></p>
    </form>
</body>
</html>
