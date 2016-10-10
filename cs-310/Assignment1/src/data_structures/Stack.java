package data_structures;

import java.util.Iterator;

/**
 * A Stack of data.
 * 
 * The Stack class is a list of elements where the first element added
 * will be at the end of the list. When a new element is "Pushed" or
 * added to the list it will be added to the beginning of the list. 
 * "Popping" the Stack will return the first element (last element added).
 * 
 *  Stack follows a LIFO sequence.
 * 
 * @author Brandon Castro
 * @param <E> the type of elements in the Stack
 */

public class Stack<E> {
	
	private ListI<E> data;
	private int size = 0;
	
	/**
	 * Constructor
	 */
	public Stack() {
		data = new LinkedList<>();
	}

	/**
	 * Add element to the beginning of the Stack.
	 * @param obj the object to be added to the Stack.
	 */
	public void push(E obj) {
		size++;
		data.addFirst(obj);
	}
	
	/**
	 * Remove first element of Stack and return it.
	 * @return the object removed.
	 */
	public E pop() {
		if(!data.isEmpty())
			size--;
		return data.removeFirst();
	}

	/**
	 * Returns the number of Objects currently in the Stack.
	 * @return the number of Objects currently in the Stack.
	 */
	public int size() {
		return size;
	}

	/**
	 * Test whether or not Stack is empty.
	 * @return true if the list is empty, otherwise false.
	 */
	public boolean isEmpty() {
		return data.isEmpty();
	}

	/**
	 * Stack will use maximum possible memory so will never be full.
	 * @return hardcoded to return false
	 */
	public boolean isFull() {
		return data.isFull();
	}

	/**
	 * Returns the first Object in the Stack, but does not remove it. Returns Stack if the list is empty.
	 * @return the object at the beginning of the Stack.
	 */
	public E peek() {
		return data.peekFirst();
	}

	/**
	 * Test whether the Stack contains an object.
	 * @param obj the Object to search for.
	 * @return true if the object is found in the Stack, false if it is not found.
	 */
	public boolean contains(E obj) {
		return data.contains(obj);
	}

	/**
	 * Return the Stack to an empty state.
	 */
	public void makeEmpty() {
		data.makeEmpty();
		size = 0;
	}

	/**
	 * Returns an Iterator of the values in the Stack, presented in the same order as the Stack.
	 * @return iterator
	 */
	public Iterator iterator() {
		return data.iterator();
	}
}
