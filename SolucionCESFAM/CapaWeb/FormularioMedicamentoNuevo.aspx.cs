using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormularioMedicamentoNuevo : System.Web.UI.Page
{
    protected void btnIngresarMedicamento_Click(object sender, EventArgs e)
    {
        //hay que hacer que no se pierdan los datos que estaban en la pag. de ingresoa antes de agregar nuevo
        Response.Redirect("Movimientos_Funcionario.aspx");
    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        //hay que hacer que no se pierdan los datos que estaban en la pag. de ingresoa antes de agregar nuevo
        Response.Redirect("Movimientos_Funcionario.aspx"); 
    }
}
 