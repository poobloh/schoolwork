package data_structures;

import java.util.Iterator;

/**
 * A Queue of data.
 * 
 * The Queue class is a list of elements where the first element will always 
 * be at the start of the list. "Enqueuing" an element adds it to the end
 * of the list. "Dequeuing" an element removes the first element.
 * 
 * Queue follows a FIFO sequence.
 * 
 * @author Brandon Castro
 * @param <E> the type of elements in the Queue
 */

public class Queue<E> {
	
	private ListI<E> data;
	private int size = 0;
	
	/**
	 * Constructor
	 */
	public Queue() {
		data = new LinkedList<E>();
	}

	/**
	 * Adds an object to the end of the list.
	 * @param the object to be enqueued to the Queue.
	 */
	public void enqueue(E obj) {
		data.addLast(obj);
		size++;
	}

	/**
	 * Removes the object from the beginning of the Queue and returns it.
	 * @return the object in the beginning of the Queue.
	 */
	public E dequeue() {
		if(!data.isEmpty())
			size--;
		return data.removeFirst();
	}

	/**
	 * Returns the number of Objects currently in the Queue.
	 * @return the number of Objects currently in the Queue.
	 */
	public int size() {
		return size;
	}

	/**
	 * Test whether or not Queue is empty.
	 * @return true if Queue is empty, otherwise false.
	 */
	public boolean isEmpty() {
		return data.isEmpty();
	}

	/**
	 * Returns the first Object in the Queue, but does not remove it. Returns null if the Queue is empty.
	 * @return the object at the beginning of the Queue.
	 */
	public E peek() {
		return data.peekFirst();
	}

	/**
	 * Test whether the Queue contains the specified object.
	 * @param obj the object to search for in the Queue.
	 * @return true if object exists in Queue, false if not.
	 */
	public boolean contains(E obj) {
		return data.contains(obj);
	}
	
	/**
	 * Return the Queue to an empty state.
	 */
	public void makeEmpty() {
		data.makeEmpty();
		size = 0;
	}

	/**
	 * Returns an Iterator of the values in the list, presented in the same order as the list.
	 * @return iterator
	 */
	public Iterator iterator() {
		return data.iterator();
	}

}
