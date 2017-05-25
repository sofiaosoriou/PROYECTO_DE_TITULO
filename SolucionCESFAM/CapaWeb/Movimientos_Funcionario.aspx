<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Movimientos_Funcionario.aspx.cs" Inherits="Movimientos_Funcionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        $(document).ready(function () {
            $(".datetimepicker7").datepicker({ format: 'dd/mm/yyyy', autoclose: true, todayBtn: 'linked' })
        });
    </script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
  
    <script src="js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="bootstrap-datepicker.de.js" charset="UTF-8"></script>

    <script type="text/javascript" src="JS/jquery-1.10.2.min.js"></script>
    <link href="DatePicker/bootstrap-datepicker.css" rel="stylesheet"/>
	<script src="DatePicker/bootstrap-datepicker.js"></script>

    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.0/css/bootstrap-datepicker3.standalone.css" />
    <script type="text/javascript" src="Scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    
    <script src="js/bootstrap.js"></script>

  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>


<div class="container">
    <!-- inicio panel MOVIMIENTOS ----este panel es fijo---------------------------------------->
    <div id="Div1" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="Div2" class="panel-heading" runat="server">Movimientos</div>
      <div class="panel-body">
          <br />
          <div class="row">
              <div class="col-6">
                <label for="cbOperacion" class="dropdown"> Seleccione operación</label>
                 <asp:DropDownList ID="cbTipoTratamiento" DataTextField="Operacion" runat="server" CssClass="form-control" Height="60%" Width="100%">
                   <asp:ListItem Value="1" Text="Entrega"></asp:ListItem>
                   <asp:ListItem Value="2" Text="Reserva"></asp:ListItem>
                   <asp:ListItem Value="3" Text="Caducar"></asp:ListItem>
                   <asp:ListItem Value="4" Text="Ingresar"></asp:ListItem>
                </asp:DropDownList>  
               </div>
          </div>
         <br />
   
      </div>
    </div> <!-- fin panel MOVIMEINTOS------------------este panel es fijo-------------------->    


    <!-- ENTREGA -----------------------ENTREGA-------------------ENTREGA------->
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
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="100%" Height="60%" >
                      <asp:ListItem Value="rutpaciente">Rut Paciente</asp:ListItem>
                      <asp:ListItem Value="codreceta">Receta</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="col-4">
                  <label for="txtCodNomPrescripcion" class="dropdown" style="color:white;"> label para ocupar espacio en blanco</label>
                  <asp:Button ID="btnBuscarEntrega" runat="server" Text="Buscar" CssClass="btn" BackColor="#0094ff" ForeColor="White" Width="100%" />
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
                <HeaderStyle BackColor="#0094ff" Font-Bold="True" ForeColor="White" />
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
                    <HeaderStyle BackColor="#0094ff" Font-Bold="True" ForeColor="White" />
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
            <asp:Button ID="btnEntregarMedicamentos" runat="server" Width="95%" Text="Entregar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarEntrega" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
        </div>
    <br />
<!-- fin seccion ENTREGA---------------------ENTREGA.....................ENTREGA------>  <!--  ENTREGA---------------------ENTREGA.....................ENTREGA------>  <!--  ENTREGA---------------------ENTREGA.....................ENTREGA------>
<!-- inicio panel RESERVA -----------------------RESERVA-------------------RESERVA-------><!-- inicio seccion RESERVA -----------------------RESERVA-------------------RESERVA-------><!-- inicio panel RESERVA -----------------------RESERVA-------------------RESERVA------->
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
                  <asp:Button ID="btnBuscarReserva" runat="server" Text="Buscar" CssClass="btn" BackColor="#0094ff" ForeColor="White" Width="100%" />
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
                <HeaderStyle BackColor="#0094ff" Font-Bold="True" ForeColor="White" />
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
                    <HeaderStyle BackColor="#0094ff" Font-Bold="True" ForeColor="White" />
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
            <asp:Button ID="btnReservarMedicamentis" runat="server" Width="95%" Text="Reservar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarReserva" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
     </div>
    <br />
<!-- fin seccion RESERVA---------------------RESERVA.....................RESERVA------><!-- inicio seccion RESERVA -----------------------RESERVA-------------------RESERVA-------><!-- inicio panel RESERVA -----------------------RESERVA-------------------RESERVA------->
<!-- inicio seccion CADUCAR -----------------------CADUCAR-------------------CADUCAR------->     <!-- inicio seccion CADUCAR -----------------------CADUCAR-------------------CADUCAR------->     <!-- inicio panel CADUCAR -----------------------CADUCAR-------------------CADUCAR------->
 <div id="panelDetallesCaducar" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
     <div id="panelDetallesCaducarhead" class="panel-heading" runat="server">Detalles</div>
      <div id="panelDetallesCaducarbody" class="panel-body">
          <div class="row">
              <div class="col-6">
                  <label for="txtMotivo" class="dropdown"> Motivo de caducidad</label>
                  <input runat="server" class="form-control" id="txtMotivo" placeholder="Motivo caducidad"/>
              </div>
              <div class="col-6">
                  <label for="txtCriterio" class="dropdown"> Motivo</label>
                  <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="100%" Height="60%" >
                      <asp:ListItem Value="rutpaciente">Mal Estado</asp:ListItem>
                      <asp:ListItem Value="codreceta">Envase Dañado</asp:ListItem>
                      <asp:ListItem Value="codreceta">Otro</asp:ListItem>
                  </asp:DropDownList>
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
                  <asp:Button ID="btnAgregarMedicamentoCaducar" runat="server" Text="Agregar Medicamento" CssClass="btn" ackColor="#0094ff" ForeColor="White" Width="100%" />
              </div>
              <div class="col-3">

              </div>
           </div>
          </div>
       </div>
       <div class="row">
            <div class="col-6">
            <asp:Button ID="btnCaducarMedicamentos" runat="server" Width="95%" Text="Caducar Medicamentos" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelarCaducar" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
     </div>
    <!---panel medicamentos a caducar -->

    
    
 <!-- fin seccion CADUCAR---------------------CADUCAR.....................CADUCAR------>



</asp:Content>

