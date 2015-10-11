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
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import android.widget.ListView;

import android.widget.Toast;

public class ReadResult extends Activity {
	private ProgressDialog pDialog;
	String rno;
	String cid;
	JSONParser jParser = new JSONParser();
	String Semester;
	String Total;
	String Course;
	String Sm;
	String Mt;
	String Et;
	TextView displaycid;
	TextView displayrno;
	ArrayList<HashMap<String, String>> ResultFetch;
	private static String url_readResult = "http://10.0.2.2/Result-Viewer/php/ReadData.php";

	private static final String TAG_SUCCESS = "success";
	private static final String TAG_TOTAL = "Total";
	private static final String TAG_SEMESTER = "Semester";
	private static final String TAG_COURSE = "Course_Code";
	private static final String TAG_SM = "S-M";
	private static final String TAG_MT = "M-T";
	private static final String TAG_ET = "E-T";
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
						Course = c.getString(TAG_COURSE);
						Total = c.getString(TAG_TOTAL);
						Sm = c.getString(TAG_SM);
						Mt = c.getString(TAG_MT);
						Et = c.getString(TAG_ET);

						HashMap<String, String> map = new HashMap<String, String>();
						map.put(TAG_SEMESTER, Semester);
						map.put(TAG_COURSE, Course);
						map.put(TAG_TOTAL, Total);
						map.put(TAG_SM, Sm);
						map.put(TAG_MT, Mt);
						map.put(TAG_ET, Et);
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
					displaycid.setText("College Id : " + cid);
					displayrno.setText("Registration Number : " + rno);
					ListAdapter adapter = new SimpleAdapter(ReadResult.this,
							ResultFetch, R.layout.list_item, new String[] {
									TAG_SEMESTER, TAG_COURSE, TAG_SM, TAG_MT, TAG_ET, TAG_TOTAL},
							new int[] { R.id.sem, R.id.sub, R.id.sm, R.id.mt, R.id.et,R.id.total});
					list.setAdapter(adapter);

					// ArrayAdapter<String> arrayAdapter = new
					// ArrayAdapter(ReadResult.this,android.R.layout.simple_list_item_1,
					// ResultFetch);
					// list.setAdapter(arrayAdapter);

				}
			});

		}

	}

}