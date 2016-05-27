package src.java.lang;

import java.util.Iterator;


/**
 * Implementing this interface allows an object to be the target of the "foreach" statement.
 *
 * @param <T> the type of elements returned by the iterator
 *
 * @since 0.1
 */
public interface Iterable<T> {
    /**
     * Returns an iterator over a set of elements of type T.
     *
     * @return an Iterator.
     */
    public Iterator<T> iterator();
}
