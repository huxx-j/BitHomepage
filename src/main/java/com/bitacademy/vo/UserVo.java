package com.bitacademy.vo;

public class UserVo {
    private String loginID;
    private String password;
    private String return_url;
    private int user_no;
    private String nameHan;

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
                '}';
    }
}
