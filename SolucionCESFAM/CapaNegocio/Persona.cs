using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public class Persona:IPersistente
    {
        public string RUT_PERSONA { get; set; }
        public string NOM_PERSONA { get; set; }
        public string APP_PERSONA { get; set; }
        public string APM_PERSONA { get; set; }
        public string FONO_PERSONA { get; set; }
        public string DIRECCION_PERSONA { get; set; }
        public System.DateTime FECNAC_PERSONA { get; set; }
        public string SEXO_PERSONA { get; set; }
        public short COMUNA_ID_COMUNA { get; set; }

        public Persona() 
        {
            this.Init();
        }

        private void Init()
        {
            this.RUT_PERSONA = string.Empty;
            this.NOM_PERSONA = string.Empty;
            this.APP_PERSONA = string.Empty;
            this.APM_PERSONA = string.Empty;
            this.FONO_PERSONA = string.Empty;
            this.DIRECCION_PERSONA = string.Empty;
            this.FECNAC_PERSONA = DateTime.Now;
            this.SEXO_PERSONA = string.Empty;
            this.COMUNA_ID_COMUNA = 0;
        }

        public bool Agregar()
        {
            CapaDatos.PERSONA persona = new CapaDatos.PERSONA();
            try
            {
                persona.RUT_PERSONA = this.RUT_PERSONA;
                persona.NOM_PERSONA = this.NOM_PERSONA;
                persona.APP_PERSONA = this.APP_PERSONA;
                persona.APM_PERSONA = this.APM_PERSONA;
                persona.FONO_PERSONA = this.FONO_PERSONA;
                persona.DIRECCION_PERSONA = this.DIRECCION_PERSONA;
                persona.FECNAC_PERSONA = this.FECNAC_PERSONA;
                persona.SEXO_PERSONA = this.SEXO_PERSONA;
                persona.COMUNA_ID_COMUNA = this.COMUNA_ID_COMUNA;

                CommonBC.ModeloCesfam.PERSONA.Add(persona);
                CommonBC.ModeloCesfam.PERSONA.SaveChanges();

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
                Persona persona = CommonBC.ModeloCesfam.PERSONA.First(pe => pe.RUT_PERSONA == this.RUT_PERSONA);
                this.RUT_PERSONA = persona.RUT_PERSONA;
                this.NOM_PERSONA = persona.NOM_PERSONA;
                this.APP_PERSONA = persona.APP_PERSONA;
                this.APM_PERSONA = persona.APM_PERSONA;
                this.FONO_PERSONA = persona.FONO_PERSONA;
                this.DIRECCION_PERSONA = persona.DIRECCION_PERSONA;
                this.FECNAC_PERSONA = persona.FECNAC_PERSONA;
                this.SEXO_PERSONA = persona.SEXO_PERSONA;
                this.COMUNA_ID_COMUNA = persona.COMUNA_ID_COMUNA;

                CommonBC.ModeloCesfam.PERSONA.SaveChanges();
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
                Persona persona = CommonBC.ModeloCesfam.PERSONA.First(pe => pe.RUT_PERSONA == this.RUT_PERSONA);
                CommonBC.ModeloCesfam.PERSONA.DeleteObject(persona);
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
                CapaDatos.PERSONA persona =
                    CommonBC.ModeloCesfam.PERSONA.First
                    (
                        pe => pe.RUT_PERSONA == this.RUT_PERSONA
                    );

                this.RUT_PERSONA = persona.RUT_PERSONA;
                this.NOM_PERSONA = persona.NOM_PERSONA;
                this.APP_PERSONA = persona.APP_PERSONA;
                this.APM_PERSONA = persona.APM_PERSONA;
                this.FONO_PERSONA = persona.FONO_PERSONA;
                this.DIRECCION_PERSONA = persona.DIRECCION_PERSONA;
                this.FECNAC_PERSONA = persona.FECNAC_PERSONA;
                this.SEXO_PERSONA = persona.SEXO_PERSONA;
                this.COMUNA_ID_COMUNA = persona.COMUNA_ID_COMUNA;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
