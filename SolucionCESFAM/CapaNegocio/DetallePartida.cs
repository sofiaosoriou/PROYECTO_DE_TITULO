using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class DetallePartida:IPersistente
    {
        public short PARTIDA_ID_PARTIDA { get; set; }
        public int MEDICAMENTO_ID_REMEDIO { get; set; }
        public decimal CANTIDAD { get; set; }

        public DetallePartida()
        {
            this.Init();
        }

        private void Init()
        {
            this.PARTIDA_ID_PARTIDA = 0;
            this.MEDICAMENTO_ID_REMEDIO = 0;
            this.CANTIDAD = 0;
        }

        public bool Agregar()
        {
            CapaDatos.DETALLE_PARTIDA dpartida = new CapaDatos.DETALLE_PARTIDA();
            try
            {
                dpartida.PARTIDA_ID_PARTIDA = this.PARTIDA_ID_PARTIDA;
                dpartida.MEDICAMENTO_ID_REMEDIO = this.MEDICAMENTO_ID_REMEDIO;
                dpartida.CANTIDAD = this.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_PARTIDA.Add(dpartida);
                CommonBC.ModeloCesfam.DETALLE_PARTIDA.SaveChanges();

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
                DetallePartida dpartida = CommonBC.ModeloCesfam.DETALLE_PARTIDA.First(dp => dp.PARTIDA_ID_PARTIDA == this.PARTIDA_ID_PARTIDA);
                this.PARTIDA_ID_PARTIDA = dpartida.PARTIDA_ID_PARTIDA;
                this.MEDICAMENTO_ID_REMEDIO = dpartida.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dpartida.CANTIDAD;

                CommonBC.ModeloCesfam.DETALLE_PARTIDA.SaveChanges();
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
                DetallePartida dpartida = CommonBC.ModeloCesfam.DETALLE_PARTIDA.First(dp => dp.PARTIDA_ID_PARTIDA == this.PARTIDA_ID_PARTIDA);
                CommonBC.ModeloCesfam.DETALLE_PARTIDA.DeleteObject(dpartida);
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
                CapaDatos.DETALLE_PARTIDA dpartida =
                    CommonBC.ModeloCesfam.DETALLE_PARTIDA.First
                    (
                        dp => dp.PARTIDA_ID_PARTIDA == this.PARTIDA_ID_PARTIDA
                    );

                this.PARTIDA_ID_PARTIDA = dpartida.PARTIDA_ID_PARTIDA;
                this.MEDICAMENTO_ID_REMEDIO = dpartida.MEDICAMENTO_ID_REMEDIO;
                this.CANTIDAD = dpartida.CANTIDAD;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
