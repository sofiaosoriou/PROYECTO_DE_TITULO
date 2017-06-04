 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Movimientos_Funcionario.aspx.cs" Inherits="Movimientos_Funcionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

<div class="container">
    <!-- inicio panel MOVIMIENTOS ----este panel es fijo---------------------------------------->
    <div id="Div1" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="Div2" class="panel-heading" runat="server">Movimientos</div>
      <div class="panel-body">
          <br />
          <div class="row">
              <div class="col-3">

              </div>
              <div class="col-6">
                <label for="cbOperacion" class="dropdown"> Seleccione operación</label>
                 <asp:DropDownList ID="cbMovimiento" DataTextField="Operacion" runat="server" CssClass="form-control" Width="100%" OnSelectedIndexChanged="cbMovimiento_SelectedIndexChanged" AutoPostBack="true">
                   <asp:ListItem Value="0" Text="-- Seleccione --"></asp:ListItem>
                   <asp:ListItem Value="1" Text="Entrega"></asp:ListItem>
                   <asp:ListItem Value="2" Text="Reserva"></asp:ListItem>
                   <asp:ListItem Value="3" Text="Caducar"></asp:ListItem>
                   <asp:ListItem Value="4" Text="Ingresar"></asp:ListItem>
                </asp:DropDownList>  
               </div>
              <div class="col-3">

              </div>
          </div>
         <br />
   
      </div>
    </div> <!-- fin panel MOVIMEINTOS------------------este panel es fijo-------------------->    


    <!-- ENTREGA -----------------------ENTREGA-------------------ENTREGA------->
    <div id="todoEntrega" runat="server">
    <div id="panelBusquedaPrescripcionEntrega" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="Div10" class="panel-heading" runat="server">Busqueda de precripción</div>
      <div class="panel-body">
          <div class="row">
              <div class="col-4">
                  <label for="txtCodNomPrescripcion" class="dropdown"> Busqueda de prescripción</label>
                  <input runat="server" class="form-control" id="txtCodPrescrtxtCodNomPrescripcionipcion" placeholder="Código Prescripción"/>
              </div>
              <div class="col-4">
                  <label for="txtCriterio" class="dropdown"> Criterio</label>
                  <asp:DropDownList ID="ddlCriterioEntrega" runat="server" CssClass="form-control" Width="100%" Height="60%">
                      <asp:ListItem Value="rutpaciente">Rut Paciente</asp:ListItem>
                      <asp:ListItem Value="codreceta">Receta</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="col-4">
                  <label for="txtCodNomPrescripcion" class="dropdown" style="color:white;"> label para ocupar espacio en blanco</label>
                  <asp:Button ID="btnBuscarEntrega" runat="server" Text="Buscar" CssClass="btn" BackColor="#00AAAD" ForeColor="White" Width="100%" OnClick="btnBuscarEntrega_Click"/>
              </div>

          </div>
       </div>
    </div>
    <!--aqui empieza otro panel de entrega -->
    <div id="Div11" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="Div5" class="panel-heading" runat="server">Medicamentos</div>
        <div class="col-12">
        <label id="lblMedicamentosEnPrescripcion" runat="server" class="col-form-label" for="grdMedicamentosEnRecetaEntrega">Medicamentos en prescripción </label>
          <asp:GridView ID="grdMedicamentosEnRecetaEntrega" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
          </asp:GridView>
          <br />
           <label id="Label1" runat="server" class="col-form-label" for="grVMedicamentosEntregar">Medicamentos a entregar </label>
           <asp:GridView ID="grVMedicamentosEntregar" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
            </div> <!-- class col-12-->
      <div class="panel-body">
          
       </div>
    </div>
     <div class="row">
            <div class="col-6">
            <asp:Button ID="btnEntregarMedicamentos" runat="server" Width="95%" Text="Entregar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarEntrega" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
        </div>

        </div>

  
        
    <br />
