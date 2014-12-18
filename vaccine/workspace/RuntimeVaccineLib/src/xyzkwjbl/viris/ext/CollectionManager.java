/*****************************************************************************
 *                                                                           *
 *  This file is part of the BeanShell Java Scripting distribution.          *
 *  Documentation and updates may be found at http://www.beanshell.org/      *
 *                                                                           *
 *  Sun Public License Notice:                                               *
 *                                                                           *
 *  The contents of this file are subject to the Sun Public License Version  *
 *  1.0 (the "License"); you may not use this file except in compliance with *
 *  the License. A copy of the License is available at http://www.sun.com    * 
 *                                                                           *
 *  The Original Code is BeanShell. The Initial Developer of the Original    *
 *  Code is Pat Niemeyer. Portions created by Pat Niemeyer are Copyright     *
 *  (C) 2000.  All Rights Reserved.                                          *
 *                                                                           *
 *  GNU Public License Notice:                                               *
 *                                                                           *
 *  Alternatively, the contents of this file may be used under the terms of  *
 *  the GNU Lesser General Public License (the "LGPL"), in which case the    *
 *  provisions of LGPL are applicable instead of those above. If you wish to *
 *  allow use of your version of this file only under the  terms of the LGPL *
 *  and not to allow others to use your version of this file under the SPL,  *
 *  indicate your decision by deleting the provisions above and replace      *
 *  them with the notice and other provisions required by the LGPL.  If you  *
 *  do not delete the provisions above, a recipient may use your version of  *
 *  this file under either the SPL or the LGPL.                              *
 *                                                                           *
 *  Patrick Niemeyer (pat@pat.net)                                           *
 *  Author of Learning Java, O'Reilly & Associates                           *
 *  http://www.pat.net/~pat/                                                 *
 *                                                                           *
 *****************************************************************************/

package xyzkwjbl.viris.ext;

import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;

/**
	The default CollectionManager
	supports iteration over objects of type:
	Enumeration, Iterator, Iterable, CharSequence, and array.
*/
public final class CollectionManager
{
	private static final CollectionManager manager = new CollectionManager();

	public synchronized static CollectionManager getCollectionManager()
	{
		return manager;
	}

	/**
	*/
	public boolean isBshIterable( Object obj ) 
	{
		// This could be smarter...
		try { 
			getBshIterator( obj ); 
			return true;
		} catch( IllegalArgumentException e ) { 
			return false;
		}
	}

	public Iterator getBshIterator( Object obj ) 
		throws IllegalArgumentException
	{
		if(obj==null)
			throw new NullPointerException("Cannot iterate over null.");

		if (obj instanceof Enumeration) {
			final Enumeration enumeration = (Enumeration)obj;
			return new Iterator<Object>() {
				@Override
				public boolean hasNext() {
					return enumeration.hasMoreElements();
				}
				@Override
				public Object next() {
					return enumeration.nextElement();
				}
				@Override
				public void remove() {
					throw new UnsupportedOperationException();
				}
			};
		}

		if (obj instanceof Iterator)
			return (Iterator)obj;

		if (obj instanceof Iterable)
			return ((Iterable)obj).iterator();

		if (obj.getClass().isArray()) {
			final Object array = obj;
			return new Iterator() {
				private int index = 0;
				private final int length = Array.getLength(array);

				@Override
				public boolean hasNext() {
					return index < length;
				}
				@Override
				public Object next() {
					return Array.get(array, index++);
				}
				@Override
				public void remove() {
					throw new UnsupportedOperationException();
				}
			};
		} 
		
		if (obj instanceof CharSequence)
			return getBshIterator(
				obj.toString().toCharArray());

		throw new IllegalArgumentException(
			"Cannot iterate over object of type "+obj.getClass());
	}

	public boolean isMap( Object obj ) {
		return obj instanceof Map;
	}

	public Object getFromMap( Object map, Object key ) {
		return ((Map)map).get(key);
	}

	public Object putInMap( Object map, Object key, Object value ) 
	{
		return ((Map)map).put(key, value);
	}

}
