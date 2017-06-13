using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class DetalleBaja:IPersistente
    {
        public decimal BAJA_ID_BAJA { get; set; }
        public int MEDICAMENTO_ID_REMEDIO { get; set; }
        public decimal CANTIDAD { get; set; }

        public DetalleBaja()
        {
            this.Init();
        }

        private void Init()
        {
            this.BAJA_ID_BAJA = 0;
            this.MEDICAMENTO_ID_REMEDIO = 0;
            this.CANTIDAD = 0;
        }

        public bool Agregar()
        {
            CapaDatos.DETALLE_BAJA dbaja = new CapaDatos.DETALLE_BAJA();
            try
            {
                dbaja.BAJA_ID_BAJA = this.BAJA_ID_BAJA;
                dbaja.MEDICAMENTO_ID_REMEDIO = this.MEDICAMENTO_ID_REMEDIO;
                dbaja.CANTIDAD = this.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_BAJA.Add(dbaja);
                CommonBC.ModeloCesfam.DETALLE_BAJA.SaveChanges();

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
                DetalleBaja dbaja = CommonBC.ModeloCesfam.DETALLE_BAJA.First(db => db.BAJA_ID_BAJA == this.BAJA_ID_BAJA);
                this.BAJA_ID_BAJA = dbaja.BAJA_ID_BAJA;
                this.MEDICAMENTO_ID_REMEDIO = dbaja.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dbaja.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_BAJA.SaveChanges();
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
                DetalleBaja dbaja = CommonBC.ModeloCesfam.DETALLE_BAJA.First(db => db.BAJA_ID_BAJA == this.BAJA_ID_BAJA);
                CommonBC.ModeloCesfam.DETALLE_BAJA.DeleteObject(dbaja);
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
                CapaDatos.DETALLE_BAJA dbaja =
                    CommonBC.ModeloCesfam.DETALLE_BAJA.First
                    (
                        db => db.BAJA_ID_BAJA == this.BAJA_ID_BAJA
                    );

                this.BAJA_ID_BAJA = dbaja.BAJA_ID_BAJA;
                this.MEDICAMENTO_ID_REMEDIO = dbaja.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dbaja.CANTIDAD;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
