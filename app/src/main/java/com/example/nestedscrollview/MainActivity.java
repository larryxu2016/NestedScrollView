package com.example.nestedscrollview;

import androidx.appcompat.app.AppCompatActivity;

import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "MainActivity";

    private Button btnGoToCourses;
    ExpandableListView listView;
    CustomExpandableListAdapter adapter;
    List<Course> courses;

    Map<String, List<Assignment>> assignmentDetail;

    public class CourseData extends AsyncTask {
        @Override
        protected void onPreExecute() {
        }

        @Override
        protected Object doInBackground(Object[] objects) {
            try {
                DataUtil dataUtil = new DataUtil("displayCourseAssignment.php");
                String jsonString = dataUtil.process(null);
                JSONArray jsonArray = new JSONArray(jsonString);
                courses = new ArrayList<Course>();

                int length = jsonArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jsonObj = jsonArray.getJSONObject(i);
                    List<Assignment> subItems = new ArrayList<Assignment>();
                    JSONArray jsonArrayAssign = jsonObj.getJSONArray("assignments");
                    int lengthOfAssign = jsonArrayAssign.length();
                    for (int j = 0; j < lengthOfAssign; j++) {
                        JSONObject jsonObj1 = jsonArrayAssign.getJSONObject(j);
                        subItems.add(new Assignment(
                                jsonObj1.getString("assignName"),
                                jsonObj1.getString("assignDueDate"),
                                jsonObj1.getString("assignTotalPts"),
                                jsonObj1.getString("assignEarnedPts") ));
                    }
                    assignmentDetail.put(jsonObj.getString("courseTitle"), subItems);
                    courses.add(i, new Course(
                        jsonObj.getString("courseTitle"),
                        jsonObj.getString("courseName"),
                        jsonObj.getString("classTerm"),
                        jsonObj.getString("classStartDate"),
                        jsonObj.getString("classEndDate"),
                        jsonObj.getString("ptsEanred"),
                        jsonObj.getString("accumulTotalPts")));
                }
                return jsonArray;
            } catch (Exception e) {
                System.out.println(e.getMessage());
                return new String("Exception: " + e.getMessage());
            }
        }

        @Override
        protected void onPostExecute(Object o) {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    adapter = new CustomExpandableListAdapter(MainActivity.this, courses, assignmentDetail);
                    listView.setAdapter(adapter);
                }
            });
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        assignmentDetail = new LinkedHashMap<String, List<Assignment>>();
        listView = findViewById(R.id.mainListView);

        new CourseData().execute();

        listView.setOnGroupExpandListener(new ExpandableListView.OnGroupExpandListener() {
            @Override
            public void onGroupExpand(int i) {
            FoldingCell cell = adapter.getAnimationViewList().get(new Integer(i));
            if (cell != null) {
                cell.unfold(false);
                adapter.getAnimationViewList().put(new Integer(i), cell);
            }
            }
        });

        listView.setOnGroupCollapseListener(new ExpandableListView.OnGroupCollapseListener() {
            @Override
            public void onGroupCollapse(int i) {

            }
        });

        listView.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() {
            @Override
            public boolean onGroupClick(ExpandableListView expandableListView, View view, int i, long l) {
            if (listView.isGroupExpanded(i)) {
                final int pos = i;
                FoldingCell cell = adapter.getAnimationViewList().get(new Integer(pos));
                cell.fold(false);
                adapter.getAnimationViewList().put(new Integer(pos), cell);

                final Handler handler = new Handler();
                handler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        //Do something after 1000ms

                        listView.collapseGroup(pos);
                    }
                }, 1000);
            } else {
                listView.expandGroup(i);
            }
            return true;
            }
        });

    }
}
