/// <summary>
/// 1. Print integer variable "age"
/// 2. Print float variable "percent" (score divided by MAX_SCORE)
/// </summary>
using System;

namespace ConsoleApplication1
{
    class Lab2
    {
        static void Main(string[] args)
        {
        	// Initializations
            const int MAX_SCORE = 100;
           	int score = 86;
            int age = 21;

            // Cast 'score' as a float in order to store valid calculation in 'percent'
            float percent = (float)(score)/MAX_SCORE;

            // Print 'age' and 'percent'
            Console.WriteLine("Age: " + age);
            Console.WriteLine("Percent: " + percent);
            Console.ReadKey();
        }
    }
}
