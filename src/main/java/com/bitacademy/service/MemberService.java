package com.bitacademy.service;

import com.bitacademy.dao.MemberDao;
import com.bitacademy.vo.MemberVo;
import com.bitacademy.vo.UserModReqVo;
import com.bitacademy.vo.UserModVo;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
            String[] sArray = new String[2];
            if (userModVo.getSchool()!=null){
                String s = userModVo.getSchool();
                    if (s.contains("고등학교") || s.contains("검정고시")) {
                        if (s.substring(s.length() - 4, s.length()).equals("고등학교")) { //고등학교
                            sArray[0] = s.split("고등학교")[0]; //result = 학교이름
                            sArray[1] = s.substring(s.length() - 4, s.length()); // result = 고등학교
                        } else { // 검정고시
                            sArray[0] = "";
                            sArray[1] = "검정고시";
                        }
//                        userModVo.setSchoolArray(sArray);
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
//                        userModVo.setSchoolArray(sArray);
                    } else if (s.contains("기타")){
                        sArray[0] = s.split("기타")[0]; //result = 학교이름
                        sArray[1] = s.substring(s.length() - 2, s.length()); // result = 기타
                    } else  {
                        sArray[0] = s; //result = 데이터 그대로 출력
                        sArray[1] = "기타"; // result = 기타
//                        userModVo.setSchoolArray(sArray);
                    }
            } else { // 학교가 null일때
//                String[] sArray = new String[2];
                sArray[0] = ""; //result = 빈칸
                sArray[1] = "선택"; // result = 선택
//                userModVo.setSchoolArray(sArray);
            }
            userModVo.setSchoolArray(sArray);
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

    @Transactional
    public int member_modify_ok(UserModReqVo userModReqVo) {
        // 1. 개인정보 데이터 조합 및 저장
        UserModVo userModVo = new UserModVo();
        userModVo.setUser_no(Integer.parseInt(userModReqVo.getUser_no()));

        String engFirstName = userModReqVo.getUser_nameEng_first();
        String engLastName = userModReqVo.getUser_nameEng_second();
        userModVo.setNameEng(engFirstName+","+engLastName);

        userModVo.setPassword(userModReqVo.getPassword());

        String tel1 = userModReqVo.getTelephone1();
        String tel2 = userModReqVo.getTelephone2();
        String tel3 = userModReqVo.getTelephone3();
        userModVo.setTelephone(tel1+"-"+tel2+"-"+tel3);

        String cell1 = userModReqVo.getHandphone1();
        String cell2 = userModReqVo.getHandphone2();
        String cell3 = userModReqVo.getHandphone3();
        userModVo.setCellphone(cell1+"-"+cell2+"-"+cell3);

        userModVo.setEmail(userModReqVo.getEmail());
        userModVo.setBitLetter(userModReqVo.getBitletter());
        userModVo.setFamilyPostNum(userModReqVo.getCzipcode());
        userModVo.setFamilyAddress(userModReqVo.getCaddr());
        userModVo.setPostNum(userModReqVo.getCzipcode2());
        userModVo.setAddress(userModReqVo.getCaddr2());
        userModVo.setJob(userModReqVo.getJob());

        int cnt = memberDao.member_modify_ok(userModVo);
        // 1. end

        // 2. 학력등록정보 데이터 조합 및 저장
        if (userModReqVo.getSchool_0() != null && !userModReqVo.getSchool_0().equals("") && !userModReqVo.getSchool_0().equals(" ")) {
            String startYear = userModReqVo.getDteFr_0();
            String startMon = userModReqVo.getDayFr_0();
            userModVo.setStartDate(startYear + "-" + startMon);

            String endYear = userModReqVo.getDteEnd_0();
            String endMon = userModReqVo.getDayEnd_0();
            userModVo.setEndDate(endYear + "-" + endMon);

            String school = userModReqVo.getSchool_0();
            String schoolClassify = userModReqVo.getSchoolclassify_0();
            userModVo.setSchool(school + schoolClassify);

            userModVo.setLocation(userModReqVo.getSchLocation_0());
            userModVo.setDegree(userModReqVo.getSchDegree_0());
            userModVo.setMajor(userModReqVo.getSchDepartment_0());
            userModVo.setSubMajor(userModReqVo.getSchSubDepartment_0());
            userModVo.setUserScholarship_no(Integer.parseInt(userModReqVo.getNum_0()));
            userModVo.setState(userModReqVo.getBigo_0());

            memberDao.member_school_modify_ok(userModVo);
        }

        if (userModReqVo.getSchool_1() != null && !userModReqVo.getSchool_1().equals("") && !userModReqVo.getSchool_1().equals(" ")){
            String startYear = userModReqVo.getDteFr_1();
            String startMon = userModReqVo.getDayFr_1();
            userModVo.setStartDate(startYear + "-" + startMon);

            String endYear = userModReqVo.getDteEnd_1();
            String endMon = userModReqVo.getDayEnd_1();
            userModVo.setEndDate(endYear + "-" + endMon);

            String school = userModReqVo.getSchool_1();
            String schoolClassify = userModReqVo.getSchoolclassify_1();
            userModVo.setSchool(school + schoolClassify);

            userModVo.setLocation(userModReqVo.getSchLocation_1());
            userModVo.setDegree(userModReqVo.getSchDegree_1());
            userModVo.setMajor(userModReqVo.getSchDepartment_1());
            userModVo.setSubMajor(userModReqVo.getSchSubDepartment_1());
            userModVo.setUserScholarship_no(Integer.parseInt(userModReqVo.getNum_1()));
            userModVo.setState(userModReqVo.getBigo_1());

            memberDao.member_school_modify_ok(userModVo);
        }
        if (userModReqVo.getSchool_2() != null && !userModReqVo.getSchool_2().equals("") && !userModReqVo.getSchool_2().equals(" ")){
            String startYear = userModReqVo.getDteFr_2();
            String startMon = userModReqVo.getDayFr_2();
            userModVo.setStartDate(startYear + "-" + startMon);

            String endYear = userModReqVo.getDteEnd_2();
            String endMon = userModReqVo.getDayEnd_2();
            userModVo.setEndDate(endYear + "-" + endMon);

            String school = userModReqVo.getSchool_2();
            String schoolClassify = userModReqVo.getSchoolclassify_2();
            userModVo.setSchool(school + schoolClassify);

            userModVo.setLocation(userModReqVo.getSchLocation_2());
            userModVo.setDegree(userModReqVo.getSchDegree_2());
            userModVo.setMajor(userModReqVo.getSchDepartment_2());
            userModVo.setSubMajor(userModReqVo.getSchSubDepartment_2());
            userModVo.setUserScholarship_no(Integer.parseInt(userModReqVo.getNum_2()));
            userModVo.setState(userModReqVo.getBigo_2());

            memberDao.member_school_modify_ok(userModVo);
        }
        if (userModReqVo.getSchool_3() != null && !userModReqVo.getSchool_3().equals("") && !userModReqVo.getSchool_3().equals(" ")){
            String startYear = userModReqVo.getDteFr_3();
            String startMon = userModReqVo.getDayFr_3();
            userModVo.setStartDate(startYear + "-" + startMon);

            String endYear = userModReqVo.getDteEnd_3();
            String endMon = userModReqVo.getDayEnd_3();
            userModVo.setEndDate(endYear + "-" + endMon);

            String school = userModReqVo.getSchool_3();
            String schoolClassify = userModReqVo.getSchoolclassify_3();
            userModVo.setSchool(school + schoolClassify);

            userModVo.setLocation(userModReqVo.getSchLocation_3());
            userModVo.setDegree(userModReqVo.getSchDegree_3());
            userModVo.setMajor(userModReqVo.getSchDepartment_3());
            userModVo.setSubMajor(userModReqVo.getSchSubDepartment_3());
            userModVo.setUserScholarship_no(Integer.parseInt(userModReqVo.getNum_3()));
            userModVo.setState(userModReqVo.getBigo_3());

            memberDao.member_school_modify_ok(userModVo);
        }

        // 2. end
        return 0;
    }

    public int member_del(int user_no, String loginID) {
        Map<String, Object> map = new HashMap<>();
        map.put("user_no", user_no);
        map.put("loginID", loginID);
        return memberDao.member_del(map);
    }
}
