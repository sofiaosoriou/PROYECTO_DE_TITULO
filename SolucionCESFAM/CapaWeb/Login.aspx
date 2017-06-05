<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                        <input runat="server" type="text" class="form-control" id="txtUsuario" placeholder="Usuario"/>
                      </div>
                      <div class="form-group">
                        <input runat="server" type="password" class="form-control" id="txtClave" placeholder="Contraseña"/>
                      </div>
                        <div class="col-12">
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn" BackColor="#00AAAD" Width="100%" ForeColor="White" OnClick="btnIngresar_Click" />
                        </div>
                 </div>
           </div>
        </div>
            
        </form>

 <!--- <div id="popupContrasenaIncorrecta" class="alert alert-danger alert-dismissable fade in" runat="server">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>¡Error!</strong> Su usuario o contraseña es incorrecta.
  </div>
        -->
    </div>

</body>
</html>
