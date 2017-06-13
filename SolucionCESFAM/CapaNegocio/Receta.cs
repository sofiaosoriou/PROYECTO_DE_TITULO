using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Receta:IPersistente
    {
        public decimal ID_RECETA { get; set; }
        public string FRECUEN_RECETA { get; set; }
        public string DURACION_RECETA { get; set; }
        public short CANTPASTILLAS_RECETA { get; set; }
        public System.DateTime FECEMISION_RECETA { get; set; }
        public string TIPO_RECETA { get; set; }
        public decimal MEDICO_ID_MEDICO { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }
        public string INDICACIONES { get; set; }

        public Receta()
        {
            Init();
        }

        private void Init()
        {
            this.ID_RECETA = 0;
            this.FRECUEN_RECETA = string.Empty;
            this.DURACION_RECETA = string.Empty;
            this.CANTPASTILLAS_RECETA = 0;
            this.FECEMISION_RECETA = DateTime.Now;
            this.TIPO_RECETA = string.Empty;
            this.MEDICO_ID_MEDICO = 0;
            this.PACIENTE_ID_PACIENTE = 0;
            this.INDICACIONES = string.Empty;

        }

        public bool Agregar()
        {
            CapaDatos.RECETA receta = new CapaDatos.RECETA();
            try
            {
                receta.ID_RECETA = this.ID_RECETA;
                receta.FRECUEN_RECETA = this.FRECUEN_RECETA;
                receta.DURACION_RECETA = this.DURACION_RECETA;
                receta.CANTPASTILLAS_RECETA = this.CANTPASTILLAS_RECETA;
                receta.FECEMISION_RECETA = this.FECEMISION_RECETA;
                receta.TIPO_RECETA = this.TIPO_RECETA;
                receta.MEDICO_ID_MEDICO = this.MEDICO_ID_MEDICO;
                receta.PACIENTE_ID_PACIENTE = this.PACIENTE_ID_PACIENTE;
                receta.INDICACIONES = this.INDICACIONES;

                CommonBC.ModeloCesfam.RECETA.Add(receta);
                CommonBC.ModeloCesfam.RECETA.SaveChanges();

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
                Receta receta = CommonBC.ModeloCesfam.RECETA.First(re => re.ID_RECETA == this.ID_RECETA);
                this.ID_RECETA = receta.ID_RECETA;
                this.FRECUEN_RECETA = receta.FRECUEN_RECETA;
                this.DURACION_RECETA = receta.DURACION_RECETA;
                this.CANTPASTILLAS_RECETA = receta.CANTPASTILLAS_RECETA;
                this.FECEMISION_RECETA = receta.FECEMISION_RECETA;
                this.TIPO_RECETA = receta.TIPO_RECETA;
                this.MEDICO_ID_MEDICO = receta.MEDICO_ID_MEDICO;
                this.PACIENTE_ID_PACIENTE = receta.PACIENTE_ID_PACIENTE;
                this.INDICACIONES = receta.INDICACIONES;

                CommonBC.ModeloCesfam.RECETA.SaveChanges();
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
                Receta receta = CommonBC.ModeloCesfam.RECETA.First(re => re.ID_RECETA == this.ID_RECETA);
                CommonBC.ModeloCesfam.RECETA.DeleteObject(receta);
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
                CapaDatos.RECETA receta =
                    CommonBC.ModeloCesfam.RECETA.First
                    (
                        r => r.ID_RECETA == this.ID_RECETA
                    );

                this.FRECUEN_RECETA = receta.FRECUEN_RECETA;
                this.DURACION_RECETA = receta.DURACION_RECETA;
                this.CANTPASTILLAS_RECETA = receta.CANTPASTILLAS_RECETA;
                this.FECEMISION_RECETA = receta.FECEMISION_RECETA;
                this.TIPO_RECETA = receta.TIPO_RECETA;
                this.MEDICO_ID_MEDICO = receta.MEDICO_ID_MEDICO;
                this.PACIENTE_ID_PACIENTE = receta.PACIENTE_ID_PACIENTE;
                this.INDICACIONES = receta.INDICACIONES;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
