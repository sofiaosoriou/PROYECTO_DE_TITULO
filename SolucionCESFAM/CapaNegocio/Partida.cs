using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Partida:IPersistente
    {
        public short ID_PARTIDA { get; set; }
        public System.DateTime FECHA_PARTIDA { get; set; }
        public string TIPO_PARTIDA { get; set; }
        public decimal ESTADO_PARTIDA { get; set; }
        public decimal FUNCIONARIO_ID_FUNCIONARIO { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }
        public decimal RESERVA_ID_RESERVA { get; set; }
        public decimal BAJA_ID_BAJA { get; set; }

        public Partida()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_PARTIDA = 0;
            this.FECHA_PARTIDA = DateTime.Now;
            this.TIPO_PARTIDA = string.Empty;
            this.ESTADO_PARTIDA = 0;
            this.FUNCIONARIO_ID_FUNCIONARIO = 0;
            this.PACIENTE_ID_PACIENTE = 0;
            this.RESERVA_ID_RESERVA = 0;
            this.BAJA_ID_BAJA = 0;
        }

        public bool Agregar()
        {
            CapaDatos.PARTIDA partida = new CapaDatos.PARTIDA();
            try
            {
                partida.ID_PARTIDA = this.ID_PARTIDA;
                partida.FECHA_PARTIDA = this.FECHA_PARTIDA;
                partida.TIPO_PARTIDA = this.TIPO_PARTIDA;
                partida.ESTADO_PARTIDA = this.ESTADO_PARTIDA;
                partida.FUNCIONARIO_ID_FUNCIONARIO = this.FUNCIONARIO_ID_FUNCIONARIO;
                partida.PACIENTE_ID_PACIENTE = this.PACIENTE_ID_PACIENTE;
                partida.RESERVA_ID_RESERVA = this.RESERVA_ID_RESERVA;
                partida.BAJA_ID_BAJA = this.BAJA_ID_BAJA;

                CommonBC.ModeloCesfam.PARTIDA.Add(partida);
                CommonBC.ModeloCesfam.PARTIDA.SaveChanges();

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
                Partida partida = CommonBC.ModeloCesfam.PARTIDA.First(pa => pa.ID_PARTIDA == this.ID_PARTIDA);
                this.ID_PARTIDA = partida.ID_PARTIDA;
                this.FECHA_PARTIDA = partida.FECHA_PARTIDA;
                this.TIPO_PARTIDA = partida.TIPO_PARTIDA;
                this.ESTADO_PARTIDA = partida.ESTADO_PARTIDA;
                this.FUNCIONARIO_ID_FUNCIONARIO = partida.FUNCIONARIO_ID_FUNCIONARIO;
                this.PACIENTE_ID_PACIENTE = (decimal)partida.PACIENTE_ID_PACIENTE;
                this.RESERVA_ID_RESERVA = (decimal)partida.RESERVA_ID_RESERVA;
                this.BAJA_ID_BAJA = (decimal)partida.BAJA_ID_BAJA;

                CommonBC.ModeloCesfam.RECETA.SaveChanges();
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
                Partida partida = CommonBC.ModeloCesfam.PARTIDA.First(pa => pa.ID_PARTIDA == this.ID_PARTIDA);
                CommonBC.ModeloCesfam.PARTIDA.DeleteObject(partida);
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
                CapaDatos.PARTIDA partida =
                    CommonBC.ModeloCesfam.PARTIDA.First
                    (
                        pa => pa.ID_PARTIDA == this.ID_PARTIDA
                    );

                this.ID_PARTIDA = partida.ID_PARTIDA;
                this.FECHA_PARTIDA = partida.FECHA_PARTIDA;
                this.TIPO_PARTIDA = partida.TIPO_PARTIDA;
                this.ESTADO_PARTIDA = partida.ESTADO_PARTIDA;
                this.FUNCIONARIO_ID_FUNCIONARIO = partida.FUNCIONARIO_ID_FUNCIONARIO;
                this.PACIENTE_ID_PACIENTE = (decimal)partida.PACIENTE_ID_PACIENTE;
                this.RESERVA_ID_RESERVA = (decimal)partida.RESERVA_ID_RESERVA;
                this.BAJA_ID_BAJA = (decimal)partida.BAJA_ID_BAJA;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
