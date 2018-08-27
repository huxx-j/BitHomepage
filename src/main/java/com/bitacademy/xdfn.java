package com.bitacademy;

public class xdfn {

    public static void main(String[] args) {
        int page = 2;
        int totalCnt = 2289;
        int beginIndex = totalCnt - ((page-1)*14);
        System.out.println(beginIndex);
    }
}
