package com.example.result;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import android.app.Activity;
import android.app.ListActivity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import android.widget.ListView;

import android.widget.Toast;

public class ReadResult extends Activity {
	private ProgressDialog pDialog;
	String rno;
	String cid;
	JSONParser jParser = new JSONParser();
	String Semester;
	String Score;
	String Subject;
	TextView displaycid;
	TextView displayrno;
	ArrayList<HashMap<String, String>> ResultFetch;
	private static String url_readResult = "http://10.0.2.2/Result-Viewer/php/ReadData.php";

	private static final String TAG_SUCCESS = "success";
	private static final String TAG_SCORE = "Score";
	private static final String TAG_SEMESTER = "Semester";
	private static final String TAG_SUBJECT = "Subject";
	private static final String TAG_PRODUCTS = "products";
	
	ListView list;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.read_result);
		Bundle gotData = getIntent().getExtras();
		cid = gotData.getString("collgId");
		rno = gotData.getString("rollNo");
		displaycid = (TextView) findViewById(R.id.tvcllgid);
		displayrno = (TextView) findViewById(R.id.tvrollno);
		list = (ListView) findViewById(android.R.id.list);
		ResultFetch = new ArrayList<HashMap<String, String>>();
		new LoadResult().execute();

	}

	class LoadResult extends AsyncTask<String, String, String> {
		protected void onPreExecute() {
			super.onPreExecute();
			pDialog = new ProgressDialog(ReadResult.this);
			pDialog.setMessage("Loading Result. Please wait...");
			pDialog.setIndeterminate(false);
			pDialog.setCancelable(false);
			pDialog.show();
		}

		@Override
		protected String doInBackground(String... params) {
			// TODO Auto-generated method stub

			List<NameValuePair> paramss = new ArrayList<NameValuePair>();
			paramss.add(new BasicNameValuePair("rno", rno));
			paramss.add(new BasicNameValuePair("cid", cid));

			JSONObject json = jParser.makeHttpRequest(url_readResult, "GET",
					paramss);
			Log.d("Data: ", json.toString());
			try {
				int success = json.getInt(TAG_SUCCESS);
				if (success == 1) {
					
					JSONArray products = json.getJSONArray(TAG_PRODUCTS);
					for (int i = 0; i < products.length(); i++) {
						JSONObject c = products.getJSONObject(i);
						Semester = c.getString(TAG_SEMESTER);
						Score = c.getString(TAG_SCORE);
						Subject = c.getString(TAG_SUBJECT);
						HashMap<String, String> map = new HashMap<String, String>();
						map.put(TAG_SEMESTER, Semester);
						map.put(TAG_SCORE, Score);
						map.put(TAG_SUBJECT, Subject);
						ResultFetch.add(map);
						
					}
				} else {
					// Toast toast = Toast.makeText(getApplicationContext(),
					// "No Result Found", Toast.LENGTH_SHORT);
					// toast.show();
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}

			return null;
		}

		protected void onPostExecute(String file_url) {
			pDialog.dismiss();
			runOnUiThread(new Runnable() {
				public void run() {
					displaycid.setText("College Id : "+cid);
					displayrno.setText("Registration Number : " + rno);
					ArrayAdapter<String> arrayAdapter = new ArrayAdapter(ReadResult.this,android.R.layout.simple_list_item_1, ResultFetch);
					list.setAdapter(arrayAdapter);

				}
			});

		}

	}

}