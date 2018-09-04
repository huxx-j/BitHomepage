package com.bitacademy.vo;

public class MemberVo {
    //회원가입용 Vo
    private String sDupInfo;
    private String sName;
    private String name;
    private String loginID;
    private String password;
    private String confirm_pwd;
    private String czipcode2;
    private String caddr2;
    private String telephone1;
    private String telephone2;
    private String telephone3;
    private String handphone1;
    private String handphone2;
    private String handphone3;
    private String mail1;
    private String mail2;
    private String bitLetter;
    private String job;

    public MemberVo() {
    }

    public MemberVo(String sDupInfo, String sName, String name, String loginID, String password, String confirm_pwd, String czipcode2, String caddr2, String telephone1, String telephone2, String telephone3, String handphone1, String handphone2, String handphone3, String mail1, String mail2, String bitLetter, String job) {
        this.sDupInfo = sDupInfo;
        this.sName = sName;
        this.name = name;
        this.loginID = loginID;
        this.password = password;
        this.confirm_pwd = confirm_pwd;
        this.czipcode2 = czipcode2;
        this.caddr2 = caddr2;
        this.telephone1 = telephone1;
        this.telephone2 = telephone2;
        this.telephone3 = telephone3;
        this.handphone1 = handphone1;
        this.handphone2 = handphone2;
        this.handphone3 = handphone3;
        this.mail1 = mail1;
        this.mail2 = mail2;
        this.bitLetter = bitLetter;
        this.job = job;
    }

    public String getsDupInfo() {
        return sDupInfo;
    }

    public void setsDupInfo(String sDupInfo) {
        this.sDupInfo = sDupInfo;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginID() {
        return loginID;
    }

    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm_pwd() {
        return confirm_pwd;
    }

    public void setConfirm_pwd(String confirm_pwd) {
        this.confirm_pwd = confirm_pwd;
    }

    public String getCzipcode2() {
        return czipcode2;
    }

    public void setCzipcode2(String czipcode2) {
        this.czipcode2 = czipcode2;
    }

    public String getCaddr2() {
        return caddr2;
    }

    public void setCaddr2(String caddr2) {
        this.caddr2 = caddr2;
    }

    public String getTelephone1() {
        return telephone1;
    }

    public void setTelephone1(String telephone1) {
        this.telephone1 = telephone1;
    }

    public String getTelephone2() {
        return telephone2;
    }

    public void setTelephone2(String telephone2) {
        this.telephone2 = telephone2;
    }

    public String getTelephone3() {
        return telephone3;
    }

    public void setTelephone3(String telephone3) {
        this.telephone3 = telephone3;
    }

    public String getHandphone1() {
        return handphone1;
    }

    public void setHandphone1(String handphone1) {
        this.handphone1 = handphone1;
    }

    public String getHandphone2() {
        return handphone2;
    }

    public void setHandphone2(String handphone2) {
        this.handphone2 = handphone2;
    }

    public String getHandphone3() {
        return handphone3;
    }

    public void setHandphone3(String handphone3) {
        this.handphone3 = handphone3;
    }

    public String getMail1() {
        return mail1;
    }

    public void setMail1(String mail1) {
        this.mail1 = mail1;
    }

    public String getMail2() {
        return mail2;
    }

    public void setMail2(String mail2) {
        this.mail2 = mail2;
    }

    public String getBitLetter() {
        return bitLetter;
    }

    public void setBitLetter(String bitletter) {
        this.bitLetter = bitLetter;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    @Override
    public String toString() {
        return "MemberVo{" +
                "sDupInfo='" + sDupInfo + '\'' +
                ", sName='" + sName + '\'' +
                ", name='" + name + '\'' +
                ", loginID='" + loginID + '\'' +
                ", password='" + password + '\'' +
                ", confirm_pwd='" + confirm_pwd + '\'' +
                ", czipcode2='" + czipcode2 + '\'' +
                ", caddr2='" + caddr2 + '\'' +
                ", telephone1='" + telephone1 + '\'' +
                ", telephone2='" + telephone2 + '\'' +
                ", telephone3='" + telephone3 + '\'' +
                ", handphone1='" + handphone1 + '\'' +
                ", handphone2='" + handphone2 + '\'' +
                ", handphone3='" + handphone3 + '\'' +
                ", mail1='" + mail1 + '\'' +
                ", mail2='" + mail2 + '\'' +
                ", bitletter='" + bitLetter + '\'' +
                ", job='" + job + '\'' +
                '}';
    }
}
