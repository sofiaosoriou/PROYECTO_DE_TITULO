<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body style="background-color:aliceblue;">
    <div class="container">
        <form id="form1" runat="server">
        <div>
                 <div class="col-md-12 col-md-offset-3">
                <h1 style="text-align:center;color:salmon;">CESFAM</h1>
                <h4 style="text-align:center;color:dimgray;">LOGIN</h4>
               <div class="form-group" id="formlogin">
                      <div class="form-group">
                        <input type="text" class="form-control" id="txtUsuario" placeholder="Usuario"/>
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control" id="txtClave" placeholder="Contraseña"/>
                      </div>
                        <div class="col-12">
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn" BackColor="#0094ff" Width="100%" ForeColor="White"/>
                        </div>
                 </div>
           </div>
        </div>
        </form>
    </div>

</body>
</html>
