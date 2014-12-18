package xyzkwjbl.viris.sample;

public class SimpleApp extends BaseApp{


	@Override
	public String getSecretString(String s){
		s = s+" SIMPLE_APP_";
		System.out.println(s);
		return super.getSecretString(s);
	}

}