<!-- fin seccion ENTREGA---------------------ENTREGA.....................ENTREGA------>  <!--  ENTREGA---------------------ENTREGA.....................ENTREGA------>  <!--  ENTREGA---------------------ENTREGA.....................ENTREGA------>
<!-- inicio panel RESERVA -----------------------RESERVA-------------------RESERVA-------><!-- inicio seccion RESERVA -----------------------RESERVA-------------------RESERVA-------><!-- inicio panel RESERVA -----------------------RESERVA-------------------RESERVA------->
   
    <div runat="server" id="todoReserva">
    <div id="panelDetallesReserva" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
     <div id="panelDetallesReservahead" class="panel-heading" runat="server">Detalles</div>
      <div id="panelDetallesReservaheadbody" class="panel-body">
          <div class="row">
              <div class="col-4">
                  <label for="txtCodNomPrescripcion" class="dropdown"> Busqueda</label>
                  <input runat="server" class="form-control" id="txtBusquedaPacientePrescripcion" placeholder="Paciente o prescripcion"/>
              </div>
              <div class="col-4">
                  <label for="txtCriterio" class="dropdown"> Criterio</label>
                  <asp:DropDownList ID="ddlCriterioReserva" runat="server" CssClass="form-control" Width="100%" Height="60%" >
                      <asp:ListItem Value="rutpaciente">Rut Paciente</asp:ListItem>
                      <asp:ListItem Value="codreceta">Prescripción</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="col-4">
                  <label for="txtCodNomPrescripcion" class="dropdown" style="color:white;"> label para ocupar espacio en blanco</label>
                  <asp:Button ID="btnBuscarRecetaReserva" runat="server" Text="Buscar" CssClass="btn"  BackColor="#00AAAD" ForeColor="White" Width="100%" OnClick="btnBuscarRecetaReserva_Click"/>
              </div>
             </div>
          </div>
       </div>
   <!---aqui empieza otro panel de reserva de medicamentos----->
       <div id="panelReservaMediacementosListar" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="Div6" class="panel-heading" runat="server">Medicamentos</div>
        <div class="col-12">
        <label id="lblMedicamentosReserva" runat="server" class="col-form-label" for="gvMedicamentosEnRecetaReserva">Medicamentos en prescripción seleccionada</label>
          <asp:GridView ID="gvMedicamentosEnRecetaReserva" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
          </asp:GridView>
          <br />
           <label id="Label3" runat="server" class="col-form-label" for="gvMedicamentosReserva">Medicamentos a reservar </label>
           <asp:GridView ID="gvMedicamentosReserva" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
            </div> <!-- class col-12-->
      <div class="panel-body">
          
       </div>
    </div>
     <div class="row">
            <div class="col-6">
            <asp:Button ID="btnReservarMedicamentis" runat="server" Width="95%" Text="Reservar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarReserva" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
     </div>


    <br />
    </div>
<!-- fin seccion RESERVA---------------------RESERVA.....................RESERVA------><!-- inicio seccion RESERVA -----------------------RESERVA-------------------RESERVA-------><!-- inicio panel RESERVA -----------------------RESERVA-------------------RESERVA------->
<!-- inicio seccion CADUCAR -----------------------CADUCAR-------------------CADUCAR------->     <!-- inicio seccion CADUCAR -----------------------CADUCAR-------------------CADUCAR------->     <!-- inicio panel CADUCAR -----------------------CADUCAR-------------------CADUCAR------->
 <div id="todoCaducar" runat="server">
    <div id="panelDetallesCaducar" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
     <div id="panelDetallesCaducarhead" class="panel-heading" runat="server">Detalles</div>
      <div id="panelDetallesCaducarbody" class="panel-body">
          <div class="row">
              <div class="col-6">
                  <label for="txtCriterio" class="dropdown"> Motivo</label>
                  <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="100%" Height="60%" >
                      <asp:ListItem Value="rutpaciente">Mal Estado</asp:ListItem>
                      <asp:ListItem Value="codreceta">Envase Dañado</asp:ListItem>
                      <asp:ListItem Value="codreceta">Otro</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="col-6" id="divMotivocaducidad" runat="server">
                  <label for="txtMotivo" class="dropdown"> Motivo de caducidad</label>
                  <input runat="server" class="form-control" id="txtMotivo" placeholder="Motivo caducidad"/>
              </div>
             </div>
             <div class="row"> <!--row -->
            <div class="col-12"> <!-- text area para observaciones -->
                 <label for="txtObservacionesCaducidad">Observaciones</label>
                 <textarea class="form-control" rows="5" id="txtObservacionesCaducidad" runat="server"></textarea>
             </div><!-- fin de text area para observaciones -->
        </div><!--row -->
          </div>
       </div>
      <!---panel  medicamentos  caducar-->
    <div id="panelMedicamentosCaducar" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
     <div id="panelMedicamentosCaducarhead" class="panel-heading" runat="server">Medicamentos</div>
      <div id="panelMedicamentosCaducarbody" class="panel-body">
          <div class="row">
              <div class="col-3">

              </div>
              <div class="col-6" >
                   <!--- al presionar este boton se levanta el pop up --->
                   <asp:Button ID="btnAgregarMedicamento" runat="server" Text="Agregar Medicamento" CssClass="btn" BackColor="#00AAAD" Width="100%" ForeColor="White" OnClick="btnAgregarMedicamento_Click"/>
              </div>
              <div class="col-3">

              </div>
           </div>
          <!-- una vez seleccionado en el pop up el mediccamento que se desea caducar se carga en el grid view a continuación -->
          <label id="lblCaducar" runat="server" class="col-form-label" for="gvMedicamentosCaducar">Medicamentos a caducar </label>
           <asp:GridView ID="gvMedicamentosCaducar" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>    
      </div>
       </div>
       <div class="row">
            <div class="col-6">
            <asp:Button ID="btnCaducarMedicamentos" runat="server" Width="95%" Text="Caducar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarCaducar" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
     </div>
    <!---panel medicamentos a caducar -->

    </div>
    <br />
 <!-- fin seccion CADUCAR---------------------CADUCAR.....................CADUCAR------>
 <!-- inicio seccion INGRESO---------------------INGRESO.....................INGRESO------> <!-- inicio seccion INGRESO---------------------INGRESO.....................INGRESO------> <!-- inicio seccion INGRESO---------------------INGRESO.....................INGRESO------>
    <!---panel  medicamentos  ingreso-->
