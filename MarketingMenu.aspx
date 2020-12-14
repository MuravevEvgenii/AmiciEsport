<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarketingMenu.aspx.cs" Inherits="AmiciEs.MarketingMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="MarketingMenu.css" rel="stylesheet" />
    <style type="text/css">
        #MarkMenu {
            height: 714px;
        }
    </style>
</head>
<body>
    <form id="MarkMenu" runat="server">
        
        <div>
            <div id="Rect1" class="rect1">

                </div>

              <div id ="Rect3" class ="rect3">

                </div>
            <asp:ImageButton ID ="ibTicket" CssClass ="ibTicket" runat ="server" ImageUrl="~/Pict/2752.png" OnClick="ibTicket_Click" />
            <asp:LinkButton ID ="btTicket" CssClass ="btTicket" runat ="server" Text ="Продажа билетов" Font-Names="Bridge Type" Font-Size="21pt" ForeColor="White" Font-Overline="False" OnClick="btTicket_Click"></asp:LinkButton>
            <asp:LinkButton ID ="tbTick" CssClass ="tbTick" runat ="server" Text ="Просмотр билетов" Font-Names="Bridge Type" Font-Size="21pt" ForeColor="White" Font-Overline="False" OnClick="btTick_Click"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
