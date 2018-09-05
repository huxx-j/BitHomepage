package com.bitacademy.vo;

public class CareerVo {
    private int userCareer_no;
    private int user_no;
    private String startDate;
    private String endDate;
    private String compName;
    private String devPart;
    private String role;
    private String telePhone;
    private String companyAddress;
    private String state;
    private String department;
    private String startYear;
    private String startMon;
    private String endYear;
    private String endMon;
    private String yearSal;
    private String retireReason;

    public CareerVo() {
    }

    public CareerVo(int userCareer_no, int user_no, String startDate, String endDate, String compName, String devPart, String role, String telePhone, String companyAddress, String state, String department, String startYear, String startMon, String endYear, String endMon) {
        this.userCareer_no = userCareer_no;
        this.user_no = user_no;
        this.startDate = startDate;
        this.endDate = endDate;
        this.compName = compName;
        this.devPart = devPart;
        this.role = role;
        this.telePhone = telePhone;
        this.companyAddress = companyAddress;
        this.state = state;
        this.department = department;
        this.startYear = startYear;
        this.startMon = startMon;
        this.endYear = endYear;
        this.endMon = endMon;
    }

    public String getYearSal() {
        return yearSal;
    }

    public void setYearSal(String yearSal) {
        this.yearSal = yearSal;
    }

    public String getRetireReason() {
        return retireReason;
    }

    public void setRetireReason(String retireReason) {
        this.retireReason = retireReason;
    }

    public int getUserCareer_no() {
        return userCareer_no;
    }

    public void setUserCareer_no(int userCareer_no) {
        this.userCareer_no = userCareer_no;
    }

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
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

    public String getCompName() {
        return compName;
    }

    public void setCompName(String compName) {
        this.compName = compName;
    }

    public String getDevPart() {
        return devPart;
    }

    public void setDevPart(String devPart) {
        this.devPart = devPart;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getTelePhone() {
        return telePhone;
    }

    public void setTelePhone(String telePhone) {
        this.telePhone = telePhone;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
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
        return "CareerVo{" +
                "user_no='" + user_no + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", compName='" + compName + '\'' +
                ", devPart='" + devPart + '\'' +
                ", role='" + role + '\'' +
                ", telePhone='" + telePhone + '\'' +
                ", companyAddress='" + companyAddress + '\'' +
                ", state='" + state + '\'' +
                ", department='" + department + '\'' +
                ", startYear='" + startYear + '\'' +
                ", startMon='" + startMon + '\'' +
                ", endYear='" + endYear + '\'' +
                ", endMon='" + endMon + '\'' +
                '}';
    }
}
