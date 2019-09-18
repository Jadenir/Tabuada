<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfTabuada.aspx.cs" Inherits="TabuadaAPS.NET.wfTabuada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tabuada</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="align-content-center">
        <div>
            <h1>Tabuada</h1>
            <div class="form-group">
                <asp:DropDownList ID="DDLNUMEROS" runat="server" class="form-control" Width="125px"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:DropDownList ID="DDLOPERACAO" runat="server" Width="125px" class="form-control">
                    <asp:ListItem Selected="True">Adição</asp:ListItem>
                    <asp:ListItem>Subtração</asp:ListItem>
                    <asp:ListItem>Multiplicação</asp:ListItem>
                    <asp:ListItem>Divisão</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="BTNEXECUTAR" class="btn btn-primary" runat="server" Width="125px" Text="Exibir tabuada" OnClick="BTNEXECUTAR_Click" />
        </div>
        <asp:ListBox ID="LBRESULTADO" runat="server" Height="265px" Width="125px" class="list-group"></asp:ListBox>
    </form>
</body>
</html>
