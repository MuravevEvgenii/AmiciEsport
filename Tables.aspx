<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tables.aspx.cs" Inherits="AmiciEs.Tables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Справочники</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 167px">
            <asp:Button ID="Button1" runat="server" Text="Турниры" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Билеты" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Персонал" OnClick="Button3_Click" />
        </div>
    </form>
</body>
</html>
