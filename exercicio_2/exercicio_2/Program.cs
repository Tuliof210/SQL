using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace exercicio_2
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] lista = { 14, 43, 1, 83, 11, 3 };

            Console.WriteLine("O menor valor da lista é: {0}", Menor(lista));
            Console.ReadKey();
        }

        static int Menor(int[] l)
        {
            int menor = int.MaxValue;

            foreach (int i in l)
            {
                if(i < menor) menor = i;
            }
            return menor;
        }
    }
}
