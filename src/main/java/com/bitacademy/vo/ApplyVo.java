package com.bitacademy.vo;

public class ApplyVo {
    private int Applicant_no;
    private String ApplyDate;
    private String ApplyYear;
    private String ApplyMon;
    private String ApplyDay;
    private String TestDate;
    private String TestYear;
    private String TestMon;
    private String TestDay;
    private String CurriName;
    private String CateName;
    private String TestLang;
    private String TestResult;
    private String Coment;
    private String CDate;

    public ApplyVo() {
    }

    public ApplyVo(int applicant_no, String applyYear, String applyMon, String applyDay, String testYear, String testMon, String testDay, String curriName, String cateName, String testLang, String testResult, String coment) {
        Applicant_no = applicant_no;
        ApplyYear = applyYear;
        ApplyMon = applyMon;
        ApplyDay = applyDay;
        TestYear = testYear;
        TestMon = testMon;
        TestDay = testDay;
        CurriName = curriName;
        CateName = cateName;
        TestLang = testLang;
        TestResult = testResult;
        Coment = coment;

    }

    public String  getCDate() {
        return CDate;
    }

    public void setCDate(String CDate) {
        this.CDate = CDate;
    }

    public String getApplyDate() {
        return ApplyDate;
    }

    public void setApplyDate(String applyDate) {
        ApplyDate = applyDate;
    }

    public String getTestDate() {
        return TestDate;
    }

    public void setTestDate(String testDate) {
        TestDate = testDate;
    }

    public int getApplicant_no() {
        return Applicant_no;
    }

    public void setApplicant_no(int applicant_no) {
        Applicant_no = applicant_no;
    }

    public String getApplyYear() {
        return ApplyYear;
    }

    public void setApplyYear(String applyYear) {
        ApplyYear = applyYear;
    }

    public String getApplyMon() {
        return ApplyMon;
    }

    public void setApplyMon(String applyMon) {
        ApplyMon = applyMon;
    }

    public String getApplyDay() {
        return ApplyDay;
    }

    public void setApplyDay(String applyDay) {
        ApplyDay = applyDay;
    }

    public String getTestYear() {
        return TestYear;
    }

    public void setTestYear(String testYear) {
        TestYear = testYear;
    }

    public String getTestMon() {
        return TestMon;
    }

    public void setTestMon(String testMon) {
        TestMon = testMon;
    }

    public String getTestDay() {
        return TestDay;
    }

    public void setTestDay(String testDay) {
        TestDay = testDay;
    }

    public String getCurriName() {
        return CurriName;
    }

    public void setCurriName(String curriName) {
        CurriName = curriName;
    }

    public String getCateName() {
        return CateName;
    }

    public void setCateName(String cateName) {
        CateName = cateName;
    }

    public String getTestLang() {
        return TestLang;
    }

    public void setTestLang(String testLang) {
        TestLang = testLang;
    }

    public String getTestResult() {
        return TestResult;
    }

    public void setTestResult(String testResult) {
        TestResult = testResult;
    }

    public String getComent() {
        return Coment;
    }

    public void setComent(String coment) {
        Coment = coment;
    }

    @Override
    public String toString() {
        return "ApplyVo{" +
                "Applicant_no=" + Applicant_no +
                ", ApplyDate='" + ApplyDate + '\'' +
                ", ApplyYear='" + ApplyYear + '\'' +
                ", ApplyMon='" + ApplyMon + '\'' +
                ", ApplyDay='" + ApplyDay + '\'' +
                ", TestDate='" + TestDate + '\'' +
                ", TestYear='" + TestYear + '\'' +
                ", TestMon='" + TestMon + '\'' +
                ", TestDay='" + TestDay + '\'' +
                ", CurriName='" + CurriName + '\'' +
                ", CateName='" + CateName + '\'' +
                ", TestLang='" + TestLang + '\'' +
                ", TestResult='" + TestResult + '\'' +
                ", Coment='" + Coment + '\'' +
                ", CDate='" + CDate + '\'' +
                '}';
    }
}
