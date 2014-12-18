/*****************************************************************************
 *                                                                           *
 *  This file is part of the BeanShell Java Scripting distribution.          *
 *  Documentation and updates may be found at http://www.beanshell.org/      *
 *                                                                           *
 *  BeanShell is distributed under the terms of the LGPL:                    *
 *  GNU Library Public License http://www.gnu.org/copyleft/lgpl.html         *
 *                                                                           *
 *  Patrick Niemeyer (pat@pat.net)                                           *
 *  Author of Exploring Java, O'Reilly & Associates                          *
 *  http://www.pat.net/~pat/                                                 *
 *                                                                           *
 *****************************************************************************/

package xyzkwjbl.viris.ext.util;

import java.awt.BorderLayout;

import javax.swing.JApplet;

import xyzkwjbl.viris.ext.EvalError;
import xyzkwjbl.viris.ext.Interpreter;
import xyzkwjbl.viris.ext.TargetError;

/**
	Run bsh as an applet for demo purposes.
*/
public class JDemoApplet extends JApplet
{
	public void init()
	{
		String debug = getParameter("debug");
		if ( debug != null && debug.equals("true") )
			Interpreter.DEBUG=true;

		String type = getParameter("type");
		if ( type != null && type.equals("desktop") )
			// start the desktop
			try {
				new Interpreter().eval( "desktop()" );
			} catch ( TargetError te ) {
				te.printStackTrace();
				System.out.println( te.getTarget() );
				te.getTarget().printStackTrace();
			} catch ( EvalError evalError ) {
				System.out.println( evalError );
				evalError.printStackTrace();
			}
		else
		{
			getContentPane().setLayout(new BorderLayout());
			JConsole console = new JConsole();
			getContentPane().add("Center", console);
			Interpreter interpreter = new Interpreter( console );
			new Thread(interpreter).start();
		}
	}
}

