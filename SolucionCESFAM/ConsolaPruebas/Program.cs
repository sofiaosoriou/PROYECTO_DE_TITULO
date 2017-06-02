using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CapaDatos;

namespace ConsolaPruebas
{
    class Program
    {
        static void Main(string[] args)
        {
            CapaDatos.Entities modelo = new CapaDatos.Entities();

            Entities modelo = new Entities()

            var perfil = mol

            var perfiles = from p in perfil
                           where p.NOM_PERFIL = "c.contreras"
                           select p;
            foreach (var p in perfiles)
            {
                Console.WriteLine(p.NOM_PERFIL);
            }
        }
    }
}
