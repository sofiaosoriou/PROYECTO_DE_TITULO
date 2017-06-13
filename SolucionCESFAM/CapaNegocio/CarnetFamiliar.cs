using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class CarnetFamiliar:IPersistente
    {
        public short ID_FAMILIAR { get; set; }
        public string SECTOR_FAMILIAR { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }

        public CarnetFamiliar()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_FAMILIAR = 0;
            this.SECTOR_FAMILIAR = string.Empty;
            this.PACIENTE_ID_PACIENTE = 0;
        }

        public bool Agregar()
        {
            CapaDatos.CARNET_FAMILIAR familiar = new CapaDatos.CARNET_FAMILIAR();
            try
            {
                familiar.ID_FAMILIAR = this.ID_FAMILIAR;
                familiar.SECTOR_FAMILIAR = this.SECTOR_FAMILIAR;
                familiar.PACIENTE_ID_PACIENTE = this.PACIENTE_ID_PACIENTE;

                CommonBC.ModeloCesfam.CARNET_FAMILIAR.Add(familiar);
                CommonBC.ModeloCesfam.CARNET_FAMILIAR.SaveChanges();

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
                CarnetFamiliar familiar = CommonBC.ModeloCesfam.CARNET_FAMILIAR.First(cf => cf.ID_FAMILIAR == this.ID_FAMILIAR);
                this.ID_FAMILIAR = familiar.ID_FAMILIAR;
                this.SECTOR_FAMILIAR = familiar.SECTOR_FAMILIAR;
                this.PACIENTE_ID_PACIENTE = familiar.PACIENTE_ID_PACIENTE;

                CommonBC.ModeloCesfam.CARNET_FAMILIAR.SaveChanges();
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
                CarnetFamiliar familiar = CommonBC.ModeloCesfam.CARNET_FAMILIAR.First(cf => cf.ID_FAMILIAR == this.ID_FAMILIAR);
                CommonBC.ModeloCesfam.CARNET_FAMILIAR.DeleteObject(familiar);
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
                CapaDatos.CARNET_FAMILIAR familiar =
                    CommonBC.ModeloCesfam.CARNET_FAMILIAR.First
                    (
                        cf => cf.ID_FAMILIAR == this.ID_FAMILIAR
                    );

                this.ID_FAMILIAR = familiar.ID_FAMILIAR;
                this.SECTOR_FAMILIAR = familiar.SECTOR_FAMILIAR;
                this.PACIENTE_ID_PACIENTE = familiar.PACIENTE_ID_PACIENTE;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
