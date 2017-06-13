using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Baja:IPersistente
    {
        public decimal ID_BAJA { get; set; }
        public System.DateTime FECHA_BAJA { get; set; }
        public string MOTIVO_BAJA { get; set; }
        public string OBSERVACIONES_BAJA { get; set; }
        public decimal ESTADO_BAJA { get; set; }

        public Baja()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_BAJA = 0;
            this.FECHA_BAJA = DateTime.Now;
            this.MOTIVO_BAJA = string.Empty;
            this.OBSERVACIONES_BAJA = string.Empty;
            this.ESTADO_BAJA = 0;
        }

        public bool Agregar()
        {
            CapaDatos.BAJA baja = new CapaDatos.BAJA();
            try
            {
                baja.ID_BAJA = this.ID_BAJA;
                baja.FECHA_BAJA = this.FECHA_BAJA;
                baja.MOTIVO_BAJA = this.MOTIVO_BAJA;
                baja.OBSERVACIONES_BAJA = this.OBSERVACIONES_BAJA;
                baja.ESTADO_BAJA = this.ESTADO_BAJA;

                CommonBC.ModeloCesfam.BAJA.Add(baja);
                CommonBC.ModeloCesfam.BAJA.SaveChanges();

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
                Baja baja = CommonBC.ModeloCesfam.BAJA.First(ba => ba.ID_BAJA == this.ID_BAJA);
                this.ID_BAJA = baja.ID_BAJA;
                this.FECHA_BAJA = baja.FECHA_BAJA;
                this.MOTIVO_BAJA = baja.MOTIVO_BAJA;
                this.OBSERVACIONES_BAJA = baja.OBSERVACIONES_BAJA;
                this.ESTADO_BAJA = baja.ESTADO_BAJA;

                CommonBC.ModeloCesfam.BAJA.SaveChanges();
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
                Baja baja = CommonBC.ModeloCesfam.BAJA.First(ba => ba.ID_BAJA == this.ID_BAJA);
                CommonBC.ModeloCesfam.BAJA.DeleteObject(baja);
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
                CapaDatos.BAJA baja =
                    CommonBC.ModeloCesfam.BAJA.First
                    (
                        ba => ba.ID_BAJA == this.ID_BAJA
                    );

                this.ID_BAJA = baja.ID_BAJA;
                this.FECHA_BAJA = baja.FECHA_BAJA;
                this.MOTIVO_BAJA = baja.MOTIVO_BAJA;
                this.OBSERVACIONES_BAJA = baja.OBSERVACIONES_BAJA;
                this.ESTADO_BAJA = baja.ESTADO_BAJA;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
