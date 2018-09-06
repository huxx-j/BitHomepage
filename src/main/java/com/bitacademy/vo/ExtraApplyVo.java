package com.bitacademy.vo;

import java.util.Arrays;

public class ExtraApplyVo {
    private int idx;
    private int user_no;
    //9. 지원동기
    private String motivetext;
    private String motive;
    //9. end

    //10. 수료 후 계획
    private String hopeChkBox;
    private String hope;
    private String hope_in;
    private String hopetext;
    private String afterPlan;
    //10. end

    //11. 학습내용
    private String studytext;
    private String learningContent;
    //11. end

    //12. 사용언어/툴
    private String tooltext;
    private String proLang;
    //12. end

    //13. 지원경로
    private String name;
    private String relation;
    private String office;
    private String etcName;
    private String etcRelation;
    private String etcPos;
    private String appWaychkbox;
    private String[] wayArray;

    private String applyWayName;
    private String applyWayRelation;
    private String applyWayJob;
    private String applyWayEtcName;
    private String applyWayEtcRelation;
    private String applyWayEtcJob;
    //13. end

    private String appWayCode;
    private String cID;

    public ExtraApplyVo() {
    }

    public ExtraApplyVo(String motivetext, String hopeChkBox, String hopetext, String studytext, String tooltext, String name, String relation, String office, String etcName, String etcRelation, String etcPos, String appWaychkbox, String cID) {
        this.motivetext = motivetext;
        this.hopeChkBox = hopeChkBox;
        this.hopetext = hopetext;
        this.studytext = studytext;
        this.tooltext = tooltext;
        this.name = name;
        this.relation = relation;
        this.office = office;
        this.etcName = etcName;
        this.etcRelation = etcRelation;
        this.etcPos = etcPos;
        this.appWaychkbox = appWaychkbox;
        this.cID = cID;
    }

    public String getHope_in() {
        return hope_in;
    }

    public void setHope_in(String hope_in) {
        this.hope_in = hope_in;
    }

    public String getAppWayCode() {
        return appWayCode;
    }

    public void setAppWayCode(String appWayCode) {
        this.appWayCode = appWayCode;
    }

    public int getUser_no() {
        return user_no;
    }

    public void setUser_no(int user_no) {
        this.user_no = user_no;
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getApplyWayName() {
        return applyWayName;
    }

    public void setApplyWayName(String applyWayName) {
        this.applyWayName = applyWayName;
    }

    public String getApplyWayRelation() {
        return applyWayRelation;
    }

    public void setApplyWayRelation(String applyWayRelation) {
        this.applyWayRelation = applyWayRelation;
    }

    public String getApplyWayJob() {
        return applyWayJob;
    }

    public void setApplyWayJob(String applyWayJob) {
        this.applyWayJob = applyWayJob;
    }

    public String getApplyWayEtcName() {
        return applyWayEtcName;
    }

    public void setApplyWayEtcName(String applyWayEtcName) {
        this.applyWayEtcName = applyWayEtcName;
    }

    public String getApplyWayEtcRelation() {
        return applyWayEtcRelation;
    }

    public void setApplyWayEtcRelation(String applyWayEtcRelation) {
        this.applyWayEtcRelation = applyWayEtcRelation;
    }

    public String getApplyWayEtcJob() {
        return applyWayEtcJob;
    }

    public void setApplyWayEtcJob(String applyWayEtcJob) {
        this.applyWayEtcJob = applyWayEtcJob;
    }

    public String[] getHope() {
        String[] hopeArray = hope.split("");
        return hopeArray;
    }

    public void setHope(String hope) {
        this.hope = hope;
    }

    public String getAfterPlan() {
        return afterPlan;
    }

    public void setAfterPlan(String afterPlan) {
        this.afterPlan = afterPlan;
    }

    public String getLearningContent() {
        return learningContent;
    }

    public void setLearningContent(String learningContent) {
        this.learningContent = learningContent;
    }

    public String getProLang() {
        return proLang;
    }

    public void setProLang(String proLang) {
        this.proLang = proLang;
    }

    public String getMotive() {
        return motive;
    }

    public void setMotive(String motive) {
        this.motive = motive;
    }

    public String[] getWayArray() {
        return wayArray;
    }

    public void setWayArray(String[] wayArray) {
        this.wayArray = wayArray;
    }

    public String getMotivetext() {
        return motivetext;
    }

    public void setMotivetext(String motivetext) {
        this.motivetext = motivetext;
    }

    public String getHopeChkBox() {
        return hopeChkBox;
    }

    public void setHopeChkBox(String hopeChkBox) {
        this.hopeChkBox = hopeChkBox;
    }

    public String getHopetext() {
        return hopetext;
    }

    public void setHopetext(String hopetext) {
        this.hopetext = hopetext;
    }

    public String getStudytext() {
        return studytext;
    }

    public void setStudytext(String studytext) {
        this.studytext = studytext;
    }

    public String getTooltext() {
        return tooltext;
    }

    public void setTooltext(String tooltext) {
        this.tooltext = tooltext;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getOffice() {
        return office;
    }

    public void setOffice(String office) {
        this.office = office;
    }

    public String getEtcName() {
        return etcName;
    }

    public void setEtcName(String etcName) {
        this.etcName = etcName;
    }

    public String getEtcRelation() {
        return etcRelation;
    }

    public void setEtcRelation(String etcRelation) {
        this.etcRelation = etcRelation;
    }

    public String getEtcPos() {
        return etcPos;
    }

    public void setEtcPos(String etcPos) {
        this.etcPos = etcPos;
    }

    public String getAppWaychkbox() {
        return appWaychkbox;
    }

    public void setAppWaychkbox(String appWaychkbox) {
        this.appWaychkbox = appWaychkbox;
    }

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    @Override
    public String toString() {
        return "ExtraApplyVo{" +
                "idx=" + idx +
                ", user_no=" + user_no +
                ", motivetext='" + motivetext + '\'' +
                ", motive='" + motive + '\'' +
                ", hopeChkBox='" + hopeChkBox + '\'' +
                ", hope='" + hope + '\'' +
                ", hopetext='" + hopetext + '\'' +
                ", afterPlan='" + afterPlan + '\'' +
                ", studytext='" + studytext + '\'' +
                ", learningContent='" + learningContent + '\'' +
                ", tooltext='" + tooltext + '\'' +
                ", proLang='" + proLang + '\'' +
                ", name='" + name + '\'' +
                ", relation='" + relation + '\'' +
                ", office='" + office + '\'' +
                ", etcName='" + etcName + '\'' +
                ", etcRelation='" + etcRelation + '\'' +
                ", etcPos='" + etcPos + '\'' +
                ", appWaychkbox='" + appWaychkbox + '\'' +
                ", wayArray=" + Arrays.toString(wayArray) +
                ", applyWayName='" + applyWayName + '\'' +
                ", applyWayRelation='" + applyWayRelation + '\'' +
                ", applyWayJob='" + applyWayJob + '\'' +
                ", applyWayEtcName='" + applyWayEtcName + '\'' +
                ", applyWayEtcRelation='" + applyWayEtcRelation + '\'' +
                ", applyWayEtcJob='" + applyWayEtcJob + '\'' +
                ", cID='" + cID + '\'' +
                '}';
    }
}
