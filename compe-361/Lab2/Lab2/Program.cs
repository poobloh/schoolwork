using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab2
{
    class Lab2
    {
        static void Main(string[] args)
        {
            int age = 21;
            Console.WriteLine("Age: " + age);
            const int MAX_SCORE = 100; //initializations
            int score = 66; //chosen between 0-100
            float percent = (float)(score) / MAX_SCORE; //stores percentage
            Console.WriteLine("Percent: " + percent); //prints percentage for user
            Console.ReadLine();
        }
    }
}
