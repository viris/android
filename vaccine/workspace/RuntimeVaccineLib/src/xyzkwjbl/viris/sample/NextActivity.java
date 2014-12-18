package xyzkwjbl.viris.sample;

import xyzkwjbl.viris.ext.Interpreter;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

import com.example.smalli.R;

public class NextActivity extends Activity {
	private boolean changed=false;
	private Button changeButton;
	private int somesecret = 23;
	private long bla = 121212;
	private double zero = 0.23233;
	private float f = 32323;
	private short s = 2;
	private byte a = 1;
	public String astring = "Android";
	public SecretApp app = new SecretApp("secret");
	
	public static void execute(Interpreter in, String script){
		
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_next);
		this.changeButton = (Button) this.findViewById(R.id.changed);
		this.changeButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				changed=!changed;
				somesecret--;
				TextView view = (TextView)findViewById(R.id.textView1);
				view.setText(app.testPrivate());
			
			}
		});
	}
	public void setSomeSecret(SecretApp app){
		this.app = app;
		
	}
	private void privateMethod(){
		System.out.println("PRIVATE METHOD LUNCHED");
	}
	 private void runThread(){
	     runOnUiThread (new Thread(new Runnable() { 
	         public void run() {
	        	 
	         }
	     }));
	}
	
	
	
	public void setDouble(double b){
		this.zero = b;
	}
	public void setMore(int a, String b){
		this.somesecret = a;
		this.astring = b;
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.next, menu);
		return true;
	}
	

}
