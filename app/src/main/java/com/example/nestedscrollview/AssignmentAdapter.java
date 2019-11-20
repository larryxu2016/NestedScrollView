package com.example.nestedscrollview;

import android.content.res.AssetManager;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.recyclerview.widget.RecyclerView;

import java.text.DecimalFormat;
import java.util.List;

/**
 * Created by LarryXu on 1/6/2018.
 */

public class AssignmentAdapter extends RecyclerView.Adapter<AssignmentAdapter.MyViewHolderAssignment> {

    private List<Assignment> assignmentList;
    private final OnItemClickListener listener;

    public interface OnItemClickListener {
        void onItemClick(Assignment item);
    }

    public AssignmentAdapter(List<Assignment> assignmentList, OnItemClickListener listener) {
        this.assignmentList = assignmentList;
        this.listener = listener;
    }

    public static class MyViewHolderAssignment extends RecyclerView.ViewHolder {
        public TextView name, dueDate, totalPoints;

        public MyViewHolderAssignment(View view) {
            super(view);
            name = (TextView) view.findViewById(R.id.assignName);
            dueDate = (TextView) view.findViewById(R.id.assignDueDate);
            totalPoints = (TextView) view.findViewById(R.id.assignTotalPts);
        }

        public void bind(final Assignment item, final OnItemClickListener listener) {
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    listener.onItemClick(item);
                }
            });
        }
    }

    @Override
    public int getItemViewType(int position) {
        int type = 0;
        String assignName = assignmentList.get(position).getName();

        String totalPtsStr = assignmentList.get(position).getTotalPoints();
        int totalPts = Integer.parseInt(totalPtsStr);

        String earnedPtsStr = assignmentList.get(position).getEarnedPoints();
        if (assignName.contains("mod") && totalPts == 0) {
            type = 1;
        }
        else if (assignName.contains("wk:") && totalPts == 0) {
            type = 2;
        } else if (earnedPtsStr != null && !earnedPtsStr.equals("null") && totalPts > 0) {
            type = 3;
        }
        return type;
    }

    @Override
    public AssignmentAdapter.MyViewHolderAssignment onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.card_view_assignment, parent, false);

        if (viewType == 1) {
            itemView = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.card_view_module, parent, false);
        } else if (viewType == 2) {
            itemView = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.card_view_week, parent, false);
        }  else if (viewType == 3) {
            itemView = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.card_view_finished_assign, parent, false);
        }

        return new AssignmentAdapter.MyViewHolderAssignment(itemView);
    }

    @Override
    public void onBindViewHolder(MyViewHolderAssignment holder, int position) {
        Assignment assignment = assignmentList.get(position);

        String assignName = assignment.getName();
        if (assignName.contains("mod:")) {
            holder.name.setText(assignName.split("mod:")[1]);
        } else if (assignName.contains("wk:")) {
            holder.name.setText(assignName.split("wk:")[1]);
        } else {
            holder.name.setText(assignName);
        }

        String dueDate = assignment.getDueDate();
        String totalPtsStr = assignment.getTotalPoints();
        String earnedPtsStr = assignmentList.get(position).getEarnedPoints();
        int totalPts = Integer.parseInt(totalPtsStr);

        if (!dueDate.equals("null") && dueDate != null) {
            holder.dueDate.setText(dueDate);
        } else {
            holder.dueDate.setText(" ");
        }

        if (totalPts > 0 && (earnedPtsStr == null || earnedPtsStr.equals("null"))) {
            holder.totalPoints.setText(totalPtsStr);
        } else if (totalPts > 0 &&(earnedPtsStr != null || !earnedPtsStr.equals("null"))) {
            int earnedPts = Integer.parseInt(earnedPtsStr);

            final DecimalFormat df = new DecimalFormat("#0");
            holder.totalPoints.setText(df.format(((double)earnedPts/totalPts*100) ) + "%");
        } else {
            holder.totalPoints.setText(" ");
        }

        holder.bind(assignment, listener);
    }

    @Override
    public int getItemCount() {
        return assignmentList.size();
    }
}
