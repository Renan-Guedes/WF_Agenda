<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WF_Agenda.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>   
            <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
            <br />
            <br />
            <asp:Label ID="lblErro" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
