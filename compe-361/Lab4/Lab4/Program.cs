using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab4
{
    /// <summary>
    /// Implements Lab 4 functionality
    /// </summary>
    class Program
    {
        /// <summary>
        /// Implements Lab 4 functionality
        /// </summary>
        /// <param name="args">command-line args</param>
        static void Main(string[] args)
        {
            // create a new deck and print the contents of the deck
            Deck deck = new Lab4.Deck();
            Console.WriteLine("Contents of deck are: ");
            deck.Print();

            // shuffle the deck and print the contents of the deck
            deck.Shuffle();
            Console.WriteLine("\nDeck shuffled. \n\nContents of deck: ");
            deck.Print();

            // take the top card from the deck and print the card rank and suit
            Console.WriteLine("\nTop card from deck: ");
            Card topCard = deck.TakeTopCard();
            Console.WriteLine("{0} of {1}", topCard.Rank, topCard.Suit);

            // take the top card from the deck and print the card rank and suit
            Console.WriteLine("\nNext top card from deck: ");
            topCard = deck.TakeTopCard();
            Console.WriteLine("{0} of {1}", topCard.Rank, topCard.Suit);

            Console.ReadKey();
        }
    }
}
