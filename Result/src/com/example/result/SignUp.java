package com.example.result;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class SignUp extends Activity implements OnClickListener {
	ConnectionDetector cd;
	Boolean isInternetPresent;
	String regex, input, result;
	EditText RegistrationNumber, Password, ConfPass;
	Button CreateAccount;
	private Spinner spinner;
	private static final String[] paths = { "soe", "som", "sobt", "soict",
			"soljg", "sobsc", "sohss", "sovsas" };
	private ProgressDialog pDialog;
	JSONParser jsonParser = new JSONParser();
	private static String url_create_account = "http://10.0.2.2/Result-Viewer/php/signup.php";
	private static final String TAG_SUCCESS = "success";


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.sign_up);

		// CollegeId = (EditText) findViewById(R.id.etCollegeId);
		RegistrationNumber = (EditText) findViewById(R.id.etRegistration);
		Password = (EditText) findViewById(R.id.etPassword);
		ConfPass = (EditText) findViewById(R.id.etConfirm);
		CreateAccount = (Button) findViewById(R.id.bCreate);

		CreateAccount.setOnClickListener(this);

		spinner = (Spinner) findViewById(R.id.spinner);
		ArrayAdapter<String> adapter = new ArrayAdapter<String>(SignUp.this,
				R.layout.spinner_item, paths);
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(adapter);
		cd = new ConnectionDetector(getApplicationContext());

		isInternetPresent = cd.isConnectingToInternet();

	}
	 public boolean onCreateOptionsMenu(Menu menu) {  
	        // Inflate the menu; this adds items to the action bar if it is present.  
	        getMenuInflater().inflate(R.menu.main, menu);//Menu Resource, Menu  
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
		regex = "[1-9]{2}\\/[A-Z]{3,4}\\/[0-9]{3}";
		Matcher matcher = Pattern.compile(regex).matcher(input);

		if (isInternetPresent == true) {
			// TODO Auto-generated method stub
			if (!(matcher.find())) {
				RegistrationNumber.setError("Wrong Format.Please see the specified example.");
			}

			else if (Password.getText().toString().length() < 6) {
				Password.setError("Password must be atleast 6 characters in length.");
			} 
			else if (!(ConfPass.getText().toString() == Password.getText().toString())) {
				ConfPass.setError("Password doesn't match!.");
			}

			else {
				new CreateNewAccount().execute();
			}
		} else {
			Toast.makeText(getApplicationContext(),
					"No Internet Connection Found!", Toast.LENGTH_LONG).show();

		}
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
			String cid = spinner.getSelectedItem().toString();
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
					"GET", params);

			// check log cat for response
			Log.d("Create Response", json.toString());

			// check for success tag
			try {
				int success = json.getInt(TAG_SUCCESS);

				if (success == 1) {
					Intent i = new Intent("android.intent.action.SIGNIN");
					startActivity(i);
					finish();
				} else if (success == 0) {

					SignUp.this.runOnUiThread(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(getApplicationContext(),
									"Some error occured, Please try again",
									Toast.LENGTH_LONG).show();
						}
					});
					// failed to create account1.show();
					Intent j = new Intent("android.intent.action.SIGNUP");
					startActivity(j);
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