using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_4
{
    class Herdeira: open_close, ISoma   
    {
        public int Somar(int x, int y)
        {
            return x + y;
        }

        public int Multiplicar(int x, int y)
        {
            return x * y;
        }
    }
}
