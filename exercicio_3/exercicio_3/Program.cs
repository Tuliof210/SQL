using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_3
{
    class Program
    {
        static void Main(string[] args)
        {
            open_close Objeto = new open_close();
            int op;

            do
            {
                Console.Write("Digite 1 para abrir, 2 para fechar e 0 para sair: ");
                bool teste = int.TryParse(Console.ReadLine(), out op);

                if (teste)
                {
                    switch(op)
                    {
                        case 1:
                            if (Objeto.Abrir()) Console.WriteLine("\nO objeto aberto com sucesso!");
                            else Console.WriteLine("\nO objeto já se encontrava aberto...");
                            break;

                        case 2:
                            if (Objeto.Fechar()) Console.WriteLine("\nO objeto fechado com sucesso!");
                            else Console.WriteLine("\nO objeto já se encontrava fechado...");
                            break;

                        case 0:
                            Console.WriteLine("\nPrograma encerrado...");
                            break;

                        default:
                            break;
                    }

                }
                else Console.WriteLine("\nOPÇÃO INVALIDA!Z\n");
            }
            while (op != 0);

            Console.ReadKey();
        }
    }
}
