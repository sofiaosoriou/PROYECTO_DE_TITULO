using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public class Reserva:IPersistente
    {
        public decimal ID_RESERVA { get; set; }
        public System.DateTime FECHA_RESERVA { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }
        public decimal ESTADO_RESERVA_ID_ESTADO { get; set; }

        public Reserva()
        {
            Init();
        }

        private void Init()
        {
            this.ID_RESERVA = 0;
            this.FECHA_RESERVA = DateTime.Now;
            this.PACIENTE_ID_PACIENTE = 0;
            this.ESTADO_RESERVA_ID_ESTADO = 0;

        }

        public bool Agregar()
        {
            CapaDatos.RESERVA reserva = new CapaDatos.RESERVA();
            try
            {
                reserva.ID_RESERVA = this.ID_RESERVA;
                reserva.FECHA_RESERVA = this.FECHA_RESERVA;
                reserva.PACIENTE_ID_PACIENTE = this.PACIENTE_ID_PACIENTE;
                reserva.ESTADO_RESERVA_ID_ESTADO = this.ESTADO_RESERVA_ID_ESTADO;

                CommonBC.ModeloCesfam.RESERVA.Add(reserva);
                CommonBC.ModeloCesfam.RESERVA.SaveChanges();

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
                Reserva reserva = CommonBC.ModeloCesfam.RESERVA.First(re => re.ID_RESERVA == this.ID_RESERVA);
                this.ID_RESERVA = reserva.ID_RESERVA;
                this.FECHA_RESERVA = reserva.FECHA_RESERVA;
                this.PACIENTE_ID_PACIENTE = reserva.PACIENTE_ID_PACIENTE;
                this.ESTADO_RESERVA_ID_ESTADO = reserva.ESTADO_RESERVA_ID_ESTADO;

                CommonBC.ModeloCesfam.RESERVA.SaveChanges();
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
                Reserva reserva = CommonBC.ModeloCesfam.RESERVA.First(re => re.ID_RESERVA == this.ID_RESERVA);
                CommonBC.ModeloCesfam.RESERVA.DeleteObject(reserva);
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
                CapaDatos.RESERVA reserva =
                    CommonBC.ModeloCesfam.RESERVA.First
                    (
                        re => re.ID_RESERVA == this.ID_RESERVA
                    );

                this.ID_RESERVA = reserva.ID_RESERVA;
                this.FECHA_RESERVA = reserva.FECHA_RESERVA;
                this.PACIENTE_ID_PACIENTE = reserva.PACIENTE_ID_PACIENTE;
                this.ESTADO_RESERVA_ID_ESTADO = reserva.ESTADO_RESERVA_ID_ESTADO;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
