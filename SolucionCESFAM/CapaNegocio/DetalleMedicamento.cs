using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class DetalleMedicamento:IPersistente
    {
        public decimal RECETA_ID_RECETA { get; set; }
        public int MEDICAMENTO_ID_REMEDIO { get; set; }
        public decimal CANTIDAD { get; set; }

        public DetalleMedicamento()
        {
            this.Init();
        }

        private void Init()
        {
            this.RECETA_ID_RECETA = 0;
            this.MEDICAMENTO_ID_REMEDIO = 0;
            this.CANTIDAD = 0;
        }

        public bool Agregar()
        {
            CapaDatos.DETALLE_MEDICAMENTO dmedicamento = new CapaDatos.DETALLE_MEDICAMENTO();
            try
            {
                dmedicamento.RECETA_ID_RECETA = this.RECETA_ID_RECETA;
                dmedicamento.MEDICAMENTO_ID_REMEDIO = this.MEDICAMENTO_ID_REMEDIO;
                dmedicamento.CANTIDAD = this.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.Add(dmedicamento);
                CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.SaveChanges();

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
                DetalleMedicamento dmedicamento = CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.First(dm => dm.RECETA_ID_RECETA == this.RECETA_ID_RECETA);
                this.RECETA_ID_RECETA = dmedicamento.RECETA_ID_RECETA;
                this.MEDICAMENTO_ID_REMEDIO = dmedicamento.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dmedicamento.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.SaveChanges();
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
                DetalleMedicamento dmedicamento = CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.First(dm => dm.RECETA_ID_RECETA == this.RECETA_ID_RECETA);
                CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.DeleteObject(dmedicamento);
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
                CapaDatos.DETALLE_MEDICAMENTO dmedicamento =
                    CommonBC.ModeloCesfam.DETALLE_MEDICAMENTO.First
                    (
                        dm => dm.RECETA_ID_RECETA == this.RECETA_ID_RECETA
                    );

                this.RECETA_ID_RECETA = dmedicamento.RECETA_ID_RECETA;
                this.MEDICAMENTO_ID_REMEDIO = dmedicamento.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dmedicamento.CANTIDAD;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
