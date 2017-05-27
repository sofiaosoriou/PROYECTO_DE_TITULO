using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Movimientos_Funcionario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { //no cacho que onda :(
        todoEntrega.Visible = false;
        todoReserva.Visible = false;
        todoIngreso.Visible = false;
        todoCaducar.Visible = false;

    }

    protected void btnBuscarEntrega_Click(object sender, EventArgs e) //BUSCAR ENTREGA
    {
        if (ddlCriterioEntrega.SelectedValue == "rutpaciente")
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Codigo");
            dt.Columns.Add("Medico");
            dt.Columns.Add("Fecha");

            

            dt.Rows.Add("636","Medico1","26/05/2017");
            dt.Rows.Add("633", "Medico1", "26/05/2017");
            dt.Rows.Add("637", "Medico2", "26/05/2017");
            gvReservaResultadoBusquedaRecetaEntrega.DataSource = dt;
            gvReservaResultadoBusquedaRecetaEntrega.DataBind();
            panelPopUpSeleccionReceta.Visible = true;

        }
        else if (ddlCriterioEntrega.SelectedValue == "codreceta")
        {
        
           
        }
    }

    protected void btnCerrarSeleccionReceta_Click(object sender, EventArgs e)
    {
        panelPopUpSeleccionReceta.Visible = false;
    }
    protected void btnSeleccionarReceta_Click(object sender, EventArgs e)
    {
        panelPopUpSeleccionReceta.Visible = false;
    }


    protected void btnBuscarRecetaReserva_Click(object sender, EventArgs e) //Btn buscar receta para reserva
    {
        if (ddlCriterioReserva.SelectedValue == "rutpaciente")
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Codigo");
            dt.Columns.Add("Medico");
            dt.Columns.Add("Fecha");



            dt.Rows.Add("636", "Medico1", "26/05/2017");
            dt.Rows.Add("633", "Medico1", "26/05/2017");
            dt.Rows.Add("637", "Medico2", "26/05/2017");
            gvReservaResultadoBusquedaRecetaEntrega.DataSource = dt;
            gvReservaResultadoBusquedaRecetaEntrega.DataBind();
            panelPopUpSeleccionReceta.Visible = true;

        }
        else if (ddlCriterioReserva.SelectedValue == "codreceta")
        {
            panelPopUpSeleccionReceta.Visible = false;
        }
    }

    protected void cbMovimiento_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cbMovimiento.SelectedItem.Text == "-- Seleccione --")
        {
            todoEntrega.Visible = false;
            todoReserva.Visible = false;
            todoIngreso.Visible = false;
            todoCaducar.Visible = false;

        }
        else if (cbMovimiento.SelectedItem.Text == "Entrega")
        {
            todoEntrega.Visible = true;
            todoReserva.Visible = false;
            todoIngreso.Visible = false;
            todoCaducar.Visible = false;

        }
        else if (cbMovimiento.SelectedItem.Text == "Reserva")
        {
            todoReserva.Visible = true;
            todoEntrega.Visible = false;
            todoIngreso.Visible = false;
            todoCaducar.Visible = false;
        }
        else if (cbMovimiento.SelectedItem.Text == "Caducar")
        {
            todoCaducar.Visible = true;
            todoReserva.Visible = false;
            todoEntrega.Visible = false;
            todoIngreso.Visible = false;

        }
        else if (cbMovimiento.SelectedItem.Text == "Ingresar")
        {
            todoIngreso.Visible = true;
            todoReserva.Visible = false;
            todoEntrega.Visible = false;
            todoCaducar.Visible = false;
        }

    }
    protected void btnAgrgarMedicamentoNuevo_Click(object sender, EventArgs e)
    {
        Response.Redirect("FormularioMedicamentoNuevo.aspx");
    }


    protected void btnCerrarPopupMedicamentos_Click(object sender, EventArgs e)
    {
        //cerrar pop up
        popUpMuestraTodosLosMedicamentos.Visible = false;
    }
    protected void btnSeleccionarMedicamento_Click(object sender, EventArgs e)
    {
        //cerrar pop up 
        popUpMuestraTodosLosMedicamentos.Visible = false;
    }
    protected void btnAgregarMedicamento_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Codigo");
        dt.Columns.Add("Nombre");
        dt.Columns.Add("Tipo");



        dt.Rows.Add("001", "Aspirina", "Antigripal");
        dt.Rows.Add("002", "Triobal", "Antigripal");
        dt.Rows.Add("003", "MedicamentoX", "TipoX");
        gvMedicamentosEnSistema.DataSource = dt;
        gvMedicamentosEnSistema.DataBind();
        popUpMuestraTodosLosMedicamentos.Visible = true;
    }
}