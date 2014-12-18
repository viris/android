package xyzkwjbl.viris.service;

import java.io.Serializable;

public class Request implements Serializable{
	/**
	 * class representing request the service is recieving
	 */
	private static final long serialVersionUID = 7961366969950447876L;
	public String command;
	public String payload;
	public TransactionUnit watch;
	
	public Request(String command){
		this.command = command;
		this.payload = "";
		this.watch=null;
	}
	
	public Request(String command,String payload){
		this.command = command;
		this.payload = payload;
		this.watch = null;
	}

	public Request(String command,String payload,TransactionUnit watch){
		this.command = command;
		this.payload = payload;
		this.watch = watch;
	}

}
