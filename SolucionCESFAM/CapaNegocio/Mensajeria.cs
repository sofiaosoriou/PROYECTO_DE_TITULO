using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace CapaNegocio
{
    public class Mensajeria:IPersistente
    {
        public short ID_MSJ { get; set; }
        public string MENSAJE_MSJ { get; set; }
        public System.DateTime FECHA_MSJ { get; set; }
        public string ASUNTO_MSJ { get; set; }
        public decimal RESERVA_ID_RESERVA { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }

        public Mensajeria()
        {
            this.Init();
        }

        private void Init()
        {
            this.ID_MSJ = 0;
            this.MENSAJE_MSJ = string.Empty;
            this.FECHA_MSJ = DateTime.Now;
            this.ASUNTO_MSJ = string.Empty;
            this.RESERVA_ID_RESERVA = 0;
            this.PACIENTE_ID_PACIENTE = 0;
        }

        public bool Agregar()
        {
            CapaDatos.MENSAJERIA mensajeria = new CapaDatos.MENSAJERIA();
            try
            {
                mensajeria.ID_MSJ = this.ID_MSJ;
                mensajeria.MENSAJE_MSJ = this.MENSAJE_MSJ;
                mensajeria.FECHA_MSJ = this.FECHA_MSJ;
                mensajeria.ASUNTO_MSJ = this.ASUNTO_MSJ;
                mensajeria.RESERVA_ID_RESERVA = this.RESERVA_ID_RESERVA;
                mensajeria.PACIENTE_ID_PACIENTE = this.PACIENTE_ID_PACIENTE;

                CommonBC.ModeloCesfam.MENSAJERIA.Add(mensajeria);
                CommonBC.ModeloCesfam.MENSAJERIA.SaveChanges();

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
                Mensajeria mensajeria = CommonBC.ModeloCesfam.MENSAJERIA.First(me => me.ID_MSJ == this.ID_MSJ);
                this.ID_MSJ = mensajeria.ID_MSJ;
                this.MENSAJE_MSJ = mensajeria.MENSAJE_MSJ;
                this.FECHA_MSJ = mensajeria.FECHA_MSJ;
                this.ASUNTO_MSJ = mensajeria.ASUNTO_MSJ;
                this.RESERVA_ID_RESERVA = mensajeria.RESERVA_ID_RESERVA;
                this.PACIENTE_ID_PACIENTE = mensajeria.PACIENTE_ID_PACIENTE;

                CommonBC.ModeloCesfam.MENSAJERIA.SaveChanges();
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
                Mensajeria mensajeria = CommonBC.ModeloCesfam.MENSAJERIA.First(me => me.ID_MSJ == this.ID_MSJ);
                CommonBC.ModeloCesfam.MENSAJERIA.DeleteObject(mensajeria);
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
                CapaDatos.MENSAJERIA mensajeria =
                    CommonBC.ModeloCesfam.MENSAJERIA.First
                    (
                        me => me.ID_MSJ == this.ID_MSJ
                    );

                this.ID_MSJ = mensajeria.ID_MSJ;
                this.MENSAJE_MSJ = mensajeria.MENSAJE_MSJ;
                this.FECHA_MSJ = mensajeria.FECHA_MSJ;
                this.ASUNTO_MSJ = mensajeria.ASUNTO_MSJ;
                this.RESERVA_ID_RESERVA = mensajeria.RESERVA_ID_RESERVA;
                this.PACIENTE_ID_PACIENTE = mensajeria.PACIENTE_ID_PACIENTE;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
