using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Medicamento:IPersistente
    {
        public int ID_REMEDIO { get; set; }
        public string NOMBRE_REMEDIO { get; set; }
        public string DESCRIPCION_REMEDIO { get; set; }
        public string FABRICANTE_REMEDIO { get; set; }
        public string TIPO_REMEDIO { get; set; }
        public string COMPONENTES_REMEDIO { get; set; }
        public string CONTENIDO_REMEDIO { get; set; }
        public short CANTCONTENIDO_REMEDIO { get; set; }
        public string UNIDADMEDIDA_REMEDIO { get; set; }
        public decimal GRAMAJE_REMEDIO { get; set; }
        public short STOCKFISICO_REMEDIO { get; set; }
        public short STOCKDIPONIBLE_REMEDIO { get; set; }

        public Medicamento()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_REMEDIO = 0;
            this.NOMBRE_REMEDIO = string.Empty;
            this.DESCRIPCION_REMEDIO = string.Empty;
            this.FABRICANTE_REMEDIO = string.Empty;
            this.TIPO_REMEDIO = string.Empty;
            this.COMPONENTES_REMEDIO = string.Empty;
            this.CONTENIDO_REMEDIO = string.Empty;
            this.CANTCONTENIDO_REMEDIO = 0;
            this.UNIDADMEDIDA_REMEDIO = string.Empty;
            this.GRAMAJE_REMEDIO = 0;
            this.STOCKFISICO_REMEDIO = 0;
            this.STOCKDIPONIBLE_REMEDIO = 0;
        }


        public bool Agregar()
        {
            CapaDatos.MEDICAMENTO medicamento = new CapaDatos.MEDICAMENTO();
            try
            {
                medicamento.ID_REMEDIO = this.ID_REMEDIO;
                medicamento.NOMBRE_REMEDIO = this.NOMBRE_REMEDIO;
                medicamento.DESCRIPCION_REMEDIO = this.DESCRIPCION_REMEDIO;
                medicamento.FABRICANTE_REMEDIO = this.FABRICANTE_REMEDIO;
                medicamento.TIPO_REMEDIO = this.TIPO_REMEDIO;
                medicamento.COMPONENTES_REMEDIO = this.COMPONENTES_REMEDIO;
                medicamento.CONTENIDO_REMEDIO = this.CONTENIDO_REMEDIO;
                medicamento.CANTCONTENIDO_REMEDIO = this.CANTCONTENIDO_REMEDIO;
                medicamento.UNIDADMEDIDA_REMEDIO = this.UNIDADMEDIDA_REMEDIO;
                medicamento.GRAMAJE_REMEDIO = this.GRAMAJE_REMEDIO;
                medicamento.STOCKFISICO_REMEDIO = this.STOCKFISICO_REMEDIO;
                medicamento.STOCKDIPONIBLE_REMEDIO = this.STOCKDIPONIBLE_REMEDIO;

                CommonBC.ModeloCesfam.MEDICAMENTO.Add(medicamento);
                CommonBC.ModeloCesfam.MEDICAMENTO.SaveChanges();

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
                Medicamento medicamento = CommonBC.ModeloCesfam.MEDICAMENTO.First(me => me.ID_REMEDIO == this.ID_REMEDIO);
                this.ID_REMEDIO = medicamento.ID_REMEDIO;
                this.NOMBRE_REMEDIO = medicamento.NOMBRE_REMEDIO;
                this.DESCRIPCION_REMEDIO = medicamento.DESCRIPCION_REMEDIO;
                this.FABRICANTE_REMEDIO = medicamento.FABRICANTE_REMEDIO;
                this.TIPO_REMEDIO = medicamento.TIPO_REMEDIO;
                this.COMPONENTES_REMEDIO = medicamento.COMPONENTES_REMEDIO;
                this.CONTENIDO_REMEDIO = medicamento.CONTENIDO_REMEDIO;
                this.CANTCONTENIDO_REMEDIO = medicamento.CANTCONTENIDO_REMEDIO;
                this.UNIDADMEDIDA_REMEDIO = medicamento.UNIDADMEDIDA_REMEDIO;
                this.GRAMAJE_REMEDIO = medicamento.GRAMAJE_REMEDIO;
                this.STOCKFISICO_REMEDIO = medicamento.STOCKFISICO_REMEDIO;
                this.STOCKDIPONIBLE_REMEDIO = medicamento.STOCKDIPONIBLE_REMEDIO;

                CommonBC.ModeloCesfam.MEDICAMENTO.SaveChanges();
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
                Medicamento medicamento = CommonBC.ModeloCesfam.MEDICAMENTO.First(me => me.ID_REMEDIO == this.ID_REMEDIO);
                CommonBC.ModeloCesfam.MEDICAMENTO.DeleteObject(medicamento);
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
                CapaDatos.MEDICAMENTO medicamento =
                    CommonBC.ModeloCesfam.MEDICAMENTO.First
                    (
                        me => me.ID_REMEDIO == this.ID_REMEDIO
                    );

                this.ID_REMEDIO = medicamento.ID_REMEDIO;
                this.NOMBRE_REMEDIO = medicamento.NOMBRE_REMEDIO;
                this.DESCRIPCION_REMEDIO = medicamento.DESCRIPCION_REMEDIO;
                this.FABRICANTE_REMEDIO = medicamento.FABRICANTE_REMEDIO;
                this.TIPO_REMEDIO = medicamento.TIPO_REMEDIO;
                this.COMPONENTES_REMEDIO = medicamento.COMPONENTES_REMEDIO;
                this.CONTENIDO_REMEDIO = medicamento.CONTENIDO_REMEDIO;
                this.CANTCONTENIDO_REMEDIO = medicamento.CANTCONTENIDO_REMEDIO;
                this.UNIDADMEDIDA_REMEDIO = medicamento.UNIDADMEDIDA_REMEDIO;
                this.GRAMAJE_REMEDIO = medicamento.GRAMAJE_REMEDIO;
                this.STOCKFISICO_REMEDIO = medicamento.STOCKFISICO_REMEDIO;
                this.STOCKDIPONIBLE_REMEDIO = medicamento.STOCKDIPONIBLE_REMEDIO;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
