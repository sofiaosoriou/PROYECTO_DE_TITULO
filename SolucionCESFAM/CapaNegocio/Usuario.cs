using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public class Usuario
    {
        public short ID_USUARIO { get; set; }
        public string NOM_USUARIO { get; set; }
        public string PASS_USUARIO { get; set; }
        public short PERFIL_ID_PERFIL { get; set; }
        public string PERSONA_RUT_PERSONA { get; set; }


        public bool ValidarUsuario(string nombre, string pass)
        {
            try
            {
                var Usuarios = CommonBC.ModeloCesfam.USUARIO;
                var query = from u in Usuarios
                            where u.NOM_USUARIO == nombre
                            select u;

                foreach (var q in query)
                {
                    if (q.PASS_USUARIO == pass)
                        return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
