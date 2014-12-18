package xyzkwjbl.viris.service;

import java.io.Serializable;

public class TransactionUnit implements Serializable {

	/**
	 * TransactionUnit class with basic information about objects and methods
	 * stored in interpreter of beanshell
	 */
	private static final long serialVersionUID = -5005399405057435431L;
	public String bshName;
	public String shortName;
	public transient Object ovalue;
	public String value;
	public String type;
	public String fieldType;
	public String origName;
	

	public TransactionUnit(String bshName, String shortName, String origName,
			String value, Object ovalue, String type, String fieldType) {
		this.bshName = bshName;
		this.shortName = shortName;
		this.origName = origName;
		this.value = value;
		this.ovalue = ovalue;
		this.type = type;
		this.fieldType = fieldType;
	}
}
