package xyzkwjbl.viris.sample;

public class BaseApp {
	
	private String name;
	
	
	private void setName(String name){
		this.name = name;
		
	}
	public void setPublicName(String name){
		this.name = name;
	}
	
	public void printLoader(){
		this.getClass().getClassLoader();
	}
	public String getSecretString(String s){
		s = s+" BASE_APP";
		return s;
	}

}
