<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="AmiciEs.Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Organization.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Info1" CssClass ="Info1" runat ="server" Font-Names="MatchTV" ForeColor="Azure" Font-Size="45pt" Text ="Турнир организован!"></asp:Label>
            <asp:Button ID="Btorg1" CssClass ="Btorg1" Text ="На главную" runat ="server" Font-Names="MatchTV" Font-Size="25pt" BackColor="#66FF33" BorderStyle="None" ForeColor="Azure" OnClick="Btorg1_Click" />
        </div>
    </form>
</body>
</html>
