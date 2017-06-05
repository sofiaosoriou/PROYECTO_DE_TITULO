using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;


namespace CapaNegocio
{
    public class CommonBC
    {

        private static Entities _modeloCesfam;

        public static CapaDatos.Entities ModeloCesfam
        {
            get
            {
                if (_modeloCesfam == null)
                {
                    _modeloCesfam = new Entities();
                }
                return _modeloCesfam;
            }
        }

        public CommonBC()
        {

        }
    }

   
}
