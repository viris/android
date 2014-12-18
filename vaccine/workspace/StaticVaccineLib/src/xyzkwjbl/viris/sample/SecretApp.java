package xyzkwjbl.viris.sample;

public  class SecretApp extends BaseApp{

	
	public String secretCode;
	
	public SecretApp(String code){
		this.secretCode = code;
	}
	public SecretApp(String code1, String code2){
		this.secretCode = code1;
		this.secretCode = code2;
	}
	
	public void testPublic(){
		System.out.println("Public method");
	}
	public java.lang.String testPrivate(){
		return new java.lang.String("SecretApp private method");
	}
	
}
