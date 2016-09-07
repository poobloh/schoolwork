using System;

namespace ProgrammingAssignment1
{
	/// <summary>
	/// Given an x and y value, the program calculates the distance and angle between the two points.
	/// </summary>
    class Program
    {
        static void Main(string[] args)
        {
        	// Welcome message and input prompts
        	Console.WriteLine("Welcome, this application calculates the distance and angle between two points.\n");
        	Console.Write("Please enter x value for point 1: ");
        	float point1x = float.Parse(Console.ReadLine());
        	Console.Write("Please enter y value for point 1: ");
        	float point1y = float.Parse(Console.ReadLine());
        	Console.Write("\nPlease enter x value for point 2: ");
        	float point2x = float.Parse(Console.ReadLine());
        	Console.Write("Please enter y value for point 2: ");
        	float point2y = float.Parse(Console.ReadLine());


        	// Calculate delta x (x2 - x1) and delta y (y2 - y1)
        	float deltax = point2x - point1x;
        	float deltay = point2y - point1y;

        	// Calculate distance with Pythagorean theorem:
            // distance^2 = deltaX^2 + deltaY^2 
        	double dist = (double)Math.Pow(deltax, 2) + (double)Math.Pow(deltay, 2); // dist = distance^2
        	dist = (double)Math.Sqrt(dist); // dist = distance

        	// Calcualting angle:
            // Angle (in radians) = arctan(opposite / adjacent)
            // Degree conversion: radians * 180 / pi
        	double angle = Math.Atan2(deltay, deltax) * 180 / Math.PI;

        	// Print distance and angle to 3 decimal places
        	Console.WriteLine("\nDistance: {0:F3}", dist);
        	Console.WriteLine("Angle (degrees): {0:F3}", angle);
        	Console.ReadLine();
        }
    }
}
