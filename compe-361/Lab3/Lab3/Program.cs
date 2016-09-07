using System;

namespace Lab3
{
	/// <summary>
	/// Reads a tempererature value from input (in Fahrenheit), converts it to Celsius, then back to Fahrenheit
	/// </summary>
    class DegreeConversion
    {
        static void Main(string[] args)
        {
        	// Initializations
        	float origFahrenheit;
        	float calcCelsius;
            float calcFahrenheit;

        	// Read input (Fahrenheit) and store in variable
        	Console.Write("Enter temperature (Fahrenheit): ");
			origFahrenheit = float.Parse(Console.ReadLine());

			// Calculations for converting F to C
			// Formula: F minus 32, divided by 9, mult by 5
			calcCelsius = ((origFahrenheit-32)/9) * 5;

			// Calculations for converting C to F
			// Formula: C mult by 9, divided by 6, plus 32
			calcFahrenheit = ((calcCelsius*9)/5) + 32;

			// Display calculated outputs
			Console.WriteLine("{0:F1} degrees Fahrenheit is {1:F1} degrees Celsius", origFahrenheit, calcCelsius);
			Console.WriteLine("{0:F1} degrees Celsius is {1:F1} degrees Fahrenheit", calcCelsius, calcFahrenheit);
            Console.ReadKey();
        }
    }
}
