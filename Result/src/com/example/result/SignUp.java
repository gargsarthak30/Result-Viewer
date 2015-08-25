package com.example.result;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class SignUp extends Activity implements OnClickListener {
	EditText CollegeId, RegistrationNumber, Password;
	Button CreateAccount;
	private ProgressDialog pDialog;
	JSONParser jsonParser = new JSONParser();
	private static String url_create_account = "http://10.0.2.2/Result-Viewer/php/signup.php";
	private static final String TAG_SUCCESS = "success";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.sign_up);
		InitialiseVariables();
		CreateAccount.setOnClickListener(this);
	}

	private void InitialiseVariables() {
		// TODO Auto-generated method stub
		CollegeId = (EditText) findViewById(R.id.etCollegeId);
		RegistrationNumber = (EditText) findViewById(R.id.etRegistration);
		Password = (EditText) findViewById(R.id.etPassword);
		CreateAccount = (Button) findViewById(R.id.bCreate);
	}

	@Override
	public void onClick(View arg0) {
		// TODO Auto-generated method stub
		new CreateNewAccount().execute();
	}

	class CreateNewAccount extends AsyncTask<String, String, String> {
		protected void onPreExecute() {
			super.onPreExecute();
			pDialog = new ProgressDialog(SignUp.this);
			pDialog.setMessage("Creating Account..");
			pDialog.setIndeterminate(false);
			pDialog.setCancelable(true);
			pDialog.show();
		}

		@Override
		protected String doInBackground(String... arg0) {
			// TODO Auto-generated method stub
			String cid = CollegeId.getText().toString();
			String pass = Password.getText().toString();
			String rno = RegistrationNumber.getText().toString();

			// Building Parameters
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("rno", rno));
			params.add(new BasicNameValuePair("cid", cid));
			params.add(new BasicNameValuePair("pass", pass));

			// getting JSON Object
			// Note that create product url accepts POST method
			JSONObject json = jsonParser.makeHttpRequest(url_create_account,
					"POST", params);

			// check log cat for response
			Log.d("Create Response", json.toString());

			// check for success tag
			try {
				int success = json.getInt(TAG_SUCCESS);

				if (success == 1) {
					 Intent i = new Intent("android.intent.action.SIGNIN");
					 startActivity(i);
					 finish();

					

				} else {
					// failed to create account
					Toast toast = Toast.makeText(getApplicationContext(),
							"Some Error Occured.Please try again.",
							Toast.LENGTH_SHORT);
					toast.show();
					// Intent j = new Intent("android.intent.action.SIGNUP");
					// startActivity(j);

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