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
    
    public partial class PERFIL
    {
        public PERFIL()
        {
            this.USUARIO = new HashSet<USUARIO>();
        }
    
        public short ID_PERFIL { get; set; }
        public string NOM_PERFIL { get; set; }
    
        public virtual ICollection<USUARIO> USUARIO { get; set; }
    }
}
