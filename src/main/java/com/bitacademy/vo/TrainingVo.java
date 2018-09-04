package com.bitacademy.vo;

public class TrainingVo {
    private int user_no;
    private int userTraining_no;
    private String startDate;
    private String endDate;
    private String eduCenterName;
    private String eduCourseName;
    private String content;
    private String startYear;
    private String startMon;
    private String endYear;
    private String endMon;

    public TrainingVo() {
    }

    public TrainingVo(int user_no, int userTraining_no, String startDate, String endDate, String eduCenterName, String eduCourseName, String content, String startYear, String startMon, String endYear, String endMon) {
        this.user_no = user_no;
        this.userTraining_no = userTraining_no;
        this.startDate = startDate;
        this.endDate = endDate;
        this.eduCenterName = eduCenterName;
        this.eduCourseName = eduCourseName;
        this.content = content;
        this.startYear = startYear;
        this.startMon = startMon;
        this.endYear = endYear;
        this.endMon = endMon;
    }

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public int getUserTraining_no() {
        return userTraining_no;
    }

    public void setUserTraining_no(int userTraining_no) {
        this.userTraining_no = userTraining_no;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getEduCenterName() {
        return eduCenterName;
    }

    public void setEduCenterName(String eduCenterName) {
        this.eduCenterName = eduCenterName;
    }

    public String getEduCourseName() {
        return eduCourseName;
    }

    public void setEduCourseName(String eduCourseName) {
        this.eduCourseName = eduCourseName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStartYear() {
        return startYear;
    }

    public void setStartYear(String startYear) {
        this.startYear = startYear;
    }

    public String getStartMon() {
        return startMon;
    }

    public void setStartMon(String startMon) {
        this.startMon = startMon;
    }

    public String getEndYear() {
        return endYear;
    }

    public void setEndYear(String endYear) {
        this.endYear = endYear;
    }

    public String getEndMon() {
        return endMon;
    }

    public void setEndMon(String endMon) {
        this.endMon = endMon;
    }

    @Override
    public String toString() {
        return "TrainingVo{" +
                "startYear=" + startYear +
                ", startMon=" + startMon +
                ", endYear=" + endYear +
                ", endMon=" + endMon +
                ", user_no=" + user_no +
                ", userTraining_no=" + userTraining_no +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", eduCenterName='" + eduCenterName + '\'' +
                ", eduCourseName='" + eduCourseName + '\'' +
                ", content='" + content + '\'' +
                ", startYear='" + startYear + '\'' +
                ", startMon='" + startMon + '\'' +
                ", endYear='" + endYear + '\'' +
                ", endMon='" + endMon + '\'' +
                '}';
    }

   }