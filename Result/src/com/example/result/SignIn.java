package com.example.result;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.http.HttpRequest;
import org.apache.http.NameValuePair;
import org.apache.http.client.ResponseHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class SignIn extends Activity implements OnClickListener {
	EditText CollegeId, RegistrationNumber, Password;
	 Button Login;

	private ProgressDialog pDialog;
	JSONParser jParser = new JSONParser();
	private static String url_login = "http://10.0.2.2/Result-Viewer/php/signin.php";
	private static final String TAG_SUCCESS = "success";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.sign_in);
		InitialiseVariables();
		Login.setOnClickListener(this);
	}

	private void InitialiseVariables() {
		// TODO Auto-generated method stub
		CollegeId = (EditText) findViewById(R.id.etCollegeId);
		RegistrationNumber = (EditText) findViewById(R.id.etRegistration);
		Password = (EditText) findViewById(R.id.etPassword);
		Login = (Button) findViewById(R.id.bLogin);
	}

	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		new LoadAllProducts().execute();
	}

	class LoadAllProducts extends AsyncTask<String, String, String> {

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			pDialog = new ProgressDialog(SignIn.this);
			pDialog.setMessage("Signing In, please wait....");
			pDialog.setIndeterminate(false);
			pDialog.setCancelable(false);
			pDialog.show();
		}

		protected String doInBackground(String... args) {
        	 String cid = CollegeId.getText().toString();
			String pass = Password.getText().toString();
			String rno = RegistrationNumber.getText().toString();
        
            // Building Parameters
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            params.add(new BasicNameValuePair("rno", rno));
			params.add(new BasicNameValuePair("cid", cid));
			params.add(new BasicNameValuePair("pass", pass));
			JSONObject json = jParser.makeHttpRequest(url_login, "GET", params);
			 try {
	                // Checking for SUCCESS TAG
	                int success = json.getInt("success");
	                	
	                if (success == 1) {	
	                	Bundle data = new Bundle();
	                	data.putString("rollNo", rno);
	                	data.putString("collgId", cid);
	                	Intent k = new Intent("android.intent.action.READRESULT");	
	                	k.putExtras(data);
	                	startActivity(k);
						finish();
	                }
	                else
	                {
	                	Toast toast = Toast.makeText(SignIn.this, "Some Error Occured, Please Enter your details again.", Toast.LENGTH_LONG);
                    	toast.show();
                    	Intent l = new Intent("android.intent.action.SIGNIN");
						startActivity(l);
						finish();
	                }
	             }
			 catch (JSONException e) {
	                e.printStackTrace();
	            }
			 return null;

        }
	}
}
