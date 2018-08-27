package com.bitacademy.vo;

public class InterviewImageLogoPathVo {
    private int idx;
    private String ImageLogoPath;
    private String HomepageURL;
    private String CompName;

    public InterviewImageLogoPathVo() {
    }

    public int getIdx() {
        return idx;
    }

    public void setIdx(int idx) {
        this.idx = idx;
    }

    public String getImageLogoPath() {
        return ImageLogoPath;
    }

    public void setImageLogoPath(String imageLogoPath) {
        ImageLogoPath = imageLogoPath;
    }

    public String getHomepageURL() {
        return HomepageURL;
    }

    public void setHomepageURL(String homepageURL) {
        HomepageURL = homepageURL;
    }

    public String getCompName() {
        return CompName;
    }

    public void setCompName(String compName) {
        CompName = compName;
    }

    public InterviewImageLogoPathVo(int idx, String imageLogoPath, String homepageURL, String compName) {
        this.idx = idx;
        ImageLogoPath = imageLogoPath;
        HomepageURL = homepageURL;
        CompName = compName;
    }

    @Override
    public String toString() {
        return "InterviewImageLogoPathVo{" +
                "idx=" + idx +
                ", ImageLogoPath='" + ImageLogoPath + '\'' +
                ", HomepageURL='" + HomepageURL + '\'' +
                ", CompName='" + CompName + '\'' +
                '}';
    }
}
