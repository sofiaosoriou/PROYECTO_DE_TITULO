using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class DetalleReserva:IPersistente
    {
        public decimal RESERVA_ID_RESERVA { get; set; }
        public int MEDICAMENTO_ID_REMEDIO { get; set; }
        public decimal CANTIDAD { get; set; }

        public DetalleReserva()
        {
            this.Init();
        }

        private void Init()
        {
            this.RESERVA_ID_RESERVA = 0;
            this.MEDICAMENTO_ID_REMEDIO = 0;
            this.CANTIDAD = 0;
        }

        public bool Agregar()
        {
            CapaDatos.DETALLE_RESERVA dreserva = new CapaDatos.DETALLE_RESERVA();
            try
            {
                dreserva.RESERVA_ID_RESERVA = this.RESERVA_ID_RESERVA;
                dreserva.MEDICAMENTO_ID_REMEDIO = this.MEDICAMENTO_ID_REMEDIO;
                dreserva.CANTIDAD = this.CANTIDAD;


                CommonBC.ModeloCesfam.DETALLE_RESERVA.Add(dreserva);
                CommonBC.ModeloCesfam.DETALLE_RESERVA.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Modificar()
        {
            try
            {
                DetalleReserva dreserva = CommonBC.ModeloCesfam.DETALLE_RESERVA.First(dr => dr.RESERVA_ID_RESERVA == this.RESERVA_ID_RESERVA);
                this.RESERVA_ID_RESERVA = dreserva.RESERVA_ID_RESERVA;
                this.MEDICAMENTO_ID_REMEDIO = dreserva.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dreserva.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_RESERVA.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Eliminar()
        {
            try
            {
                DetalleReserva dreserva = CommonBC.ModeloCesfam.DETALLE_RESERVA.First(dr => dr.RESERVA_ID_RESERVA == this.RESERVA_ID_RESERVA);
                CommonBC.ModeloCesfam.DETALLE_RESERVA.DeleteObject(dreserva);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                CapaDatos.DETALLE_RESERVA dreserva =
                    CommonBC.ModeloCesfam.DETALLE_RESERVA.First
                    (
                        dr => dr.RESERVA_ID_RESERVA == this.RESERVA_ID_RESERVA
                    );

                this.RESERVA_ID_RESERVA = dreserva.RESERVA_ID_RESERVA;
                this.MEDICAMENTO_ID_REMEDIO = dreserva.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dreserva.CANTIDAD;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
