package com.viris.gui;

import javax.swing.JLabel;
import javax.swing.JPanel;

import xyzkwjbl.viris.service.TransactionUnit;


public class WatchElement extends JPanel {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1043056604011869139L;
	private JLabel jvalue;
	private JLabel jname;
	public TransactionUnit unit;

	public WatchElement(TransactionUnit unit) {
		this.unit = unit;
		jname = new JLabel(unit.shortName);
		jvalue = new JLabel(unit.value);
		
		this.add(jname);
		this.add(jvalue);
		
		
	}
	
	public void set(TransactionUnit unit){
		this.unit = unit;
		this.jname.setText(unit.shortName);
		this.jvalue.setText(unit.value);
			
	}

	@Override
	public String toString(){
		return jname.getText()+": "+jvalue.getText();
	}
}
