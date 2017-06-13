using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Perfil:IPersistente
    {
        public short ID_PERFIL { get; set; }
        public string NOM_PERFIL { get; set; }

        //public virtual ICollection<USUARIO> USUARIO { get; set; }

        public Perfil()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_PERFIL = 0;
            this.NOM_PERFIL = string.Empty;
        }

        public bool Agregar()
        {
            CapaDatos.PERFIL perfil = new CapaDatos.PERFIL();
            try
            {
                perfil.ID_PERFIL = this.ID_PERFIL;
                perfil.NOM_PERFIL = this.NOM_PERFIL;

                CommonBC.ModeloCesfam.RECETA.Add(perfil);
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
                Perfil perfil = CommonBC.ModeloCesfam.PERFIL.First(pe => pe.ID_PERFIL == this.ID_PERFIL);
                this.ID_PERFIL = perfil.ID_PERFIL;
                this.NOM_PERFIL = perfil.NOM_PERFIL;

                CommonBC.ModeloCesfam.PERFIL.SaveChanges();
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
                Perfil perfil = CommonBC.ModeloCesfam.PERFIL.First(pe => pe.ID_PERFIL == this.ID_PERFIL);
                CommonBC.ModeloCesfam.PERFIL.DeleteObject(perfil);
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
                CapaDatos.PERFIL perfil =
                    CommonBC.ModeloCesfam.PERFIL.First
                    (
                        pe => pe.ID_PERFIL == this.ID_PERFIL
                    );

                this.ID_PERFIL = perfil.ID_PERFIL;
                this.NOM_PERFIL = perfil.NOM_PERFIL;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
