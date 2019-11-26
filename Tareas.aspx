<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tareas.aspx.cs" Inherits="Laboratorio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet" />
    <link href="/Content/Site.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <header class=" modal-header">
        <h1 class=" modal-title" style="text-align: center">TO DO APP</h1>
    </header>
    <form id="form1" runat="server">
        <div class="container">
            <div style="text-align:center">
                <asp:Button ID="btnAgregar" CssClass="btn align-self-center" runat="server" Text="AGREGAR" OnClick="btnAgregar_Click" />
            </div>
            <asp:SqlDataSource ID="Datos" runat="server" ConnectionString="<%$ ConnectionStrings:TodoAppConnectionString %>" SelectCommand="SELECT * FROM [Tarea]"></asp:SqlDataSource>
            <asp:GridView ID="GridDatos" runat="server" DataSourceID="Datos" AutoGenerateColumns="False" DataKeyNames="id" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:CheckBoxField DataField="Completo" HeaderText="Completo" SortExpression="Completo" />
                    <asp:BoundField DataField="FechaCreacion" HeaderText="Fecha de Creacion" SortExpression="FechaCreacion" />
                    <asp:BoundField DataField="FechaModificacion" HeaderText="Fecha de Modificacion" SortExpression="FechaModificacion" />
                    <asp:BoundField DataField="FechaFinalizacion" HeaderText="Fecha de Finalizacion" SortExpression="FechaFinalizacion" />
                    <asp:CommandField ShowSelectButton="True">
                        <ControlStyle CssClass="custom-checkbox" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True" ItemStyle-CssClass="btn" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>


</body>
</html>
<%--  --%>