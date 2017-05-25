﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VerStock_Medico.aspx.cs" Inherits="VerStock_Medico" %>

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
   
     
    <!-- inicio panel stock -------------------------------------------->
    <div id="Div4" class="panel panel-default" style="margin-left:15px; margin-right:15px;" runat="server">
      <div id="Div5" class="panel-heading" runat="server">Medicamentos</div>
      <div class="panel-body">
         
         <br />

    <div class="row">
        <div class="col-12">
             <label for="cbTipoTratamiento" class="dropdown"> Busqueda de medicamento</label>
        </div>
       
    </div>
    <div class="row"> <!--row-->
            
        
            <div class="col-4">
              <input runat="server" class="form-control" id="txtCodMedicamento" placeholder="Código Medicamento"/>
            </div>
            <div class="col-4">
                <asp:dropdownlist id="ddlMedicamentos" runat="server" cssclass="form-control" height="60%" width="100%"></asp:dropdownlist>
            </div>
            <div class="col-4">
                  <asp:Button ID="btnBuscar" runat="server" Width="95%" Text="Buscar" CssClass="btn btn-default btn-block" BackColor="#0094ff"  style="margin-right:15px; float:right;" ForeColor="White" /> 
            </div>

        </div> <!--row-->
          <br />
        <div class="col-12">
            <label id="Label1" runat="server" class="col-form-label" for="grdMedicamentosEnReceta">Medicamentos encontrados </label>
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
            <div class="col-3">
             </div>
            <div class="col-6">
                            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn" BackColor="#0094ff" Width="100%" aling="center" ForeColor="White"/>
             </div>
            <div class="col-3">
             </div>
        </div>
</div>
</asp:Content>

