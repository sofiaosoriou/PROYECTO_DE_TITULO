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
    
    public partial class MEDICO
    {
        public MEDICO()
        {
            this.RECETA = new HashSet<RECETA>();
        }
    
        public decimal ID_MEDICO { get; set; }
        public string ESPECIALIDAD_MEDICO { get; set; }
        public string CORREO_MEDICO { get; set; }
        public string TEL_MEDICO { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }
    
        public virtual PERSONA PERSONA { get; set; }
        public virtual ICollection<RECETA> RECETA { get; set; }
    }
}