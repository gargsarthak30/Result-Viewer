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
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;

public class ReadResult extends ListActivity {
	private ProgressDialog pDialog;
	JSONParser jParser = new JSONParser();

	ArrayList<HashMap<String, String>> ResultFetch;
	private static String url_readResult = "http://10.0.2.2/Result-Viewer/php/ReadData.php";

	private static final String TAG_SUCCESS = "success";
	private static final String TAG_SCORE = "Score";
	private static final String TAG_SEMESTER = "Semester";
	private static final String TAG_PRODUCTS = "products";
	JSONArray products = null;
	ListView list;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.read_result);
		list = (ListView) getListView();
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

			List<NameValuePair> param = new ArrayList<NameValuePair>();

			JSONObject json = jParser.makeHttpRequest(url_readResult, "GET",
					param);
			Log.d("Result: ", json.toString());
			try {
				int success = json.getInt(TAG_SUCCESS);
				if (success == 1) {
					products = json.getJSONArray(TAG_PRODUCTS);
					for (int i = 0; i < products.length(); i++) {
						JSONObject c = products.getJSONObject(i);
						String Semester = c.getString(TAG_SEMESTER);
						String Score = c.getString(TAG_SCORE);
						HashMap<String, String> map = new HashMap<String, String>();
						map.put(TAG_SEMESTER, Semester);
						map.put(TAG_SCORE, Score);
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

					ListAdapter adapter = new SimpleAdapter(ReadResult.this,
							ResultFetch, R.layout.list_item, new String[] {
									TAG_SEMESTER, TAG_SCORE }, new int[] {
									R.id.semester, R.id.score });

					list.setAdapter(adapter);
				}
			});

		}

	}

}
