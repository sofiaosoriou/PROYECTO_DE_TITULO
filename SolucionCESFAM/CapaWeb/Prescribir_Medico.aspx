<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Prescribir_Medico.aspx.cs" Inherits="_Default" %>


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
    <!-- fin div panel datos del paciente------------------------------------------------------------------>
        <div class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server"> <!------------------ panel datos del paciente------------------------------------------>
          <div class="panel-heading">Datos del Paciente</div>
          <div class="panel-body">
                  <div class="row">
                        <div class="col-6">
                        <label class="col-form-label">Código</label>
                        <input runat="server" class="form-control" id="txtCodigoPaciente" placeholder="Código Paciente"/>
                        </div> 
                        <div class="col-6">
                        <label class="col-form-label">Rut</label>
                        <input runat="server" class="form-control" id="Text1" placeholder="Código Paciente"/>
                        </div> 
                  </div>
                  <br /><br />
                  <div class="row">
                      <div class="col-6">
                          <input type="button" class="btn" value="Prescribir Medicamentos" style="background-color:#0094ff; color:white;" />
                      </div>
                  </div>
              </div>
          <br />
    </div> <!-- -----------------------------------fin panel datos del paciente----------------------------------------------->
   
     <!-- inicio div panel detalles------------------------------------------------------------------>
    <div class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div class="panel-heading" runat="server">Detalles</div>
      <div class="panel-body">
        <div class="row"> <!--row-->
            <div class="col-6">
               <label for="cbTipoTratamiento" class="dropdown"> Tipo Tratamiento</label>
               <asp:DropDownList ID="cbTipoTratamiento" runat="server" CssClass="form-control" Height="60%" Width="100%">
                   <asp:ListItem Value="1" Text="Corto"></asp:ListItem>
                   <asp:ListItem Value="2" Text="Largo"></asp:ListItem>
                </asp:DropDownList>  
            </div>
            <div class="col-6">
                    <label for="cbTipoTratamiento" class="dropdown"> Fecha Entrega</label>
                    <div class="input-group date" data-provide="datepicker">
                        <input type="text" id="txtDatePicket" class="form-control" runat="server"/>
                        <div class="input-group-addon" style="background-color:#0094ff;">
                            <span class="glyphicon glyphicon-calendar" ></span>
                        </div>
                    </div>
            </div>
        </div> <!--row-->
        <div class="row"> <!--row -->
            <div class="col-12"> <!-- text area para indicaciones -->
                 <label for="txtIndicaciones">Indicaciones</label>
                 <textarea class="form-control" rows="5" id="txtIndicaciones" runat="server"></textarea>
             </div><!-- fin de text area para indicaciones -->
        </div><!--row -->
        </div> <!-- div panel body -->
    </div> <!-- fin div panel detalles------------------------------------------------------------------>

    <!-- inicio panel medicamentos -------------------------------------------->
    <div class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div class="panel-heading" runat="server">Medicamentos</div>
      <div class="panel-body">
          <br />
          <div class="col-12">
              <table class="table-responsive">
                  <tr>
                    <th style="text-align:center;">Medicamento</th><td> &nbsp;&nbsp;</td>
                    <th style="text-align:center;">Código</th><td> &nbsp;&nbsp;</td>
                    <th style="text-align:center;">Duración</th><td>&nbsp;&nbsp;</td>
                    <th style="text-align:center;">Dosis</th><td> &nbsp;&nbsp;</td>
                    <th style="text-align:center;">Acción</th><td> &nbsp;&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                        <asp:DropDownList ID="ddlMedicamentos" runat="server" CssClass="form-control" Height="60%" width="100%"></asp:DropDownList>
                    </td>
                      <td></td>
                    <td>
                        <asp:TextBox ID="txtCodigoMedicamento" Text="xxxxxx" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                      <td></td>
                    <td>
                        <asp:TextBox ID="txtDuracion" Text="" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                      <td></td>
                    <td>
                        <asp:TextBox ID="txtDosis" Text="" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                      <td></td>
                    <td>
                          <asp:Button ID="btnAgregarMedicamento" runat="server" Text="Agregar" CssClass="btn col-12" BackColor="#0094ff" ForeColor="White" />
                    </td>
                  </tr>
              </table>
          </div>
         <br />
        <div class="col-12">
            <label runat="server" class="col-form-label" for="grdMedicamentosEnReceta">Medicamentos en receta </label>
          <asp:GridView ID="grdMedicamentosEnReceta" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="table-layout:fixed" CssClass="table">
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
          </div>
      </div>
    </div> <!-- fin panel medicamentos -------------------------------------------->

    
        <div class="row">
            <div class="col-6">
            <asp:Button ID="btnEmitirReceta" runat="server" Width="95%" Text="Emitir Prescripción" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-left:15px; float:left;" ForeColor="White" />
            </div>
            <div class="col-6">
                <asp:Button ID="btnCancelar" runat="server" Width="95%" Text="Cancelar" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-right:15px; float:right;" ForeColor="White" />
            </div>
        </div>
</div>


</asp:Content>

