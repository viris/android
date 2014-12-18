package xyzkwjbl.viris.sample;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Collection;
import java.util.Map;

import javax.xml.namespace.QName;

import com.example.smalli.R;

import xyzkwjbl.viris.service.SocketService;



import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends Activity {

	private Button startButton;
	private Button stopButton;
	private Button nextButton;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		this.startButton = (Button) this.findViewById(R.id.button1);
		this.startButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				startLocalService();
			}
		});
		this.stopButton = (Button) this.findViewById(R.id.button2);
		this.stopButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				stopLocalService();
			}
		});
		
		this.nextButton = (Button) this.findViewById(R.id.next);
		this.nextButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				startNextActivity();
				
			}
		});
	}

	public void startNextActivity(){
		Intent intent = new Intent(this,NextActivity.class);
		startActivity(intent);
		
	}
	public void startLocalService() {
		
		Intent serviceIntent = new Intent(this, SocketService.class);
		serviceIntent.setAction("com.example.smalli.service");
		startService(serviceIntent);
		
	}

	public void stopLocalService() {
		
		Intent serviceIntent = new Intent(this, SocketService.class);
		serviceIntent.setAction("com.example.smalli.service");
		stopService(serviceIntent);

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	

}
