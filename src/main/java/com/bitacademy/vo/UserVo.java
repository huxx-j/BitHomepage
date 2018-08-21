package com.bitacademy.vo;

public class UserVo {
    private String loginID;
    private String password;
    private String return_url;
    private int User_no;
    private String NameHan;

    public String getLoginID() {
        return loginID;
    }

    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }

    public int getUser_no() {
        return User_no;
    }

    public void setUser_no(int user_no) {
        User_no = user_no;
    }

    public String getNameHan() {
        return NameHan;
    }

    public void setNameHan(String nameHan) {
        NameHan = nameHan;
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
                ", User_no=" + User_no +
                ", NameHan='" + NameHan + '\'' +
                '}';
    }
}
