using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Medico:IPersistente
    {
        public decimal ID_MEDICO { get; set; }
        public string ESPECIALIDAD_MEDICO { get; set; }
        public string CORREO_MEDICO { get; set; }
        public string TEL_MEDICO { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }

        public Medico()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_MEDICO = 0;
            this.ESPECIALIDAD_MEDICO = string.Empty;
            this.CORREO_MEDICO = string.Empty;
            this.TEL_MEDICO = string.Empty;
            this.PERSONA_RUT_PERSONA = string.Empty;
        }

        public bool Agregar()
        {
            CapaDatos.MEDICO medico = new CapaDatos.MEDICO();
            try
            {
                medico.ID_MEDICO = this.ID_MEDICO;
                medico.ESPECIALIDAD_MEDICO = this.ESPECIALIDAD_MEDICO;
                medico.CORREO_MEDICO = this.CORREO_MEDICO;
                medico.TEL_MEDICO = this.TEL_MEDICO;
                medico.PERSONA_RUT_PERSONA = this.PERSONA_RUT_PERSONA;

                CommonBC.ModeloCesfam.MEDICO.Add(medico);
                CommonBC.ModeloCesfam.MEDICO.SaveChanges();

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
                Medico medico = CommonBC.ModeloCesfam.MEDICO.First(me => me.ID_MEDICO == this.ID_MEDICO);
                this.ID_MEDICO = medico.ID_MEDICO;
                this.ESPECIALIDAD_MEDICO = medico.ESPECIALIDAD_MEDICO;
                this.CORREO_MEDICO = medico.CORREO_MEDICO;
                this.TEL_MEDICO = medico.TEL_MEDICO;
                this.PERSONA_RUT_PERSONA = medico.PERSONA_RUT_PERSONA;

                CommonBC.ModeloCesfam.MEDICO.SaveChanges();
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
                Medico medico = CommonBC.ModeloCesfam.MEDICO.First(me => me.ID_MEDICO == this.ID_MEDICO);
                CommonBC.ModeloCesfam.MEDICO.DeleteObject(medico);
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
                CapaDatos.MEDICO medico =
                    CommonBC.ModeloCesfam.MEDICO.First
                    (
                        me => me.ID_MEDICO == this.ID_MEDICO
                    );

                this.ID_MEDICO = medico.ID_MEDICO;
                this.ESPECIALIDAD_MEDICO = medico.ESPECIALIDAD_MEDICO;
                this.CORREO_MEDICO = medico.CORREO_MEDICO;
                this.TEL_MEDICO = medico.TEL_MEDICO;
                this.PERSONA_RUT_PERSONA = medico.PERSONA_RUT_PERSONA;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
