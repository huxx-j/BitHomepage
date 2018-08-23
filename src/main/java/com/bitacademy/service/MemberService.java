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
        return memberDao.login_ok(userVo);
    }

    public int member_ipin_result_ok_old(MemberVo memberVo) {
        return memberDao.member_ipin_result_ok_old(memberVo);
    }
}
