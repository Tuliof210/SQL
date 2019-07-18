using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_3
{
    class open_close
    {
        private bool open = false;
        private bool close = true;

        public bool Abrir()
        {
            if (this.close)
            {
                this.open = true;
                this.close = false;
                return true;
            }
            else return false;
        }

        public bool Fechar()
        {
            if (this.open)
            {
                this.close = true;
                this.open = false;
                return true;
            }
            else return false;
        }
    }
}
