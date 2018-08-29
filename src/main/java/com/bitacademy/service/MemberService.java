package com.bitacademy.service;

import com.bitacademy.dao.MemberDao;
import com.bitacademy.vo.MemberVo;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    private MemberDao memberDao;

    public int chkID(String memid) {
        return memberDao.chkID(memid);
    }

    public UserVo login_ok(UserVo userVo) {
        UserVo authVo = memberDao.login_ok(userVo);
        if (authVo == null) {
            userVo.setReturn_url("/index"); //로그인이 실패하면 메인페이지로 리다이렉트
            return userVo;
        } else {
            if (authVo.getSleepStat().equals("휴면")) {
//                authVo.setReturn_url("member/login_ActivateSleepingAccount"); //상태값이 휴면이면 휴면해제하는 페이지로 리다이렉트
                authVo.setReturn_url("member/ActivateSleepingAccount"); //상태값이 휴면이면 휴면해제하는 페이지로 리다이렉트
                return authVo;
            } else {
                if (authVo.getRegDate() > 730) { //가입일이나 재동의일이 2년전이면 상태를 1로 설정
                    if (authVo.getReAgreeDate() > 730) {
//                        authVo.setReAgreeStat(1);
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
}
