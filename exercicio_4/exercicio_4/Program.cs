using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_4
{
    class Program
    {
        static void Main(string[] args)
        {
            int a, b;
            bool valida;

            Console.Write("Digite o 1th numero: ");
            valida = int.TryParse(Console.ReadLine(), out a);

            Console.Write("Digite o 2th numero: ");
            valida = int.TryParse(Console.ReadLine(), out b);


            Herdeira Obj = new Herdeira();

            if (valida)
            {
                Console.WriteLine("\nSoma: {0}", Obj.Somar(a, b));
                Console.Write("Multiplicação: {0}", Obj.Multiplicar(a, b));
            }
            else Console.Write("Parametros invalidos...");

            Console.ReadKey();
        }
    }
}
