<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FormularioMedicamentoNuevo.aspx.cs" Inherits="FormularioMedicamentoNuevo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     



<div class="container">
   
     
    <!-- inicio panel stock -------------------------------------------->
    <div id="panelNuevoMedicamento" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="panelNuevoMedicamentohead" class="panel-heading" runat="server">Medicamento Nuevo</div>
      <div id="panelNuevoMedicamentobody" class="panel-body">
         
         <br />

    <div class="row">
        <div class="col-2">

        </div>
        <div class="col-8">
             <label for="cbTipoTratamiento" class="dropdown"> Datos del medicamento</label>
        </div>
        <div class="col-2">

        </div>
       
    </div>
    <div class="row"> <!--row-->
             <div class="col-2">
                
              </div>
            <div class="col-8">
            <label for="txtNombre">Nombre</label>
              <input runat="server" class="form-control" id="txtNombre" placeholder="Nombre Medicamento"/>
            </div>
        <div class="col-2">

              </div>

     </div> <!--row-->
    <div class="row">
              <div class="col-2">

              </div>
             <div class="col-8"> <!-- text area para descripcion -->
                         <label for="txtDescripcionMedicamento">Descripción</label>
                         <textarea class="form-control" rows="4" id="txtIndicaciones" runat="server"></textarea>
             </div>
            <div class="col-2">

            </div>
     </div> <!--row-->
     <div class="row"> <!--row-->
             <div class="col-2">

              </div>

            <div class="col-8">
            <label for="txtFabricante">Fabricante</label>
              <input runat="server" class="form-control" id="txtFabriecante" placeholder="Fabricante"/>
            </div>
        <div class="col-2">

              </div>

     </div> <!--row-->
     <div class="row">
              <div class="col-2">

              </div>
              <div class="col-8">
                  <label for="ddlTipoMedicamento">Tipo</label>
                <asp:dropdownlist id="ddlTipoMedicamento" runat="server" cssclass="form-control" height="60%" width="100%"></asp:dropdownlist>
              </div>
              <div class="col-2">

              </div>
     </div><!--fin row-->
    <div class="row">
              <div class="col-2">

              </div>
             <div class="col-8"> <!-- text area para componentes -->
                         <label for="txtComponentes">Componentes</label>
                         <textarea class="form-control" rows="4" id="txtComponentes" runat="server"></textarea>
             </div>
            <div class="col-2">

            </div>
     </div> <!--row-->
    <div class="row">
              <div class="col-2">
                  
              </div>
             <div class="col-4">
                         <label for="txtContenido">Contenido</label>
                         <input class="form-control" rows="4" id="txtContenido" runat="server"></input>
             </div>
            <div class="col-4">
                         <label for="txtComprimidos">Comprimidos</label>
                         <input class="form-control" rows="4" id="txtComprimidos" runat="server"></input>
             </div>
            <div class="col-2">

            </div>
     </div> <!--row-->
    <div class="row">
              <div class="col-2">

              </div>
             <div class="col-4">
                         <label for="txtGramaje">Gramaje</label>
                         <input class="form-control" rows="4" id="txtGramaje" runat="server"></input>
             </div>
            <div class="col-4">
                         <label for="txtUnidadMedida">Unidad de Medida</label>
                         <input class="form-control" rows="4" id="txtUnidadMedida" runat="server"></input>
             </div>
            <div class="col-2">

            </div>
     </div> <!--row-->
     <div class="row">
         <br />
     </div>

          <br />
   
      </div>
    </div> <!-- fin panel medicamentos -------------------------------------------->
    <div class="row">
            <div class="col-2">

            </div>
            <div class="col-4">
            <asp:Button ID="btnIngresarMedicamento" runat="server" Width="95%" Text="Ingresar Medicamento" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-left:15px; float:left;" ForeColor="White" OnClick="btnIngresarMedicamento_Click"/>
            </div>
            <div class="col-4">
                <asp:Button ID="btnCancelar" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-right:15px; float:right;" ForeColor="White" OnClick="btnCancelar_Click"/>
            </div>
             <div class="col-2">

            </div>
        </div>

</div>

</asp:Content>

