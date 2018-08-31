package com.bitacademy.service;

import com.bitacademy.dao.MemberDao;
import com.bitacademy.vo.MemberVo;
import com.bitacademy.vo.UserModVo;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberDao memberDao;

    public int chkID(String memid) {
        return memberDao.chkID(memid);
    }

    public UserVo login_ok(UserVo userVo) {
        UserVo authVo = memberDao.login_ok(userVo);
        if (authVo == null) { //로그인이 실패하면 null 리턴
            return null;
        } else {
            if (authVo.getSleepStat().equals("휴면")) {
                authVo.setReturn_url("member/ActivateSleepingAccount"); //상태값이 휴면이면 휴면해제하는 페이지로 리다이렉트
                return authVo;
            } else {
                if (authVo.getRegDate() > 730) { //가입일이나 재동의일이 2년전이면 상태를 1로 설정
                    if (authVo.getReAgreeDate() > 730) {
                        authVo.setReturn_url("member/ReAgree"); //상태값이 1이면 재동의 필요하니 재동의 페이지로 리다이렉트
                        return authVo;
                    }
                }
            }
        }
        authVo.setReAgreeStat(0);
        authVo.setReturn_url(userVo.getReturn_url());
        return authVo; //로그인이 정상적으로 처리됨
    }

    public int member_ipin_result_ok_old(MemberVo memberVo) {
        return memberDao.member_ipin_result_ok_old(memberVo);
    }

    public UserVo ActivateSleepingAccount(UserVo authUser) {
        int sleepStat = memberDao.ActivateSleepingAccount(authUser);
        if (sleepStat == 1) {
            if (authUser.getRegDate() > 730) {
                if (authUser.getReAgreeDate() > 730) {
                    authUser.setReturn_url("member/ReAgree");
                    return authUser;
                }
            }
        }
        authUser.setReturn_url("/index");
        return authUser;
    }

    public int ReAgree(UserVo authUser) {
        return memberDao.ReAgree(authUser);
    }

    public UserModVo Member_modify(int user_no) {
        UserModVo userModVo = memberDao.Member_modify(user_no);
        if (userModVo.getNameEng()!=null){
            userModVo.setNameEngArray(userModVo.getNameEng().split(","));
        } else {
            String eng = " , ";
            userModVo.setNameEngArray(eng.split(","));
        }
        String tel = "000-0000-0000";
        if (userModVo.getTelephone()!=null) {
            userModVo.setTelephoneArray(userModVo.getTelephone().split("-"));
        } else {
            userModVo.setTelephoneArray(tel.split("-"));
        }
        if (userModVo.getCellphone()!=null) {
            userModVo.setCellphoneArray(userModVo.getCellphone().split("-"));
        } else {
            userModVo.setTelephoneArray(tel.split("-"));
        }
        return userModVo;
//        return memberDao.Member_modify(user_no);
    }

    public List<UserModVo> Member_modify_school(int user_no) {
        List<UserModVo> list = memberDao.Member_modify_school(user_no);
        for (UserModVo userModVo: list) {
            // 1. 날짜 처리
            String endYear = (String) userModVo.getEndYear();
            String endMon = (String) userModVo.getEndMon();
            String startYear = (String) userModVo.getStartYear();
            String startMon = (String) userModVo.getStartMon();
            if (endYear.contains("-") || endYear.equals("")) {
                endYear = "0";
            }
            if (endMon.contains("-") || endMon.equals("")) {
                endMon = "0";
            }
            if (startYear.contains("-") || startYear.equals("")){
                startYear = "0";
            }
            if (startMon.contains("-") || startMon.equals("")){
                startMon = "0";
            }
            userModVo.setEndYear(endYear);
            userModVo.setEndMon(endMon);
            userModVo.setStartYear(startYear);
            userModVo.setStartMon(startMon);
            // 1. end

            // 2. 학교이름 나눠주는 코드
            if (userModVo.getSchool()!=null){
                String s = userModVo.getSchool();
                String[] sArray = new String[2];
                if (s.contains("고등학교") || s.contains("검정고시")) {
                    if (s.substring(s.length() - 4, s.length()).equals("고등학교")) { //고등학교
                        sArray[0] = s.split("고등학교")[0]; //result = 학교이름
                        sArray[1] = s.substring(s.length() - 4, s.length()); // result = 고등학교
                    } else { // 검정고시
                        sArray[0] = "";
                        sArray[1] = "검정고시";
                    }
                    userModVo.setSchoolArray(sArray);
                } else if (s.contains("대학교") || s.contains("대학원") || s.contains("대학")) {
                    if (s.substring(s.length() - 3, s.length()).equals("대학교")) {
                        sArray[0] = s.split("대학교")[0]; //result = 학교이름
                        sArray[1] = s.substring(s.length() - 3, s.length()); // result = 대학교
                    } else if (s.substring(s.length() - 3, s.length()).equals("대학원")) {
                        sArray[0] = s.split("대학원")[0]; //result = 학교이름
                        sArray[1] = s.substring(s.length() - 3, s.length()); // result = 대학원
                    } else {
                        sArray[0] = s.split("대학")[0]; //result = 학교이름
                        sArray[1] = s.substring(s.length() - 2, s.length()); // result = 대학
                    }
                    userModVo.setSchoolArray(sArray);
                } else {
                    sArray[0] = s; //result = 데이터 그대로 출력
                    sArray[1] = "기타"; // result = 기타
                    userModVo.setSchoolArray(sArray);
                }
            } else { // 학교가 null일때
                String[] sArray = new String[2];
                sArray[0] = ""; //result = 빈칸
                sArray[1] = "선택"; // result = 선택
                userModVo.setSchoolArray(sArray);
            }
            // 2. end
        }
        if (list.size()<4) {
            UserModVo dummyVo = new UserModVo();
            for (int i = 0; i<=(4-list.size()); i++){
                list.add(dummyVo);
            }
        }
//        for (UserModVo userModVo : list) {
//            System.out.println(userModVo.toString());
//        }
        return list;
    }
}
