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
    
    public partial class PACIENTE
    {
        public PACIENTE()
        {
            this.CARNET_FAMILIAR = new HashSet<CARNET_FAMILIAR>();
            this.MENSAJERIA = new HashSet<MENSAJERIA>();
            this.PARTIDA = new HashSet<PARTIDA>();
            this.RECETA = new HashSet<RECETA>();
            this.RESERVA = new HashSet<RESERVA>();
            this.TUTOR = new HashSet<TUTOR>();
        }
    
        public decimal ID_PACIENTE { get; set; }
        public string EMAIL_PACIENTE { get; set; }
        public string TEL_PACIENTE { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }
    
        public virtual ICollection<CARNET_FAMILIAR> CARNET_FAMILIAR { get; set; }
        public virtual ICollection<MENSAJERIA> MENSAJERIA { get; set; }
        public virtual PERSONA PERSONA { get; set; }
        public virtual ICollection<PARTIDA> PARTIDA { get; set; }
        public virtual ICollection<RECETA> RECETA { get; set; }
        public virtual ICollection<RESERVA> RESERVA { get; set; }
        public virtual ICollection<TUTOR> TUTOR { get; set; }
    }
}