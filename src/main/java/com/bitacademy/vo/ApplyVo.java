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

    private int User_no;
    private int Curriculum_no;
    private String ApplyType;
    private String TestScore;
    private String Deposit;
    private String DepositAmount;
    private String CardPayDate;
    private String CardPayAmount;
    private String TotalPay;
    private String DepositDate;
    private String CardPayState;
    private String Note;
    private String State;
    private String GisuFlag;
    private String AfterPlan;
    private String Motive;
    private String hope;

    private String isAppYN;

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

    public String[] getHope() {
        String[] hopeArray = hope.split("");
        return hopeArray;
    }

    public void setHope(String hope) {
        this.hope = hope;
    }

    public String getIsAppYN() {
        return isAppYN;
    }

    public void setIsAppYN(String isAppYN) {
        this.isAppYN = isAppYN;
    }

    public int getUser_no() {
        return User_no;
    }

    public void setUser_no(int user_no) {
        User_no = user_no;
    }

    public int getCurriculum_no() {
        return Curriculum_no;
    }

    public void setCurriculum_no(int curriculum_no) {
        Curriculum_no = curriculum_no;
    }

    public String getApplyType() {
        return ApplyType;
    }

    public void setApplyType(String applyType) {
        ApplyType = applyType;
    }

    public String getTestScore() {
        return TestScore;
    }

    public void setTestScore(String testScore) {
        TestScore = testScore;
    }

    public String getDeposit() {
        return Deposit;
    }

    public void setDeposit(String deposit) {
        Deposit = deposit;
    }

    public String getDepositAmount() {
        return DepositAmount;
    }

    public void setDepositAmount(String depositAmount) {
        DepositAmount = depositAmount;
    }

    public String getCardPayDate() {
        return CardPayDate;
    }

    public void setCardPayDate(String cardPayDate) {
        CardPayDate = cardPayDate;
    }

    public String getCardPayAmount() {
        return CardPayAmount;
    }

    public void setCardPayAmount(String cardPayAmount) {
        CardPayAmount = cardPayAmount;
    }

    public String getTotalPay() {
        return TotalPay;
    }

    public void setTotalPay(String totalPay) {
        TotalPay = totalPay;
    }

    public String getDepositDate() {
        return DepositDate;
    }

    public void setDepositDate(String depositDate) {
        DepositDate = depositDate;
    }

    public String getCardPayState() {
        return CardPayState;
    }

    public void setCardPayState(String cardPayState) {
        CardPayState = cardPayState;
    }

    public String getNote() {
        return Note;
    }

    public void setNote(String note) {
        Note = note;
    }

    public String getState() {
        return State;
    }

    public void setState(String state) {
        State = state;
    }

    public String getGisuFlag() {
        return GisuFlag;
    }

    public void setGisuFlag(String gisuFlag) {
        GisuFlag = gisuFlag;
    }

    public String getAfterPlan() {
        return AfterPlan;
    }

    public void setAfterPlan(String afterPlan) {
        AfterPlan = afterPlan;
    }

    public String getMotive() {
        return Motive;
    }

    public void setMotive(String motive) {
        Motive = motive;
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
                ", User_no=" + User_no +
                ", Curriculum_no=" + Curriculum_no +
                ", ApplyType='" + ApplyType + '\'' +
                ", TestScore='" + TestScore + '\'' +
                ", Deposit='" + Deposit + '\'' +
                ", DepositAmount='" + DepositAmount + '\'' +
                ", CardPayDate='" + CardPayDate + '\'' +
                ", CardPayAmount='" + CardPayAmount + '\'' +
                ", TotalPay='" + TotalPay + '\'' +
                ", DepositDate='" + DepositDate + '\'' +
                ", CardPayState='" + CardPayState + '\'' +
                ", Note='" + Note + '\'' +
                ", State='" + State + '\'' +
                ", GisuFlag='" + GisuFlag + '\'' +
                ", AfterPlan='" + AfterPlan + '\'' +
                ", Motive='" + Motive + '\'' +
                '}';
    }
}
