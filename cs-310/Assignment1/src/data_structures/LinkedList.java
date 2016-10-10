package data_structures;

import java.util.Iterator;

/**
 * A Linked List of data.
 * 
 * The Linked List class is a list of Node elements that contain
 * a data variable and a next variable. Each node points to the next
 * one in the list. The head node points to the beginning node of the
 * list while the tail node points to the last node of the list.
 * 
 * @author Brandon Castro
 * @param <E> the type of elements in this Linked List
 */

public class LinkedList<E> implements ListI<E> {
	
	class Node<E> {
		E data;
		Node<E> next;

		public Node(E obj) {
			data = obj;
			next = null;
		}
	}
	
	class IteratorHelper implements Iterator<E> {
		Node<E> index;	
		
		public IteratorHelper() {
			index = head;
		}
		
		public boolean hasNext() {
			return index != null;
		}

		public E next() {
			if(!hasNext())
				throw new java.util.NoSuchElementException();
			
			E tmp = index.data;
			index = index.next;
			return tmp;
		}
		//public void forEachRemaining()
		public void remove() {
			throw new UnsupportedOperationException();
		}
	}

	// Private variables
	private Node<E> head;
	private Node<E> tail;
	Node<E> current = head;
	Node<E> previous = null;
	private int currentSize;

	/**
	 * Constructor
	 */
	public LinkedList() {
		head = null;
		currentSize = 0;
	}

	/* (non-Javadoc)
	 * @see data_structures.ListI#addFirst(java.lang.Object)
	 */
	@Override
	public void addFirst(E obj) {
		Node<E> node = new Node<E>(obj);
		node.next = head;
		head = node;
		currentSize++;
	}

	/* (non-Javadoc)
	 * @see data_structures.ListI#addLast(java.lang.Object)
	 */
	@Override
	public void addLast(E obj) {
		if(head == null)
			addFirst(obj);
		else
		{
			Node<E> tmp = head;
			while(tmp.next != null)
				tmp = tmp.next;
			tmp.next = new Node<E>(obj);
			currentSize++;
		}
	}

	/**
	 * Removes the first Object in the list and returns it. Returns null if empty.
	 * @see data_structures.ListI#removeFirst(java.lang.Object)
	 */
	@Override
	public E removeFirst() {
		if(isEmpty())
			return null;
		
		E temp = head.data;
		if(head == tail)
			head = tail = null;
		else
			head = head.next;
		
		currentSize--;
		return temp;
	}

	/**
	 * Removes the last Object in the list and returns it. Returns null if empty.
	 *  @see data_structures.ListI#removeLast(java.lang.Object)
	 */
	@Override
	public E removeLast() {
		if(isEmpty())
			return null;
		if(head == tail)
			return removeFirst();
		Node<E> current = head; previous = null;
		while(current != tail) {
			previous = current;
			current = current.next;
		}
		previous.next = null;
		tail = previous;
		currentSize--;
		return previous.data;
	}

	/**
	 * Returns the first Object in the list, but does not remove it. Returns null if the list is empty.
	 * @see data_structures.ListI#peekFirst()
	 */
	@Override
	public E peekFirst() {
		if(head == null)
			return null;
		return head.data;
	}

	/**
	 * Returns the last Object in the list, but does not remove it. Returns null if the list is empty.
	 * @see data_structures.ListI#peekLast()
	 */
	@Override
	public E peekLast() {
		if(isEmpty())
			return null;
		
		Node<E> tmp = head;
		while(tmp.next != null)
			tmp = tmp.next;
		return tmp.data;
	}

	/**
	 * Return the list to an empty state. This should generally be a constant time operation.
	 * @see data_structures.ListI#makeEmpty()
	 */
	@Override
	public void makeEmpty() {
		tail = head = null;
		currentSize = 0;
	}

	/**
	 * Test whether or not Linked List is empty
	 * @see data_structures.ListI#isEmpty()
	 */
	@Override
	public boolean isEmpty() {
		return head == null;
	}

	/**
	 * LinkedList will use maximum possible memory so will never be full.
	 * @return hardcoded to return false
	 */
	@Override
	public boolean isFull() {
		return false;
	}

	/**
	 * Returns the number of Objects currently in the list.
	 * @return the number of Objects currently in the list.
	 */
	@Override
	public int size() {
		return currentSize;
	}

	/**
	 * Returns an Iterator of the values in the list, presented in the same order as the list.
	 * @see data_structures.ListI#iterator()
	 * @return iterator
	 */
	@Override
	public Iterator<E> iterator() {
		return new IteratorHelper();
	}
	
	/**
	 * Removes the specified Object in the list.
	 * This will use the object's compareTo method to determine whether two objects are the same.
	 * @param obj the Object being searched for in the list
	 * @return data being removed or null if Object is not found in list
	 */
	public E remove(E obj) {
		Node<E> current = head, previous = null;
		
		while(current != null) { 
			if(((Comparable<E>) obj).compareTo(current.data) == 0 ) {
				if (current == head)
					return removeFirst();
				if(current == tail)
					return removeLast();
				
				previous.next = current.next;
				currentSize--;
				return current.data;
			}
			
			previous = current;
			current = current.next;
		}
		
		return null;
	}
	
	/**
	 * Test whether the list contains an object. 
	 * This will use the object's compareTo method to determine whether two objects are the same.
	 * @param obj the Object
	 * @return true if the object is found in the list, false if it is not found
	 */
	public boolean contains(E obj) {
		Node<E> current = head, previous = null;
		
		while(current != null) { 
			if(((Comparable<E>) obj).compareTo(current.data) == 0 )
				return true;
			
			previous = current;
			current = current.next;
		}
		
		return false;
	}
}
