using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Inicio.aspx");
    }
    protected void btnEmitirReceta_Click(object sender, EventArgs e)
    {
        Response.Redirect("/VerReceta_Medico.aspx");
    }
}