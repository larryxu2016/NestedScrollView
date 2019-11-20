package com.example.nestedscrollview;

/**
 * Created by LarryXu on 1/6/2018.
 */

public class Assignment {
    private String name;
    private String dueDate;
    private String totalPoints;
    private String earnedPoints;

    public Assignment(String name, String dueDate, String totalPoints, String earnedPts) {
        this.name = name;
        this.dueDate = dueDate;
        this.totalPoints = totalPoints;
        this.earnedPoints = earnedPts;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDueDate() {
        return dueDate;
    }

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    }

    public String getTotalPoints() {
        return totalPoints;
    }

    public void setTotalPoints(String totalPoints) {
        this.totalPoints = totalPoints;
    }

    public String getEarnedPoints() {
        return earnedPoints;
    }

    public void setEarnedPoints(String earnedPoints) {
        this.earnedPoints = earnedPoints;
    }
}
