using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Funcionario:IPersistente
    {
        public decimal ID_FUNCIONARIO { get; set; }
        public string CORREO_FUNCIONARIO { get; set; }
        public string TEL_FUNCIONARIO { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }

        public Funcionario()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_FUNCIONARIO = 0;
            this.CORREO_FUNCIONARIO = string.Empty;
            this.TEL_FUNCIONARIO = string.Empty;
            this.PERSONA_RUT_PERSONA = string.Empty;
        }

        public bool Agregar()
        {
            CapaDatos.FUNCIONARIO funcionario = new CapaDatos.FUNCIONARIO();
            try
            {
                funcionario.ID_FUNCIONARIO = this.ID_FUNCIONARIO;
                funcionario.CORREO_FUNCIONARIO = this.CORREO_FUNCIONARIO;
                funcionario.TEL_FUNCIONARIO = this.TEL_FUNCIONARIO;
                funcionario.PERSONA_RUT_PERSONA = this.PERSONA_RUT_PERSONA;

                CommonBC.ModeloCesfam.FUNCIONARIO.Add(funcionario);
                CommonBC.ModeloCesfam.FUNCIONARIO.SaveChanges();

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
                Funcionario funcionario = CommonBC.ModeloCesfam.FUNCIONARIO.First(fu => fu.ID_FUNCIONARIO == this.ID_FUNCIONARIO);
                this.ID_FUNCIONARIO = funcionario.ID_FUNCIONARIO;
                this.CORREO_FUNCIONARIO = funcionario.CORREO_FUNCIONARIO;
                this.TEL_FUNCIONARIO = funcionario.TEL_FUNCIONARIO;
                this.PERSONA_RUT_PERSONA = funcionario.PERSONA_RUT_PERSONA;

                CommonBC.ModeloCesfam.FUNCIONARIO.SaveChanges();
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
                Funcionario funcionario = CommonBC.ModeloCesfam.FUNCIONARIO.First(fu => fu.ID_FUNCIONARIO == this.ID_FUNCIONARIO);
                CommonBC.ModeloCesfam.RECETA.DeleteObject(funcionario);
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
                CapaDatos.FUNCIONARIO funcionario =
                    CommonBC.ModeloCesfam.FUNCIONARIO.First
                    (
                        fu => fu.ID_FUNCIONARIO == this.ID_FUNCIONARIO
                    );

                this.ID_FUNCIONARIO = funcionario.ID_FUNCIONARIO;
                this.CORREO_FUNCIONARIO = funcionario.CORREO_FUNCIONARIO;
                this.TEL_FUNCIONARIO = funcionario.TEL_FUNCIONARIO;
                this.PERSONA_RUT_PERSONA = funcionario.PERSONA_RUT_PERSONA;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
