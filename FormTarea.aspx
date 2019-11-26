<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormTarea.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agregar tarea</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
    <div class=" container pt-5">
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="title">Titulo</label>
                <input type="text" class="form-control" id="title" placeholder="Titulo de tarea" />
            </div>
            <div class="form-group">
                <label for="descripcion">Descripcion</label>
                <input type="text" class="form-control" id="descripcion" placeholder="Descripcion" />
            </div>
            <div class="pt-4" style="text-align:center">
                <asp:Button ID="agregar" runat="server" Text="Agregar Tarea" CssClass="btn btn-secondary btn-block" />
            </div>
        </form>
    </div>
</body>
</html>
