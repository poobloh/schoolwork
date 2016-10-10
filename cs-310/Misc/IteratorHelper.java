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


	// If not using Java 1.8: 
	// public void remove() {
	// 	throw new UnsupportedOperationException();
	// }
}


// public Iterable<E> iterator() {
// 	return new IteratorHelper();
// }