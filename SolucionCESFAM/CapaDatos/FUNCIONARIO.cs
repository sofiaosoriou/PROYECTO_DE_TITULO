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
    
    public partial class FUNCIONARIO
    {
        public FUNCIONARIO()
        {
            this.PARTIDA = new HashSet<PARTIDA>();
        }
    
        public decimal ID_FUNCIONARIO { get; set; }
        public string CORREO_FUNCIONARIO { get; set; }
        public string TEL_FUNCIONARIO { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }
    
        public virtual PERSONA PERSONA { get; set; }
        public virtual ICollection<PARTIDA> PARTIDA { get; set; }
    }
}
