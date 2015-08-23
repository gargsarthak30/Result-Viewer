package com.example.result;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Main extends Activity implements OnClickListener {

	Button Login, SignUp;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		InitialiseVariables();
		Login.setOnClickListener(this);
		SignUp.setOnClickListener(this);
	}

	private void InitialiseVariables() {
		// TODO Auto-generated method stub
		Login = (Button) findViewById(R.id.bLogin);
		SignUp = (Button) findViewById(R.id.bSignUp);
	}

	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		switch (arg0.getId()) {
		case R.id.bLogin:
			Intent log = new Intent("android.intent.action.SIGNIN");
			startActivity(log);
			break;

		case R.id.bSignUp:
			Intent sig = new Intent("android.intent.action.SIGNUP");
			startActivity(sig);
			break;

		}
	}
}
