<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfTabuada.aspx.cs" Inherits="TabuadaAPS.NET.wfTabuada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tabuada</h1>
            <asp:DropDownList ID="DDLNUMEROS" runat="server" Width="125px">
            </asp:DropDownList>
            <br />
            <asp:DropDownList ID="DDLOPERACAO" runat="server" Width="125px">
                <asp:ListItem Selected="True">Adição</asp:ListItem>
                <asp:ListItem>Subtração</asp:ListItem>
                <asp:ListItem>Multiplicação</asp:ListItem>
                <asp:ListItem>Divisão</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="BTNEXECUTAR" runat="server" Width="125px" Text="Exibir tabuada" OnClick="BTNEXECUTAR_Click" />
        </div>
        <asp:ListBox ID="LBRESULTADO" runat="server" Height="209px" Width="125px"></asp:ListBox>
    </form>
</body>
</html>