<div runat="server" id="todoIngreso">
    <div id="panelIngreso" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
     <div id="panelIngresohead" class="panel-heading" runat="server">Medicamentos</div>
      <div id="panelIngresobody" class="panel-body">
          <div class="row">
              <div class="col-2">

              </div>
              <div class="col-4" >
                   <!--- al presionar este boton se levanta el pop up --->
                   <asp:Button ID="btnAgrgarMedicamentoExistente" runat="server" Text="Agregar Medicamento Existente" CssClass="btn" BackColor="#00AAAD" Width="100%" ForeColor="White"/>
              </div>
              <div class="col-4">     
                  <!--- al presionar este boton se redirige a formulario de nuevo medicamento --->
                   <asp:Button ID="btnAgrgarMedicamentoNuevo" runat="server" Text="Agregar Medicamento Nuevo" CssClass="btn" BackColor="#00AAAD" Width="100%"  ForeColor="White" OnClick="btnAgrgarMedicamentoNuevo_Click"/>
             </div>
              
              <div class="col-2">

              </div>
           </div>
          <!-- una vez seleccionado en el pop up el mediccamento que se desea caducar se carga en el grid view a continuación -->
          <label id="Label2" runat="server" class="col-form-label" for="gvMedicamentosCaducar">Medicamentos a caducar </label>
           <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>    
                         <!---en la ultima columna del grid hay que agregar un input para indicar la cantidad de medicamento ingresado --->
      </div>
       </div>
       <div class="row">
            <div class="col-6">
            <asp:Button ID="btnIngresarMedicamentos" runat="server" Width="95%" Text="Ingresar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarIngresarmedicamentos" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
     </div>
   
       
    </div>



    <!-- fin seccion INGRESO---------------------INGRESO.....................INGRESO------><!-- fin seccion INGRESO---------------------INGRESO.....................INGRESO------><!-- fin seccion INGRESO---------------------INGRESO.....................INGRESO------>
 <!--- a continuación todos los POP-UP de la página ------>
    <div id="todoPopUps" runat="server">


     <!-------------------------------------pop up con formulario de nuevo medicamento -------
     <div id="panelPopupNuevoMedicamento" class="panel panel-default" runat="server" visible="false">
        <div id="div12" class="fondo2">
            <div id="div13" class="popup6">
                <div id="popupMedicamentoNuevo" class="panel-heading" runat="server">Registrar Nuevo Medicamento</div>
                <div id="Div15" class="panel-body" style="overflow: scroll;" >
                        
            
                    <div class="row">
        <div class="col-2">

        </div>
        <div class="col-8">
             <label for="cbTipoTratamiento" class="dropdown"> Datos del medicamento</label>
        </div>
        <div class="col-2">

        </div>
       
    </div>
    <div class="row"> 
            <div class="col-4">
            <label for="txtNombre">Nombre</label>
              <input runat="server" class="form-control" id="txtNombre" placeholder="Nombre Medicamento"/>
            </div>
           <div class="col-4">
            <label for="txtFabricante">Fabricante</label>
              <input runat="server" class="form-control" id="Text1" placeholder="Fabricante"/>
            </div>
        <div class="col-4">
                  <label for="ddlTipoMedicamento">Tipo</label>
                <asp:dropdownlist id="ddlTipoMedicamento" runat="server" cssclass="form-control" height="60%" width="100%"></asp:dropdownlist>
              </div>

     </div>
    <div class="row">
             <div class="col-12"> 
                         <label for="txtDescripcionMedicamento">Descripción</label>
                         <textarea class="form-control" rows="4" id="txtIndicaciones" runat="server"></textarea>
             </div>
     </div> 

    
    <div class="row">
             <div class="col-12"> 
                         <label for="txtComponentes">Componentes</label>
                         <textarea class="form-control" rows="4" id="txtComponentes" runat="server"></textarea>
             </div>
     </div> 
    <div class="row">
             <div class="col-3">
                         <label for="txtContenido">Contenido</label>
                         <input class="form-control" rows="4" id="txtContenido" runat="server"/>
             </div>
            <div class="col-3">
                         <label for="txtComprimidos">Comprimidos</label>
                         <input class="form-control" rows="4" id="txtComprimidos" runat="server"/>
             </div>
             <div class="col-3">
                         <label for="txtGramaje">Gramaje</label>
                         <input class="form-control" rows="4" id="txtGramaje" runat="server"/>
             </div>
            <div class="col-3">
                         <label for="txtUnidadMedida">Unidad de Medida</label>
                         <input class="form-control" rows="4" id="txtUnidadMedida" runat="server"/>
             </div>
        </div>
    <div class="row">
            <div class="col-2">

            </div>
            <div class="col-4">
            <asp:Button ID="btnIngresarMedicamentoNuevo" runat="server" Width="95%" Text="Ingresar Medicamento" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-left:15px; float:left;" ForeColor="White"/>
            </div>
            <div class="col-4">
                <asp:Button ID="btnCancelarIngresarMedicamentoNuevo" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#00AAAD"  style="margin-right:15px; float:right;" ForeColor="White"/>
            </div>
             <div class="col-2">

            </div>
        </div>
                </div>
            </div>
         </div>
        </div>                                     ---------------------->

                <!---popup---entrega de medicamentos busqueda por receta-->

    <div id="panelPopUpSeleccionReceta" class="panel panel-default" runat="server" visible="false">
        <div id="div3" class="fondo2">
            <div id="div4" class="popup6">
                <div id="Div7" class="panel-heading" runat="server">Detalles</div>
                <div id="Div8" class="panel-body">

                    
                    <asp:GridView ID="gvReservaResultadoBusquedaRecetaEntrega" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
                    <br />
                    <center>
                    <asp:Button ID="btnSeleccionarReceta" runat="server" Text="Seleccionar" CssClass="btn"  OnClick="btnSeleccionarReceta_Click" />
                    <asp:Button ID="btnCerrarSeleccionReceta" runat="server" Text="Cerrar" CssClass="btn"  OnClick="btnCerrarSeleccionReceta_Click" />
                    </center>
                </div>
            </div>
        </div>
    </div>



        
                <!---popup---pop up de caducar medicamento, lista todos los medicamentos a caducar-->

    <div id="popUpMuestraTodosLosMedicamentos" class="panel panel-default" runat="server" visible="false">
        <div id="div12" class="fondo2">
            <div id="div13" class="popup6">
                <div id="Div14" class="panel-heading" runat="server">Medicamentos en el sistema</div>
                <div id="Div15" class="panel-body">

                    
                    <asp:GridView ID="gvMedicamentosEnSistema" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#00AAAD" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
              </asp:GridView>
                    <br />
                    <center>
                    <asp:Button ID="btnSeleccionarMedicamento" runat="server" Text="Seleccionar" CssClass="btn"  OnClick="btnSeleccionarMedicamento_Click" />
                    <asp:Button ID="btnCerrarPopupMedicamentos" runat="server" Text="Cerrar" CssClass="btn"  OnClick="btnCerrarPopupMedicamentos_Click" />
                    </center>
                </div>
            </div>
        </div>
    </div>
    

   




  </div><!--div de todos los popups--->
</div>

 </asp:Content>

