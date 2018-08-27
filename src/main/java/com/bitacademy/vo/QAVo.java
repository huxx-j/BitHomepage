package com.bitacademy.vo;

public class QAVo {
    private int index;
    private int idx;
    private String category;
    private String notice_yn;
    private String loginID;
    private String nameHan;
    private String email;
    private String tel_Num;
    private String hp_Num;
    private String title;
    private String content;
    private int visit;
    private int ref;
    private int re_Step;
    private int re_Level;
    private String fileName;
    private String fileSize;
    private String del_yn;
    private String reg_Date;

    public QAVo() {
    }

    public QAVo(int idx, String category, String notice_yn, String loginID, String nameHan, String email, String tel_Num, String hp_Num, String title, String content, int visit, int ref, int re_Step, int re_Level, String fileName, String fileSize, String del_yn, String reg_Date) {
        this.idx = idx;
        this.category = category;
        this.notice_yn = notice_yn;
        this.loginID = loginID;
        this.nameHan = nameHan;
        this.email = email;
        this.tel_Num = tel_Num;
        this.hp_Num = hp_Num;
        this.title = title;
        this.content = content;
        this.visit = visit;
        this.ref = ref;
        this.re_Step = re_Step;
        this.re_Level = re_Level;
        this.fileName = fileName;
        this.fileSize = fileSize;
        this.del_yn = del_yn;
        this.reg_Date = reg_Date;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getNotice_yn() {
        return notice_yn;
    }

    public void setNotice_yn(String notice_yn) {
        this.notice_yn = notice_yn;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel_Num() {
        return tel_Num;
    }

    public void setTel_Num(String tel_Num) {
        this.tel_Num = tel_Num;
    }

    public String getHp_Num() {
        return hp_Num;
    }

    public void setHp_Num(String hp_Num) {
        this.hp_Num = hp_Num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getVisit() {
        return visit;
    }

    public void setVisit(int visit) {
        this.visit = visit;
    }

    public int getRef() {
        return ref;
    }

    public void setRef(int ref) {
        this.ref = ref;
    }

    public int getRe_Step() {
        return re_Step;
    }

    public void setRe_Step(int re_Step) {
        this.re_Step = re_Step;
    }

    public int getRe_Level() {
        return re_Level;
    }

    public void setRe_Level(int re_Level) {
        this.re_Level = re_Level;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public String getDel_yn() {
        return del_yn;
    }

    public void setDel_yn(String del_yn) {
        this.del_yn = del_yn;
    }

    public String getReg_Date() {
        return reg_Date;
    }

    public void setReg_Date(String reg_Date) {
        this.reg_Date = reg_Date;
    }

    @Override
    public String toString() {
        return "QAVo{" +
                "idx=" + idx +
                ", category='" + category + '\'' +
                ", notice_yn='" + notice_yn + '\'' +
                ", loginID='" + loginID + '\'' +
                ", nameHan='" + nameHan + '\'' +
                ", email='" + email + '\'' +
                ", tel_Num='" + tel_Num + '\'' +
                ", hp_Num='" + hp_Num + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", visit=" + visit +
                ", ref=" + ref +
                ", re_Step=" + re_Step +
                ", re_Level=" + re_Level +
                ", fileName='" + fileName + '\'' +
                ", fileSize='" + fileSize + '\'' +
                ", del_yn='" + del_yn + '\'' +
                ", reg_Date='" + reg_Date + '\'' +
                '}';
    }
}
