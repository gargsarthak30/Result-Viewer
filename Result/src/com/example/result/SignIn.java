package com.example.result;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
	ConnectionDetector cd;
	Boolean isInternetPresent;
	String regex, input, result;
	EditText RegistrationNumber;
	// Password;
	Button Login;
	private Spinner spinner;
	// private static final String[] paths = { "soe", "som", "sobt", "soict",
	// "soljg", "sobsc", "sohss", "sovsas" };
	private ProgressDialog pDialog;
	JSONParser jParser = new JSONParser();
	//private static String url_login = "@string/url_login";
	private static String url_login = "http://www.gbuonline.in/opengbu/result/signin.php";
	private static final String TAG_SUCCESS = "success";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.sign_in);
		InitialiseVariables();
		Login.setOnClickListener(this);
		// spinner = (Spinner) findViewById(R.id.spinner);
		// ArrayAdapter<String> adapter = new ArrayAdapter<String>(SignIn.this,
		// R.layout.spinner_item, paths);
		// adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		// spinner.setAdapter(adapter);
		cd = new ConnectionDetector(getApplicationContext());
		isInternetPresent = cd.isConnectingToInternet();
	}

	private void InitialiseVariables() {
		// TODO Auto-generated method stub
		// CollegeId = (EditText) findViewById(R.id.etCollegeId);
		RegistrationNumber = (EditText) findViewById(R.id.etRegistration);
		// Password = (EditText) findViewById(R.id.etPassword);
		Login = (Button) findViewById(R.id.bLogin);
	}

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
		input = RegistrationNumber.getText().toString();
		regex = "[1-9]{2}\\/[A-Za-z]{3,4}\\/[0-9]{3}";
		Matcher matcher = Pattern.compile(regex).matcher(input);
		// TODO Auto-generated method stub
		if (isInternetPresent == true) {
			if (!(matcher.find())) {
				RegistrationNumber
						.setError("Wrong Format.Please see the specified example.");
			}

			// else if (Password.getText().toString().length() < 6) {
			// Password.setError("Password cannot be less than 6 characters.");
			// }
			else {
				new LoadAllProducts().execute();
			}

		} else {
			Toast.makeText(getApplicationContext(),
					"No Internet Connection Found!", Toast.LENGTH_LONG).show();
		}
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
			// String cid = spinner.getSelectedItem().toString();
			// String pass = Password.getText().toString();
			String rno = RegistrationNumber.getText().toString();

			// Building Parameters
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("rno", rno));
			// params.add(new BasicNameValuePair("cid", cid));
			// params.add(new BasicNameValuePair("pass", pass));
			JSONObject json = jParser.makeHttpRequest(url_login, "GET", params);
			try {
				// Checking for SUCCESS TAG
				int success = json.getInt("success");

				if (success == 1) {
					Bundle data = new Bundle();
					data.putString("rollNo", rno);
					// data.putString("collgId", cid);
					Intent k = new Intent("android.intent.action.READRESULT");
					k.putExtras(data);
					startActivity(k);
					finish();
				} else if (success == 0) {
					SignIn.this.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(getApplicationContext(),
									"No Result Found! Please contact your teacher.",
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
