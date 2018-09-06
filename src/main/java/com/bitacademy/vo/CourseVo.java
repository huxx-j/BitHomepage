package com.bitacademy.vo;

public class CourseVo {
    private String curriculum_no;
    private String curriculumCate_no;
    private String curriName;
    private String startDate;
    private String state;

    public CourseVo() {
    }

    public CourseVo(String curriculum_no, String curriculumCate_no, String curriName, String startDate, String state) {
        this.curriculum_no = curriculum_no;
        this.curriculumCate_no = curriculumCate_no;
        this.curriName = curriName;
        this.startDate = startDate;
        this.state = state;
    }

    public String getCurriculum_no() {
        return curriculum_no;
    }

    public void setCurriculum_no(String curriculum_no) {
        this.curriculum_no = curriculum_no;
    }

    public String getCurriculumCate_no() {
        return curriculumCate_no;
    }

    public void setCurriculumCate_no(String curriculumCate_no) {
        this.curriculumCate_no = curriculumCate_no;
    }

    public String getCurriName() {
        return curriName;
    }

    public void setCurriName(String curriName) {
        this.curriName = curriName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "CourseVo{" +
                "curriculum_no='" + curriculum_no + '\'' +
                ", curriculumCate_no='" + curriculumCate_no + '\'' +
                ", curriName='" + curriName + '\'' +
                ", startDate='" + startDate + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
