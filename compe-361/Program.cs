using System;
using System.Linq;
using System.IO;

namespace ProgrammingAssignment2
{
	class Program
	{
		// Global variable list to store all contents of text file
		static string[] list;

		/// <summary>
		/// The main entry point for the program.
		/// Loads WordList.txt file and displays following menu options:
		/// 1. All words
		/// 2. Rhyming words
		/// 3. Scrabble words
		/// 4. Morph words
		/// 5. Quit
		/// </summary>
		static void Main(string[] args)
		{
			/**
             *
             * Exception handling for reading file contents:
             *  If file does not exist in default filepath, throws exception
             *      and proceeds to ask for file location
             *  If file location is invalid throws exception
             *      and proceeds to loop until valid file location is given
             *
             */
            bool error = true;
            Console.WriteLine("Loading 'WordList.txt' from default filepath...");
			try
			{
				// error flag = false if there were no exceptions
				list = File.ReadAllLines("WordList.txt");
                error = false;

			}
			catch (System.Exception e)
			{
                Console.WriteLine("ERROR: File not found in default filepath" +
                    "(...\\ProgrammingAssignment2\\bin\\Debug\\WordList.txt)\n");
            }

            while (error)
            {
                Console.Write("Please enter file path of 'WordList.txt': ");
                try
                {
                    list = File.ReadAllLines(Console.ReadLine());
                    error = false;
                }
                catch (System.Exception x)
                {
                    Console.Write("ERROR: ");
                    Console.WriteLine(x.Message);
                }
            }
            Console.WriteLine("'WordList.txt' loaded.\n");

            // After loading text file, print menu commands and ask for input
            // According to input, selects command to execute
			while (true)
			{
				Console.WriteLine("1. All words");
				Console.WriteLine("2. Rhyming words");
				Console.WriteLine("3. Scrabble words");
				Console.WriteLine("4. Morph words");
				Console.WriteLine("5. Quit");
				Console.Write("Your choice: ");
                error = true;
                int input = 0;
                while (error)
                {
                    try
                    {
                        input = Int32.Parse(Console.ReadLine());
                        error = false;
                    }
                    catch (Exception e) {
                        Console.Write("Invalid input. Enter a number: ");
                    }
                }
				Console.WriteLine("");

				switch (input)
				{
					case 1:
						print();
						break;
					case 2:
						rhyme();
						break;
					case 3:
						scrabble();
						break;
					case 4:
						morph();
						break;
					case 5:
						Console.WriteLine("Goodbye\n");
						Console.WriteLine("Press any key to continue...");
						Console.ReadKey();
						return;
	                default:
	                	Console.WriteLine("Please enter a valid number");
	                	break;
				}
				Console.WriteLine("");
			}
		}

		/// <summary>
		/// Prints out all words in list array
		/// </summary>
		/// <returns>void</returns>
		static void print()
		{
			list.ToList().ForEach(Console.WriteLine);
		}

		/// <summary>
		/// Prints out all words ending in string specified by the user
		/// </summary>
		/// <returns>void</returns>
		static void rhyme()
		{
			Console.WriteLine("Rhyming Words Selected!");
			Console.Write("Enter desired ending string: ");
			string ending = Console.ReadLine().toLower();

            /**
             *
             * Iterate through words in list, check if word is at least length of input
             * Then check input length with word's ending substring of that length
             * If length is same and the two strings are equal, then word rhymes and print word
             *
             */
			foreach(string word in list)
				if(word.Length >= ending.Length)
					//string sub = word.Substring(word.Length - ending.Length);
                    if (word.Substring(word.Length - ending.Length) == ending)
                        Console.WriteLine(word);
		}

		/// <summary>
		/// Prints out all words that are constructed by letters specified by the user
		/// A letter may be used multiple times ONLY if it appears that many times in the list
		/// Minimum number of letters are 3 and maximum is 7
		/// </summary>
		/// <returns>void</returns>
		static void scrabble()
		{
			Console.WriteLine("Scrabble Words Selected!");
			Console.Write("Enter start word: ");
			string input = Console.ReadLine().toLower();

            // Check for invalid input (min 3, max 7)
			while(input.Length<3 || input.Length>7)
			{
				Console.WriteLine("Invalid input. Number of letters must be more than 2 and less than 8");
                Console.Write("Enter start word: ");
                input = Console.ReadLine();
			}

            /**
             *
             * Iterate through words in list, check if word is at least length of input
             * Iterate through each letter in the input, check if letter exists in word
             * If any letter in input doesn't exist in word, skip to next word
             * If any letter in input exists in word, remove both words from temporary strings
             * Check through temp word string for remaining letters, while removing them
             * If temp input string is empty, then the word contained all letters and print word
             *
             */
            string inputTemp = input;
            foreach (string word in list)
            {
                string wordTemp = word;
                inputTemp = input;

                if(word.Length >= input.Length)
                    foreach (char letter in inputTemp)
                    {
                        if(!word.Contains(letter))
                            break;

                        // Remove letter from both words
                        inputTemp = inputTemp.Remove(inputTemp.IndexOf(letter); //, 1);
                        wordTemp = wordTemp.Remove(wordTemp.IndexOf(letter); //, 1);

                        // If inputTemp is empty then word contains all letters
                        if(inputTemp.Length() == 0)
                            Console.WriteLine(word);
                    }
            }
		}

		/// <summary>
		/// Prints out all words that differ from specified word by only one letter
		/// </summary>
		/// <returns>void</returns>
		static void morph()
		{
			Console.WriteLine("Morph Words Selected!");
			Console.Write("Enter start word: ");
			string input = Console.ReadLine().toLower();

            /**
             *
             * Iterate through each word in list, check if word is equal length
             * Iterate through each letter in both strings, check if equal
             * If counter for equal chars is equal to 1,
             * then word is different by only one letter and print word
             *
             */
            foreach (string word in list)
            {
                if(word.Length() == input.Lenght())
                {
                    int counter = 0;
                    for (int i = 0; i < word.Length(); i++)
                        if(word[i] != input[i])
                            counter++;

                    if(counter == 1)
                        Console.WriteLine(word);
                }
            }

            // Console.WriteLine("Search for morph words of: ");
            // string wordMorph = Console.ReadLine().ToLower();
            // foreach (string word in dictionary)
            // {
            //     string morphTemp = wordMorph;
            //     string wordTemp = word.ToLower();
            //     if(wordTemp.Length == morphTemp.Length) {
            //         for (int i = 0; i < morphTemp.Length; i++ )
            //             if (wordTemp.Remove(i, 1).Equals(morphTemp.Remove(i, 1)))
            //             Console.WriteLine(word);
            //         }
            // }

            //Console.WriteLine("");
		}
	}
}