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
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class SignIn extends Activity implements OnClickListener {
	EditText RegistrationNumber, Password;
	Button Login;
	private Spinner spinner;
	private static final String[] paths = { "soe", "som", "sobt", "soict",
			"soljg", "sobsc", "sohss", "sovsas" };
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
		spinner = (Spinner) findViewById(R.id.spinner);
		ArrayAdapter<String> adapter = new ArrayAdapter<String>(SignIn.this,
				R.layout.spinner_item, paths);
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(adapter);
	}

	private void InitialiseVariables() {
		// TODO Auto-generated method stub
		// CollegeId = (EditText) findViewById(R.id.etCollegeId);
		RegistrationNumber = (EditText) findViewById(R.id.etRegistration);
		Password = (EditText) findViewById(R.id.etPassword);
		Login = (Button) findViewById(R.id.bLogin);
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
			setContentView(R.layout.about);
			return true;
		case R.id.item2:
			setContentView(R.layout.help);
			return true;
		case R.id.item3:
			setContentView(R.layout.result_format);
			return true;

		default:
			return super.onOptionsItemSelected(item);
		}
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
			String cid = spinner.getSelectedItem().toString();
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
				} else if (success == 0) {
					SignIn.this.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(getApplicationContext(),
									"Some error occured, Please try again",
									Toast.LENGTH_LONG).show();
						}
					});
					Intent l = new Intent("android.intent.action.SIGNIN");
					startActivity(l);
					finish();
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}
			return null;

		}

		protected void onPostExecute(String file_url) {
			// dismiss the dialog once done
			pDialog.dismiss();
		}
	}
}
