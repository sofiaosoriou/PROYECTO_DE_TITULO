using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Errores:IPersistente
    {
        public string ID_ERROR { get; set; }
        public string MENSAJE_ERROR { get; set; }
        public short MENSAJERIA_ID_MSJ { get; set; }

        public Errores()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_ERROR = string.Empty;
            this.MENSAJE_ERROR = string.Empty;
            this.MENSAJERIA_ID_MSJ = 0;
        }

        public bool Agregar()
        {
            CapaDatos.ERRORES error = new CapaDatos.ERRORES();
            try
            {
                error.ID_ERROR = this.ID_ERROR;
                error.MENSAJE_ERROR = this.MENSAJE_ERROR;
                error.MENSAJERIA_ID_MSJ = this.MENSAJERIA_ID_MSJ;


                CommonBC.ModeloCesfam.ERRORES.Add(error);
                CommonBC.ModeloCesfam.ERRORES.SaveChanges();

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
                Errores error = CommonBC.ModeloCesfam.ERRORES.First(e => e.ID_ERROR == this.ID_ERROR);
                this.ID_ERROR = error.ID_ERROR;
                this.MENSAJE_ERROR = error.MENSAJE_ERROR;
                this.MENSAJERIA_ID_MSJ = error.MENSAJERIA_ID_MSJ;


                CommonBC.ModeloCesfam.ERRORES.SaveChanges();
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
                Errores error = CommonBC.ModeloCesfam.ERRORES.First(e => e.ID_ERROR == this.ID_ERROR);
                CommonBC.ModeloCesfam.ERRORES.DeleteObject(error);
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
                CapaDatos.ERRORES error =
                    CommonBC.ModeloCesfam.ERRORES.First
                    (
                        e => e.ID_ERROR == this.ID_ERROR
                    );

                this.ID_ERROR = error.ID_ERROR;
                this.MENSAJE_ERROR = error.MENSAJE_ERROR;
                this.MENSAJERIA_ID_MSJ = error.MENSAJERIA_ID_MSJ;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
