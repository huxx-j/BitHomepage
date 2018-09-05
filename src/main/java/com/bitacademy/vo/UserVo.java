package com.bitacademy.vo;

public class UserVo {
    private String loginID;
    private String password;
    private String return_url;
    private int user_no;
    private String nameHan;
    private int authCode;
    private String studResNum;
    private String sleepStat;
    private int regDate;
    private int reAgreeDate;
    private int reAgreeStat;
    private String leaveStat;
    private String nameEng;
    private String telephone;
    private String cellphone;
    private String email;
    private String postNum;
    private String address;
    private String gender;
    private String thesis;
    private String lang1;
    private String lang2;
    private String langScore1;
    private String langScore2;
    private String millArm;
    private String millRank;
    private String millEnrollDate;
    private String millDischargeDate;
    private String millIncompletReason;
    private String startYear;
    private String startMon;
    private String endYear;
    private String endMon;
    private String acquireDate;
    private String acquireYear;
    private String acquireMon;
    private String liceName;
    private String licence_no;
    private String userCareer_no;
    private String userTraining_no;

    public String getLicence_no() {
        return licence_no;
    }

    public void setLicence_no(String licence_no) {
        this.licence_no = licence_no;
    }

    public String getLiceName() {
        return liceName;
    }

    public void setLiceName(String liceName) {
        this.liceName = liceName;
    }

    public String getAcquireDate() {
        return acquireDate;
    }

    public void setAcquireDate(String acquireDate) {
        this.acquireDate = acquireDate;
    }

    public String getAcquireYear() {
        if (acquireYear == null) {
            acquireYear = "0";
        } else {
            if (acquireYear.contains("-") || acquireYear.equals("")) {
                acquireYear = "0";
            }
        }
        return acquireYear;
    }

    public void setAcquireYear(String acquireYear) {
        this.acquireYear = acquireYear;
    }

    public String getAcquireMon() {
        if (acquireMon == null){
            acquireYear = "0";
        } else {
            if (acquireMon.contains("-") || acquireMon.equals("")) {
                acquireMon = "0";
            }
        }
        return acquireMon;
    }

    public void setAcquireMon(String acquireMon) {
        this.acquireMon = acquireMon;
    }

    public String getMillArm() {
        return millArm;
    }

    public void setMillArm(String millArm) {
        this.millArm = millArm;
    }

    public String getMillRank() {
        return millRank;
    }

    public void setMillRank(String millRank) {
        this.millRank = millRank;
    }

    public String getMillEnrollDate() {
        return millEnrollDate;
    }

    public void setMillEnrollDate(String millEnrollDate) {
        this.millEnrollDate = millEnrollDate;
    }

    public String getMillDischargeDate() {
        return millDischargeDate;
    }

    public void setMillDischargeDate(String millDischargeDate) {
        this.millDischargeDate = millDischargeDate;
    }

    public String getMillIncompletReason() {
        return millIncompletReason;
    }

    public void setMillIncompletReason(String millIncompletReason) {
        this.millIncompletReason = millIncompletReason;
    }



    public String getStartYear() {
        if (startYear.contains("-") || startYear.equals("")){

            startYear = "0";
        }
        return startYear;
    }

    public void setStartYear(String startYear) {
        this.startYear = startYear;
    }

    public String getStartMon() {
        if (startMon.contains("-") || startMon.equals("")){
            startMon = "0";
        }
        return startMon;
    }

    public void setStartMon(String startMon) {
        this.startMon = startMon;
    }

    public String getEndYear() {
        if (endYear.contains("-") || endYear.equals("")) {
            endYear = "0";
        }
        return endYear;
    }

    public void setEndYear(String endYear) {
        this.endYear = endYear;
    }

    public String getEndMon() {
        if (endMon.contains("-") || endMon.equals("")) {
            endMon = "0";
        }
        return endMon;
    }

    public void setEndMon(String endMon) {
        this.endMon = endMon;
    }

    public String[] getLang1() {
        String[] langArray1 = langArray1 = lang1.split(",");
        return langArray1;
    }

    public void setLang1(String lang1) {
        this.lang1 = lang1;
    }

    public String[] getLang2() {
        String[] langArray2 = lang2.split(",");
        return langArray2;
    }

