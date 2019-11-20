package com.example.nestedscrollview;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Course {
    private String courseTitle;
    private String courseName;
    private String dateRange;
    private int courseEarnedPts;
    private int courseAccumuPts;

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getDateRange() {
        return dateRange;
    }

    public void setDateRange(String dateRange) {
        this.dateRange = dateRange;
    }

    public int getCourseEarnedPts() {
        return courseEarnedPts;
    }

    public int getCourseAccumuPts() {
        return courseAccumuPts;
    }

    public Course(String courseTitle,
                  String courseName,
                  String classTerm,
                  String startDate,
                  String endDate,
                  String courseEarnedPts,
                  String courseAccumuPts) {
        this.courseTitle = courseTitle;
        this.courseName = courseName;
        this.dateRange = classTerm + " " + formatDate(startDate) + " - " + formatDate(endDate);
        this.courseEarnedPts = Integer.parseInt(courseEarnedPts);
        this.courseAccumuPts = Integer.parseInt(courseAccumuPts);
    }

    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle;
    }

    public String formatDate(String date) {
        String formatteddate;
        try {
            String oldpattern = "yyyy-MM-dd";
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(oldpattern);

            String newpattern = "MMM dd";
            SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat(newpattern);

            Date ddate = simpleDateFormat.parse(date);
            formatteddate = simpleDateFormat1.format(ddate);
            char lastDigitOfDay = formatteddate.split(" ")[1].charAt(1);

            if (lastDigitOfDay == '1')
                formatteddate += "st";
            else if (lastDigitOfDay == '2')
                formatteddate += "nd";
            else if (lastDigitOfDay == '3')
                formatteddate += "rd";
            else
                formatteddate += "th";
        }
        catch (Exception e) {
            e.printStackTrace();
            return date;
        }
        return formatteddate;
    }
}
