package com.bitacademy.vo;

public class PamphletVo {
    private String term;
    private int groupNum;
    private int termNum;
    private String category;
    private String subject;
    private String str1;
    private String str2;
    private String str3;
    private String str4;
    private String str5;
    private String strEtc;

    public PamphletVo() {
    }

    public PamphletVo(String term, int groupNum, int termNum, String category, String subject, String str1, String str2, String str3, String str4, String str5, String strEtc) {
        this.term = term;
        this.groupNum = groupNum;
        this.termNum = termNum;
        this.category = category;
        this.subject = subject;
        this.str1 = str1;
        this.str2 = str2;
        this.str3 = str3;
        this.str4 = str4;
        this.str5 = str5;
        this.strEtc = strEtc;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public int getGroupNum() {
        return groupNum;
    }

    public void setGroupNum(int groupNum) {
        this.groupNum = groupNum;
    }

    public int getTermNum() {
        return termNum;
    }

    public void setTermNum(int termNum) {
        this.termNum = termNum;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStr1() {
        return str1;
    }

    public void setStr1(String str1) {
        this.str1 = str1;
    }

    public String getStr2() {
        return str2;
    }

    public void setStr2(String str2) {
        this.str2 = str2;
    }

    public String getStr3() {
        return str3;
    }

    public void setStr3(String str3) {
        this.str3 = str3;
    }

    public String getStr4() {
        return str4;
    }

    public void setStr4(String str4) {
        this.str4 = str4;
    }

    public String getStr5() {
        return str5;
    }

    public void setStr5(String str5) {
        this.str5 = str5;
    }

    public String getStrEtc() {
        return strEtc;
    }

    public void setStrEtc(String strEtc) {
        this.strEtc = strEtc;
    }

    @Override
    public String toString() {
        return "PamphletVo{" +
                "term='" + term + '\'' +
                ", groupNum=" + groupNum +
                ", termNum=" + termNum +
                ", category='" + category + '\'' +
                ", subject='" + subject + '\'' +
                ", str1='" + str1 + '\'' +
                ", str2='" + str2 + '\'' +
                ", str3='" + str3 + '\'' +
                ", str4='" + str4 + '\'' +
                ", str5='" + str5 + '\'' +
                ", strEtc='" + strEtc + '\'' +
                '}';
    }
}
