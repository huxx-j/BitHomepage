package com.bitacademy.vo;

public class PayVo {
    private String curriNickname;
    private String applyType;
    private String cateName;
    private String deposit;
    private String depositDate;
    private String depositAmount;
    private String cardPayState;
    private String cardPayDate;
    private String cardPayAmount;
    private String curriName;

    public PayVo() {
    }

    public PayVo(String curriNickname, String applyType, String cateName, String deposit, String depositDate, String depositAmount, String cardPayState, String cardPayDate, String cardPayAmount, String curriName) {
        this.curriNickname = curriNickname;
        this.applyType = applyType;
        this.cateName = cateName;
        this.deposit = deposit;
        this.depositDate = depositDate;
        this.depositAmount = depositAmount;
        this.cardPayState = cardPayState;
        this.cardPayDate = cardPayDate;
        this.cardPayAmount = cardPayAmount;
        this.curriName = curriName;
    }

    public String getCurriName() {
        return curriName;
    }

    public void setCurriName(String curriName) {
        this.curriName = curriName;
    }

    public String getCurriNickname() {
        return curriNickname;
    }

    public void setCurriNickname(String curriNickname) {
        this.curriNickname = curriNickname;
    }

    public String getApplyType() {
        return applyType;
    }

    public void setApplyType(String applyType) {
        this.applyType = applyType;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public String getDeposit() {
        return deposit;
    }

    public void setDeposit(String deposit) {
        this.deposit = deposit;
    }

    public String getDepositDate() {
        return depositDate;
    }

    public void setDepositDate(String depositDate) {
        this.depositDate = depositDate;
    }

    public String getDepositAmount() {
        return depositAmount;
    }

    public void setDepositAmount(String depositAmount) {
        this.depositAmount = depositAmount;
    }

    public String getCardPayState() {
        return cardPayState;
    }

    public void setCardPayState(String cardPayState) {
        this.cardPayState = cardPayState;
    }

    public String getCardPayDate() {
        return cardPayDate;
    }

    public void setCardPayDate(String cardPayDate) {
        this.cardPayDate = cardPayDate;
    }

    public String getCardPayAmount() {
        return cardPayAmount;
    }

    public void setCardPayAmount(String cardPayAmount) {
        this.cardPayAmount = cardPayAmount;
    }

    @Override
    public String toString() {
        return "PayVo{" +
                "curriNickname='" + curriNickname + '\'' +
                ", applyType='" + applyType + '\'' +
                ", cateName='" + cateName + '\'' +
                ", deposit='" + deposit + '\'' +
                ", depositDate='" + depositDate + '\'' +
                ", depositAmount='" + depositAmount + '\'' +
                ", cardPayState='" + cardPayState + '\'' +
                ", cardPayDate='" + cardPayDate + '\'' +
                ", cardPayAmount='" + cardPayAmount + '\'' +
                ", curriName='" + curriName + '\'' +
                '}';
    }
}