    public void setLang2(String lang2) {
        this.lang2 = lang2;
    }

    public String[] getLangScore1() {
        String[] langScoreArray1 = langScore1.split(",");
        return langScoreArray1;
    }

    public void setLangScore1(String langScore1) {
        this.langScore1 = langScore1;
    }

    public String[] getLangScore2() {
        String[] langScoreArray2 = langScore2.split(",");
        return langScoreArray2;
    }

    public void setLangScore2(String langScore2) {
        this.langScore2 = langScore2;
    }

    public String getThesis() {
        return thesis;
    }

    public void setThesis(String thesis) {
        this.thesis = thesis;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPostNum() {
        return postNum;
    }

    public void setPostNum(String postNum) {
        this.postNum = postNum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNameEng() {
        return nameEng;
    }

    public void setNameEng(String nameEng) {
        this.nameEng = nameEng;
    }

    public String getLeaveStat() {
        return leaveStat;
    }

    public void setLeaveStat(String leaveStat) {
        this.leaveStat = leaveStat;
    }

    public int getReAgreeStat() {
        return reAgreeStat;
    }

    public void setReAgreeStat(int reAgreeStat) {
        this.reAgreeStat = reAgreeStat;
    }

    public String getSleepStat() {
        return sleepStat;
    }

    public void setSleepStat(String sleepStat) {
        this.sleepStat = sleepStat;
    }

    public int getRegDate() {
        return regDate;
    }

    public void setRegDate(int regDate) {
        this.regDate = regDate;
    }

    public int getReAgreeDate() {
        return reAgreeDate;
    }

    public void setReAgreeDate(int reAgreeDate) {
        this.reAgreeDate = reAgreeDate;
    }

    public int getAuthCode() {
        return authCode;
    }

    public void setAuthCode(int authCode) {
        this.authCode = authCode;
    }

    public String getStudResNum() {
        return studResNum;
    }

    public void setStudResNum(String studResNum) {
        this.studResNum = studResNum;
    }

    public String getLoginID() {
        return loginID;
    }

    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public String getNameHan() {
        return nameHan;
    }

    public void setNameHan(String nameHan) {
        this.nameHan = nameHan;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReturn_url() {
        return return_url;
    }

    public void setReturn_url(String return_url) {
        this.return_url = return_url;
    }

    @Override
    public String toString() {
        return "UserVo{" +
                "loginID='" + loginID + '\'' +
                ", password='" + password + '\'' +
                ", return_url='" + return_url + '\'' +
                ", user_no=" + user_no +
                ", nameHan='" + nameHan + '\'' +
                ", authCode=" + authCode +
                ", studResNum='" + studResNum + '\'' +
                ", sleepStat='" + sleepStat + '\'' +
                ", regDate=" + regDate +
                ", reAgreeDate=" + reAgreeDate +
                ", reAgreeStat=" + reAgreeStat +
                ", leaveStat='" + leaveStat + '\'' +
                ", nameEng='" + nameEng + '\'' +
                ", telephone='" + telephone + '\'' +
                ", cellphone='" + cellphone + '\'' +
                ", email='" + email + '\'' +
                ", postNum='" + postNum + '\'' +
                ", address='" + address + '\'' +
                ", gender='" + gender + '\'' +
                ", thesis='" + thesis + '\'' +
                ", lang1='" + lang1 + '\'' +
                ", lang2='" + lang2 + '\'' +
                ", langScore1='" + langScore1 + '\'' +
                ", langScore2='" + langScore2 + '\'' +
                ", millArm='" + millArm + '\'' +
                ", millRank='" + millRank + '\'' +
                ", millEnrollDate='" + millEnrollDate + '\'' +
                ", millDischargeDate='" + millDischargeDate + '\'' +
                ", millIncompletReason='" + millIncompletReason + '\'' +
                ", startYear='" + startYear + '\'' +
                ", startMon='" + startMon + '\'' +
                ", endYear='" + endYear + '\'' +
                ", endMon='" + endMon + '\'' +
                ", acquireDate='" + acquireDate + '\'' +
                ", acquireYear='" + acquireYear + '\'' +
                ", acquireMon='" + acquireMon + '\'' +
                ", liceName='" + liceName + '\'' +
                '}';
    }
}
