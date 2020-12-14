<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TournMenu.aspx.cs" Inherits="AmiciEs.TournMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="TournMenu.css" rel="stylesheet" />
    <style type="text/css">
        .infoTrn {
            left: 1128px;
            height: 168px;
            width: 434px;
            margin-top: 6px;
        }
    </style>
</head>
<body>
    <form id="TrnMenu" runat="server">
        <div style="height: 639px">
            <asp:Button ID ="infoTrn" CssClass ="infoTrn" Text ="Информация о турнире" runat ="server" BorderStyle="None" Font-Names="MatchTV" Font-Size="21pt" BackColor="#FF5050" ForeColor="White" OnClick="infoTrn_Click" />
            <asp:Button ID ="OrgTrn" CssClass ="OrgTrn" Text ="Организация турнира" runat ="server" BorderStyle="None" Font-Names="MatchTV" Font-Size="21pt" BackColor="#FF3300" ForeColor="White" OnClick="OrgTrn_Click" />
            <asp:Button ID ="btBack" CssClass ="BtBack" Text ="Назад" runat ="server" BorderStyle="None" Font-Names ="MatchTV" Font-Size ="21pt" BackColor="#66FF66" ForeColor="White" OnClick="btBack_Click" />
        </div>
    </form>
</body>
</html>
