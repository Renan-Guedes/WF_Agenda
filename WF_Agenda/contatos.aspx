<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contatos.aspx.cs" Inherits="WF_Agenda.contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Inserir Novo Contato"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtNome" runat="server" Width="328px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    </p>
    <asp:TextBox ID="txtEmail" runat="server" Width="328px"></asp:TextBox>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Telefone"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtTelefone" runat="server" Width="328px"></asp:TextBox>
    </p>
    <asp:Button ID="btnInserir" runat="server" Text="Inserir" OnClick="btnInserir_Click" />
    <h2>Lista de Contatos</h2>
    <asp:GridView ID="GridViewContato" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContato" ForeColor="#333333" GridLines="None" Height="246px" Width="441px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceContato" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT * FROM [Contato]" UpdateCommand="UPDATE [Contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
