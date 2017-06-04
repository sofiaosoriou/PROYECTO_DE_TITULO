using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CapaNegocio
{
    public interface IPersistente
    {
        bool Agregar();
        bool Modificar();
        bool Eliminar();
        bool Read();
    }
}
