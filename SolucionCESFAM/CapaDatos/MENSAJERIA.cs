//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class MENSAJERIA
    {
        public MENSAJERIA()
        {
            this.ERRORES = new HashSet<ERRORES>();
        }
    
        public short ID_MSJ { get; set; }
        public string MENSAJE_MSJ { get; set; }
        public System.DateTime FECHA_MSJ { get; set; }
        public string ASUNTO_MSJ { get; set; }
        public decimal RESERVA_ID_RESERVA { get; set; }
        public decimal PACIENTE_ID_PACIENTE { get; set; }
    
        public virtual ICollection<ERRORES> ERRORES { get; set; }
        public virtual PACIENTE PACIENTE { get; set; }
        public virtual RESERVA RESERVA { get; set; }
    }
}
