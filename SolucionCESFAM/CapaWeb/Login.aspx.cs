using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        Usuario user = new Usuario();

        if (user.ValidarUsuario(txtUsuario.Value, txtClave.Value))
        {
            Response.Redirect("Inicio.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnCerrarPopUp_Click(object sender, EventArgs e)
    {
        
    }

    


    

}