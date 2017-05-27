using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClassUsuario usuario = new ClassUsuario();
        usuario.NombreUsuario = "hector";
        usuario.Rol = "medico";

        //(ClassUsuario)Session['usuarioactivo']=usuario;
         //ya filo dps hago eso

        ////me voy chao
        //cargaMenu();

    }

    public void cargaMenu()
    {
        //ClassUsuario usuario = (ClassUsuario)Session[""]



    }
}
