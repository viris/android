package com.viris.gui;

import java.util.ArrayList;
import java.util.List;

import xyzkwjbl.viris.service.TransactionUnit;


public class TreeObject {

	private TransactionUnit unit;
	public boolean changed;
	public String displayName;
	public String shortName;
	public List<String>constructors;

	
	public TreeObject(TransactionUnit unit){
		this.unit = unit;
		String value = getValueString(unit);	
		this.displayName = getShortType(unit.type)+ " " +getCompactName(unit.bshName,unit.fieldType)+value;
		this.shortName = unit.shortName;
		changed  = false;
	}
	
	public TransactionUnit getUnit() {
		return unit;
	}

	public void setUnit(TransactionUnit unit) {
		this.unit = unit;
	}
	
	public String getName(String name){
		if(name.charAt(0) == '_'){
			name = name.substring(2);
		}
		return name;
	}
	public String getValueString(TransactionUnit unit){
		String value=unit.value;
		if(value.equals("null"))
			return "";
		else if((unit.type.contains("class") && !unit.type.contains("String"))|| unit.type.contains("interface")){
			return "  {  }";
		}else{
			
			return "  { "+value+" }";
		}	
		
	}
	public String getShortType(String type){
		String arr[]=null;
		String arr2[] = null;
		if(type.contains("class")){
			arr = type.split(" ");
			arr2 = arr[1].split("\\.");
			return "class "+arr2[arr2.length-1];
		}else if( type.contains("interface")){
			arr = type.split(" ");
			arr2 = arr[1].split("\\.");
			return "interface "+arr2[arr2.length-1];
		}
		return type;
	}
	public String getCompactName(String name, String type){
		String arr[]=null;
		String arr2[] = null;
		String n=null;
	
		if(type.equals("method")){
			arr2 = name.split("\\(");
			String args = "("+arr2[arr2.length-1];
			arr = arr2[0].split("\\.");
			n =arr[arr.length-1]+args;
		}else{
			arr = name.split("\\.");
			n=arr[arr.length-1];
		}
		return n;
	}
	public void addConstructor(String name){
		if(constructors==null){
			constructors = new ArrayList<String>();
		}
		constructors.add(name);
	}
	public void clearConstructors(){
		constructors.clear();
	}
	public List<String> getConstructors(){
		return this.constructors;
	}
	
}