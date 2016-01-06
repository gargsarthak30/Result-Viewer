package com.ex.result;

import com.ex.result.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Main extends Activity implements OnClickListener {

	Button Login;

	// , SignUp;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		InitialiseVariables();
		Login.setOnClickListener(this);
		// SignUp.setOnClickListener(this);
	}

	private void InitialiseVariables() {
		// TODO Auto-generated method stub
		Login = (Button) findViewById(R.id.bLogin);
		// SignUp = (Button) findViewById(R.id.bSignUp);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);// Menu Resource, Menu
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case R.id.item1:
			Intent ab = new Intent("android.intent.action.ABOUT");
			startActivity(ab);
			break;

		case R.id.item2:
			Intent he = new Intent("android.intent.action.HELP");
			startActivity(he);
			break;

		case R.id.item3:
			Intent rf = new Intent("android.intent.action.RESFORMAT");
			startActivity(rf);
			break;

		default:
			return super.onOptionsItemSelected(item);
		}
		return false;
	}

	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		switch (arg0.getId()) {
		case R.id.bLogin:
			Intent log = new Intent("android.intent.action.SIGNIN");
			startActivity(log);
			break;

		// case R.id.bSignUp:
		// Intent sig = new Intent("android.intent.action.SIGNUP");
		// startActivity(sig);
		// break;

		}
	}
}
