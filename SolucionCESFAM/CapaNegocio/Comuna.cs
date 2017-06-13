using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Comuna:IPersistente
    {
        public short ID_COMUNA { get; set; }
        public string NOM_COMUNA { get; set; }

        public Comuna()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_COMUNA = 0;
            this.NOM_COMUNA = string.Empty;
        }

        public bool Agregar()
        {
            CapaDatos.COMUNA comuna = new CapaDatos.COMUNA();
            try
            {
                comuna.ID_COMUNA = this.ID_COMUNA;
                comuna.NOM_COMUNA = this.NOM_COMUNA;

                CommonBC.ModeloCesfam.COMUNA.Add(comuna);
                CommonBC.ModeloCesfam.COMUNA.SaveChanges();

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
                Comuna comuna = CommonBC.ModeloCesfam.COMUNA.First(co => co.ID_COMUNA == this.ID_COMUNA);
                this.ID_COMUNA = comuna.ID_COMUNA;
                this.NOM_COMUNA = comuna.NOM_COMUNA;

                CommonBC.ModeloCesfam.COMUNA.SaveChanges();
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
                Comuna comuna = CommonBC.ModeloCesfam.COMUNA.First(co => co.ID_COMUNA == this.ID_COMUNA);
                CommonBC.ModeloCesfam.COMUNA.DeleteObject(comuna);
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
                CapaDatos.COMUNA comuna =
                    CommonBC.ModeloCesfam.COMUNA.First
                    (
                        co => co.ID_COMUNA == this.ID_COMUNA
                    );

                this.ID_COMUNA = comuna.ID_COMUNA;
                this.NOM_COMUNA = comuna.NOM_COMUNA;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
