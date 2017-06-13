using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Tutor : IPersistente
    {
        public string RUT_TUTOR { get; set; }
        public string NOM_TUTOR { get; set; }
        public string APP_TUTOR { get; set; }
        public string APM_TUTOR { get; set; }
        public System.DateTime FECNAC_TUTOR { get; set; }
        public string SEXO_TUTOR { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }

        //public virtual PACIENTE PACIENTE { get; set; }


        public Tutor()
        {
            Init();
        }

        private void Init()
        {
            this.RUT_TUTOR = string.Empty;
            this.NOM_TUTOR = string.Empty;
            this.APP_TUTOR = string.Empty;
            this.APM_TUTOR = string.Empty;
            this.FECNAC_TUTOR = DateTime.Today;
            this.SEXO_TUTOR = string.Empty;
            this.PACIENTE_ID_PACIENTE = 0;

        }

        public bool Agregar()
        {
            CapaDatos.TUTOR tutor = new CapaDatos.TUTOR();
            try
            {
                tutor.RUT_TUTOR = this.RUT_TUTOR;
                tutor.NOM_TUTOR = this.NOM_TUTOR;
                tutor.APP_TUTOR = this.APP_TUTOR;
                tutor.APM_TUTOR = this.APM_TUTOR;
                tutor.FECNAC_TUTOR = this.FECNAC_TUTOR;
                tutor.SEXO_TUTOR = this.SEXO_TUTOR;
                tutor.PACIENTE_ID_PACIENTE = this.PACIENTE_ID_PACIENTE;

                CommonBC.ModeloCesfam.TUTOR.Add(tutor);
                CommonBC.ModeloCesfam.TUTOR.SaveChanges();

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
                Tutor tutor = CommonBC.ModeloCesfam.TUTOR.First(tu => tu.RUT_TUTOR == this.RUT_TUTOR);
                this.RUT_TUTOR = tutor.RUT_TUTOR;
                this.NOM_TUTOR = tutor.NOM_TUTOR;
                this.APP_TUTOR = tutor.APP_TUTOR;
                this.APM_TUTOR = tutor.APM_TUTOR;
                this.FECNAC_TUTOR = tutor.FECNAC_TUTOR;
                this.SEXO_TUTOR = tutor.SEXO_TUTOR;
                this.PACIENTE_ID_PACIENTE = tutor.PACIENTE_ID_PACIENTE;

                CommonBC.ModeloCesfam.TUTOR.SaveChanges();
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
                Tutor tutor = CommonBC.ModeloCesfam.TUTOR.First(tu => tu.RUT_TUTOR == this.RUT_TUTOR);
                CommonBC.ModeloCesfam.TUTOR.DeleteObject(tutor);
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
                CapaDatos.TUTOR tutor =
                    CommonBC.ModeloCesfam.TUTOR.First
                    (
                        tu => tu.RUT_TUTOR == this.RUT_TUTOR
                    );

                this.RUT_TUTOR = tutor.RUT_TUTOR;
                this.NOM_TUTOR = tutor.NOM_TUTOR;
                this.APP_TUTOR = tutor.APP_TUTOR;
                this.APM_TUTOR = tutor.APM_TUTOR;
                this.FECNAC_TUTOR = tutor.FECNAC_TUTOR;
                this.SEXO_TUTOR = tutor.SEXO_TUTOR;
                this.PACIENTE_ID_PACIENTE = tutor.PACIENTE_ID_PACIENTE;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
