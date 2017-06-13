using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Paciente:IPersistente
    {
        public decimal ID_PACIENTE { get; set; }
        public string EMAIL_PACIENTE { get; set; }
        public string TEL_PACIENTE { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }

        public Paciente()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_PACIENTE = 0;
            this.EMAIL_PACIENTE = string.Empty;
            this.TEL_PACIENTE = string.Empty;
            this.PERSONA_RUT_PERSONA = string.Empty;
        }



        public bool Agregar()
        {
            CapaDatos.PACIENTE paciente = new CapaDatos.PACIENTE();
            try
            {
                paciente.ID_PACIENTE = this.ID_PACIENTE;
                paciente.EMAIL_PACIENTE = this.EMAIL_PACIENTE;
                paciente.TEL_PACIENTE = this.TEL_PACIENTE;
                paciente.PERSONA_RUT_PERSONA = this.PERSONA_RUT_PERSONA;

                CommonBC.ModeloCesfam.PACIENTE.Add(paciente);
                CommonBC.ModeloCesfam.PACIENTE.SaveChanges();

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
                Paciente paciente = CommonBC.ModeloCesfam.PACIENTE.First(pa => pa.ID_PACIENTE == this.ID_PACIENTE);
                this.ID_PACIENTE = paciente.ID_PACIENTE;
                this.EMAIL_PACIENTE = paciente.EMAIL_PACIENTE;
                this.TEL_PACIENTE = paciente.TEL_PACIENTE;
                this.PERSONA_RUT_PERSONA = paciente.PERSONA_RUT_PERSONA;

                CommonBC.ModeloCesfam.PACIENTE.SaveChanges();
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
                Paciente paciente = CommonBC.ModeloCesfam.PACIENTE.First(pa => pa.ID_PACIENTE == this.ID_PACIENTE);
                CommonBC.ModeloCesfam.PACIENTE.DeleteObject(paciente);
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
                CapaDatos.PACIENTE paciente =
                    CommonBC.ModeloCesfam.PACIENTE.First
                    (
                        pa => pa.ID_PACIENTE == this.ID_PACIENTE
                    );

                this.ID_PACIENTE = paciente.ID_PACIENTE;
                this.EMAIL_PACIENTE = paciente.EMAIL_PACIENTE;
                this.TEL_PACIENTE = paciente.TEL_PACIENTE;
                this.PERSONA_RUT_PERSONA = paciente.PERSONA_RUT_PERSONA;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
