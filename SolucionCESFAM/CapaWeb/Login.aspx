<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login CESFAM</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color:aliceblue;">
    <div class="container">
        <form runat="server">
              <div class="row">
                  <div class="col-4">

                  </div>
                  <div class="col-4">
                       <h1 style="text-align:center;color:salmon;">CESFAM</h1>
                  </div>
                  <div class="col-4">

                  </div>
              </div>
              <div class="row">
                  <div class="col-4">

                  </div>
                  <div class="col-4">
                       <h4 style="text-align:center;color:dimgray;">LOGIN</h4>
                  </div>
                  <div class="col-4">

                  </div>
              </div>
             <div class="row">
                  <div class="col-4">

                  </div>
                  <div class="col-4">
                       <input runat="server" type="text" class="form-control" id="Text1" placeholder="Usuario"/>
                  </div>
                  <div class="col-4">

                  </div>
              </div>
            <div class="row">
                  &nbsp;
            </div>
             <div class="row">
                  <div class="col-4">

                  </div>
                  <div class="col-4">
                       <input runat="server" type="password" class="form-control" id="txtClave" placeholder="Contraseña"/>
                  </div>
                  <div class="col-4">

                  </div>
              </div>
            <div class="row">
                  &nbsp;&nbsp;
            </div>
            <div class="row">
                  <div class="col-4">

                  </div>
                  <div class="col-4">
                      <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="btn" BackColor="#00AAAD" Width="100%" ForeColor="White" OnClick="btnIngresar_Click"/>
                    
                      
                  </div>
                  <div class="col-4">

                  </div>
              </div>

 </form>     
              
 
        
            
 

 <!--- <div id="popupContrasenaIncorrecta" class="alert alert-danger alert-dismissable fade in" runat="server">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>¡Error!</strong> Su usuario o contraseña es incorrecta.
  </div>
        -->
         <!-- container -->

</body>
</html>
