package com.bitacademy.vo;

import java.util.Arrays;

public class UserModVo {
    private String loginID;
    private String nameHan;
    private String nameEng;
    private String[] nameEngArray;
    private int gender;
    private String email;
    private String postNum;
    private String address;
    private String familyPostNum;
    private String familyAddress;
    private String telephone;
    private String cellphone;
    private String bitLetter;
    private String[] telephoneArray;
    private String[] cellphoneArray;
    private String password;
    private String job;

    private int userScholarship_no;
    private int user_no;
    private String startDate;
    private Object[] startDateArray;
    private String endDate;
    private Object[] endDateArray;
    private String school;
    private String[] schoolArray;
    private String state;
    private String location;
    private String degree;
    private String major;
    private String subMajor;
    private int schoolPosition;

    private Object startYear;
    private Object startMon;
    private Object endYear;
    private Object endMon;


    public UserModVo() {
    }

    public UserModVo(String loginID, String nameHan, String nameEng, String[] nameEngArray, int gender, String email, String postNum, String address, String familyPostNum, String familyAddress, String telephone, String cellphone, String bitLetter, String[] telephoneArray, String[] cellphoneArray, int userScholarship_no, int user_no, String startDate, Object[] startDateArray, String endDate, Object[] endDateArray, String school, String[] schoolArray, String state, String location, String degree, String major, String subMajor, int schoolPosition, int startYear, int startMon, int endYear, int endMon) {
        this.loginID = loginID;
        this.nameHan = nameHan;
        this.nameEng = nameEng;
        this.nameEngArray = nameEngArray;
        this.gender = gender;
        this.email = email;
        this.postNum = postNum;
        this.address = address;
        this.familyPostNum = familyPostNum;
        this.familyAddress = familyAddress;
        this.telephone = telephone;
        this.cellphone = cellphone;
        this.bitLetter = bitLetter;
        this.telephoneArray = telephoneArray;
        this.cellphoneArray = cellphoneArray;
        this.userScholarship_no = userScholarship_no;
        this.user_no = user_no;
        this.startDate = startDate;
        this.startDateArray = startDateArray;
        this.endDate = endDate;
        this.endDateArray = endDateArray;
        this.school = school;
        this.schoolArray = schoolArray;
        this.state = state;
        this.location = location;
        this.degree = degree;
        this.major = major;
        this.subMajor = subMajor;
        this.schoolPosition = schoolPosition;
        this.startYear = startYear;
        this.startMon = startMon;
        this.endYear = endYear;
        this.endMon = endMon;
    }

    @Override
    public String toString() {
        return "UserModVo{" +
                "loginID='" + loginID + '\'' +
                ", nameHan='" + nameHan + '\'' +
                ", nameEng='" + nameEng + '\'' +
                ", nameEngArray=" + Arrays.toString(nameEngArray) +
                ", gender=" + gender +
                ", email='" + email + '\'' +
                ", postNum='" + postNum + '\'' +
                ", address='" + address + '\'' +
                ", familyPostNum='" + familyPostNum + '\'' +
                ", familyAddress='" + familyAddress + '\'' +
                ", telephone='" + telephone + '\'' +
                ", cellphone='" + cellphone + '\'' +
                ", bitLetter='" + bitLetter + '\'' +
                ", telephoneArray=" + Arrays.toString(telephoneArray) +
                ", cellphoneArray=" + Arrays.toString(cellphoneArray) +
                ", password='" + password + '\'' +
                ", job='" + job + '\'' +
                ", userScholarship_no=" + userScholarship_no +
                ", user_no=" + user_no +
                ", startDate='" + startDate + '\'' +
                ", startDateArray=" + Arrays.toString(startDateArray) +
                ", endDate='" + endDate + '\'' +
                ", endDateArray=" + Arrays.toString(endDateArray) +
                ", school='" + school + '\'' +
                ", schoolArray=" + Arrays.toString(schoolArray) +
                ", state='" + state + '\'' +
                ", location='" + location + '\'' +
                ", degree='" + degree + '\'' +
                ", major='" + major + '\'' +
                ", subMajor='" + subMajor + '\'' +
                ", schoolPosition=" + schoolPosition +
                ", startYear=" + startYear +
                ", startMon=" + startMon +
                ", endYear=" + endYear +
                ", endMon=" + endMon +
                '}';
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Object getStartYear() {
        return startYear;
    }

    public void setStartYear(Object startYear) {
        this.startYear = startYear;
    }

    public Object getStartMon() {
        return startMon;
    }

    public void setStartMon(Object startMon) {
        this.startMon = startMon;
    }

    public Object getEndYear() {
        return endYear;
    }

    public void setEndYear(Object endYear) {
        this.endYear = endYear;
    }

    public Object getEndMon() {
        return endMon;
    }

    public void setEndMon(Object endMon) {
        this.endMon = endMon;
    }

    public int getSchoolPosition() {
        return schoolPosition;
    }

    public void setSchoolPosition(int schoolPosition) {
        this.schoolPosition = schoolPosition;
    }

    public String[] getSchoolArray() {
        return schoolArray;
    }

    public void setSchoolArray(String[] schoolArray) {
        this.schoolArray = schoolArray;
    }

    public int getUserScholarship_no() {
        return userScholarship_no;
    }

    public void setUserScholarship_no(int userScholarship_no) {
        this.userScholarship_no = userScholarship_no;
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

    public Object[] getStartDateArray() {
        return startDateArray;
    }

    public void setStartDateArray(Object[] startDateArray) {
        this.startDateArray = startDateArray;
    }

    public Object[] getEndDateArray() {
        return endDateArray;
    }

    public void setEndDateArray(Object[] endDateArray) {
        this.endDateArray = endDateArray;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getSubMajor() {
        return subMajor;
    }

    public void setSubMajor(String subMajor) {
        this.subMajor = subMajor;
    }

    public String[] getNameEngArray() {
        return nameEngArray;
    }

    public void setNameEngArray(String[] nameEngArray) {
        this.nameEngArray = nameEngArray;
    }

    public String[] getTelephoneArray() {
        return telephoneArray;
    }

    public void setTelephoneArray(String[] telephoneArray) {
        this.telephoneArray = telephoneArray;
    }

    public String[] getCellphoneArray() {
        return cellphoneArray;
    }

    public void setCellphoneArray(String[] cellphoneArray) {
        this.cellphoneArray = cellphoneArray;
    }

    public String getLoginID() {
        return loginID;
    }

    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }

    public String getNameHan() {
        return nameHan;
    }

    public void setNameHan(String nameHan) {
        this.nameHan = nameHan;
    }

    public String getNameEng() {
        return nameEng;
    }

    public void setNameEng(String nameEng) {
        this.nameEng = nameEng;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
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

    public String getFamilyPostNum() {
        return familyPostNum;
    }

    public void setFamilyPostNum(String familyPostNum) {
        this.familyPostNum = familyPostNum;
    }

    public String getFamilyAddress() {
        return familyAddress;
    }

    public void setFamilyAddress(String familyAddress) {
        this.familyAddress = familyAddress;
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

    public String getBitLetter() {
        return bitLetter;
    }

    public void setBitLetter(String bitLetter) {
        this.bitLetter = bitLetter;
    }
}
