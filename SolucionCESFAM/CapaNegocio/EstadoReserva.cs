using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class EstadoReserva:IPersistente
    {
        public decimal ID_ESTADO { get; set; }
        public string DESCRIPCION_ESTADO { get; set; }

        public EstadoReserva()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_ESTADO = 0;
            this.DESCRIPCION_ESTADO = string.Empty;
        }

        public bool Agregar()
        {
            CapaDatos.ESTADO_RESERVA estado = new CapaDatos.ESTADO_RESERVA();
            try
            {
                estado.ID_ESTADO = this.ID_ESTADO;
                estado.DESCRIPCION_ESTADO = this.DESCRIPCION_ESTADO;

                CommonBC.ModeloCesfam.ESTADO_RESERVA.Add(estado);
                CommonBC.ModeloCesfam.ESTADO_RESERVA.SaveChanges();

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
                EstadoReserva estado = CommonBC.ModeloCesfam.ESTADO_RESERVA.First(es => es.ID_ESTADO == this.ID_ESTADO);
                this.ID_ESTADO = estado.ID_ESTADO;
                this.DESCRIPCION_ESTADO = estado.DESCRIPCION_ESTADO;

                CommonBC.ModeloCesfam.ESTADO_RESERVA.SaveChanges();
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
                EstadoReserva estado = CommonBC.ModeloCesfam.ESTADO_RESERVA.First(es => es.ID_ESTADO == this.ID_ESTADO);
                CommonBC.ModeloCesfam.ESTADO_RESERVA.DeleteObject(estado);
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
                CapaDatos.ESTADO_RESERVA estado =
                    CommonBC.ModeloCesfam.ESTADO_RESERVA.First
                    (
                        es => es.ID_ESTADO == this.ID_ESTADO
                    );

                this.ID_ESTADO = estado.ID_ESTADO;
                this.DESCRIPCION_ESTADO = estado.DESCRIPCION_ESTADO;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
