package com.bitacademy.vo;

import java.sql.Timestamp;

public class InterviewVo {
    private int Num;
    private String InterviewManner;
    private String InterviewDescription;
    private String InterviewOpinion;
    private String CompReputiation;
    private String studName;
    private String Department;
    private String CompName;
    private int EstablishYear;
    private String Business;
    private String Address;
    private String HomePage;
    private String YearSell;
    private String StaffNum;
    private String UpdateDate;
    private int CompSeqNum;
    private String ImageLogoPath;
    private String HomepageURL;

    public InterviewVo() {
    }

    public InterviewVo(int num, String interviewManner, String interviewDescription, String interviewOpinion, String compReputiation, String studName, String department, String compName, int establishYear, String business, String address, String homePage, String yearSell, String staffNum, String updateDate, int compSeqNum, String imageLogoPath, String homepageURL) {
        Num = num;
        InterviewManner = interviewManner;
        InterviewDescription = interviewDescription;
        InterviewOpinion = interviewOpinion;
        CompReputiation = compReputiation;
        this.studName = studName;
        Department = department;
        CompName = compName;
        EstablishYear = establishYear;
        Business = business;
        Address = address;
        HomePage = homePage;
        YearSell = yearSell;
        StaffNum = staffNum;
        UpdateDate = updateDate;
        CompSeqNum = compSeqNum;
        ImageLogoPath = imageLogoPath;
        HomepageURL = homepageURL;
    }

    public int getNum() {
        return Num;
    }

    public void setNum(int num) {
        Num = num;
    }

    public String getInterviewManner() {
        return InterviewManner;
    }

    public void setInterviewManner(String interviewManner) {
        InterviewManner = interviewManner;
    }

    public String getInterviewDescription() {
        return InterviewDescription;
    }

    public void setInterviewDescription(String interviewDescription) {
        InterviewDescription = interviewDescription;
    }

    public String getInterviewOpinion() {
        return InterviewOpinion;
    }

    public void setInterviewOpinion(String interviewOpinion) {
        InterviewOpinion = interviewOpinion;
    }

    public String getCompReputiation() {
        return CompReputiation;
    }

    public void setCompReputiation(String compReputiation) {
        CompReputiation = compReputiation;
    }

    public String getStudName() {
        return studName;
    }

    public void setStudName(String studName) {
        this.studName = studName;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String department) {
        Department = department;
    }

    public String getCompName() {
        return CompName;
    }

    public void setCompName(String compName) {
        CompName = compName;
    }

    public int getEstablishYear() {
        return EstablishYear;
    }

    public void setEstablishYear(int establishYear) {
        EstablishYear = establishYear;
    }

    public String getBusiness() {
        return Business;
    }

    public void setBusiness(String business) {
        Business = business;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getHomePage() {
        return HomePage;
    }

    public void setHomePage(String homePage) {
        HomePage = homePage;
    }

    public String getYearSell() {
        return YearSell;
    }

    public void setYearSell(String yearSell) {
        YearSell = yearSell;
    }

    public String getStaffNum() {
        return StaffNum;
    }

    public void setStaffNum(String staffNum) {
        StaffNum = staffNum;
    }

    public String getUpdateDate() {
        return UpdateDate;
    }

    public void setUpdateDate(String updateDate) {
        UpdateDate = updateDate;
    }

    public int getCompSeqNum() {
        return CompSeqNum;
    }

    public void setCompSeqNum(int compSeqNum) {
        CompSeqNum = compSeqNum;
    }

    public String getImageLogoPath() {
        return ImageLogoPath;
    }

    public void setImageLogoPath(String imageLogoPath) {
        ImageLogoPath = imageLogoPath;
    }

    public String getHomepageURL() {
        return HomepageURL;
    }

    public void setHomepageURL(String homepageURL) {
        HomepageURL = homepageURL;
    }

    @Override
    public String toString() {
        return "InterviewVo{" +
                "Num=" + Num +
                ", InterviewManner='" + InterviewManner + '\'' +
                ", InterviewDescription='" + InterviewDescription + '\'' +
                ", InterviewOpinion='" + InterviewOpinion + '\'' +
                ", CompReputiation='" + CompReputiation + '\'' +
                ", studName='" + studName + '\'' +
                ", Department='" + Department + '\'' +
                ", CompName='" + CompName + '\'' +
                ", EstablishYear=" + EstablishYear +
                ", Business='" + Business + '\'' +
                ", Address='" + Address + '\'' +
                ", HomePage='" + HomePage + '\'' +
                ", YearSell='" + YearSell + '\'' +
                ", StaffNum='" + StaffNum + '\'' +
                ", UpdateDate='" + UpdateDate + '\'' +
                ", CompSeqNum=" + CompSeqNum +
                ", ImageLogoPath='" + ImageLogoPath + '\'' +
                ", HomepageURL='" + HomepageURL + '\'' +
                '}';
    }
}
