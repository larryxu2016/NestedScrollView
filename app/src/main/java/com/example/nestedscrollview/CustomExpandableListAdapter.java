package com.example.nestedscrollview;

/**
 * Created by LarryXu on 10/28/2017.
 */

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.Image;
//import android.support.v7.widget.DefaultItemAnimator;
//import android.support.v7.widget.LinearLayoutManager;
//import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
//import android.support.v4.view.ViewCompat;
import android.widget.Toast;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.larryxu.expandablerecyclerviewexample.animations.AnimationEndListener;
import com.example.larryxu.expandablerecyclerviewexample.animations.FoldAnimation;
import com.example.larryxu.expandablerecyclerviewexample.animations.HeightAnimation;
import com.example.larryxu.expandablerecyclerviewexample.views.FoldingCellView;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;

public class CustomExpandableListAdapter extends BaseExpandableListAdapter {

    private Context context;
    private List<Course> expandableListTitle;
    private Map<String, List<Assignment>> expandableListDetail;

    private HashMap<Integer, View> assignmentRecyclerViewList;
    private HashMap<Integer, View> groupList;

    public HashMap<Integer, FoldingCell> getAnimationViewList() {
        return animationViewList;
    }

    private HashMap<Integer, FoldingCell> animationViewList;

    public HashSet<Integer> getUnfoldedIndexes() {
        return unfoldedIndexes;
    }

    private HashSet<Integer> unfoldedIndexes = new HashSet<>();


    //private List<Assignment> assignmentList;
    //private RecyclerView.LayoutManager mLayoutManager;


    public Context getContext() {
        return context;
    }

    public HashMap<Integer, View> getAssignmentRecyclerViewList() {
        return assignmentRecyclerViewList;
    }

    public CustomExpandableListAdapter(Context context, List<Course> expandableListTitle,
                                       Map<String, List<Assignment>> expandableListDetail) {
        this.context = context;
        this.expandableListTitle = expandableListTitle;
        this.expandableListDetail = expandableListDetail;
        assignmentRecyclerViewList = new HashMap<>();
        groupList = new HashMap<>();
        animationViewList = new HashMap<>();
    }

    @Override
    public Object getChild(int listPosition, int expandedListPosition) {
        return this.expandableListDetail.get(this.expandableListTitle.get(listPosition).getCourseTitle());
    }

    @Override
    public long getChildId(int listPosition, int expandedListPosition) {
        return expandedListPosition;
    }

    @Override
    public View getChildView(int listPosition, final int expandedListPosition,
                             boolean isLastChild, View convertView, ViewGroup parent) {
        final List<Assignment> assignmentList =
            (List<Assignment>) getChild(listPosition, expandedListPosition);

        AssignmentAdapter assignmentAdapter;
        RecyclerView.LayoutManager mLayoutManager, mLayoutManager1;
        assignmentAdapter = new AssignmentAdapter(assignmentList, new AssignmentAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(Assignment item) {
                Toast.makeText(getContext(), item.getName(), Toast.LENGTH_SHORT).show();
            }
        });
        mLayoutManager =
                new LinearLayoutManager(this.context,
                        LinearLayoutManager.HORIZONTAL, false);

        FoldingCell cell = animationViewList.get(new Integer(listPosition));

        ViewHolder viewHolder;

        if (cell == null) {
            viewHolder = new ViewHolder();
            LayoutInflater layoutInflater1 = LayoutInflater.from(parent.getContext());
            cell = (FoldingCell) layoutInflater1.inflate(R.layout.cell, null);
            viewHolder.assignments = cell.findViewById(R.id.expandedListItem);
            viewHolder.assignments.setLayoutManager(mLayoutManager);
            viewHolder.assignments.setAdapter(assignmentAdapter);

            animationViewList.put(new Integer(listPosition), cell);
        }
        return cell;
    }


    @Override
    public int getChildrenCount(int listPosition) {
        return 1;
    }

    @Override
    public Object getGroup(int listPosition) {
        return this.expandableListTitle.get(listPosition);
    }

    @Override
    public int getGroupCount() {
        return this.expandableListTitle.size();
    }

    @Override
    public long getGroupId(int listPosition) {
        return listPosition;
    }

    public HashMap<Integer, View> getGroupList() {
        return groupList;
    }

    // View lookup cache
    private static class ViewHolder {
        RecyclerView assignments;
    }

    @Override
    public View getGroupView(int listPosition, boolean isExpanded,
                             View convertView, ViewGroup parent) {
        Course course = (Course) getGroup(listPosition);
        convertView = groupList.get(new Integer(listPosition));
        if (convertView == null) {
            LayoutInflater layoutInflater = (LayoutInflater) parent.getContext().
                    getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = layoutInflater.inflate(R.layout.list_group, null);
        }
        TextView listTitleTextView = (TextView) convertView
                .findViewById(R.id.courseTitle);
        listTitleTextView.setText(course.getCourseTitle());

        TextView listNameTextView = (TextView) convertView
                .findViewById(R.id.courseName);
        listNameTextView.setText(course.getCourseName());

        TextView listDateTextView = (TextView) convertView
                .findViewById(R.id.courseDate);
        listDateTextView.setText(course.getDateRange());

        ImageView checkGradeBtn = (ImageView) convertView
                .findViewById(R.id.imageViewCheckGrades);

        int earnedPts = course.getCourseEarnedPts();
        int accumuPts = course.getCourseAccumuPts();

        final View courseBtnSet = (View) convertView
                .findViewById(R.id.courseBtnSet);

        final View courseGradeLayout = (View) convertView
                .findViewById(R.id.courseGradeLayout);

        TextView courseGrade = (TextView) convertView
                .findViewById(R.id.courseGrade);
        final DecimalFormat df = new DecimalFormat("#0");
        courseGrade.setText(df.format(((double)earnedPts/accumuPts*100) ) + "%");

        final ImageView hideGradeBtn = (ImageView) convertView
                .findViewById(R.id.hideGrade);

        if (accumuPts > 0) {
            checkGradeBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    courseGradeLayout.setVisibility(VISIBLE);
                    courseBtnSet.setVisibility(GONE);
                    hideGradeBtn.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            courseGradeLayout.setVisibility(GONE);
                            courseBtnSet.setVisibility(VISIBLE);
                        }
                    });
                }
            });
        }

        groupList.put(new Integer(listPosition), convertView);
        return convertView;
    }

    // simple methods for register cell state changes
    public void registerToggle(int position) {
        if (unfoldedIndexes.contains(position))
            registerFold(position);
        else
            registerUnfold(position);
    }

    public void registerFold(int position) {
        unfoldedIndexes.remove(position);
    }

    public void registerUnfold(int position) {
        unfoldedIndexes.add(position);
    }

    @Override
    public boolean hasStableIds() {
        return false;
    }

    @Override
    public boolean isChildSelectable(int listPosition, int expandedListPosition) {
        return true;
    }
}