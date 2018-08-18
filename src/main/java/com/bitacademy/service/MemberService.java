package com.bitacademy.service;

import com.bitacademy.dao.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    private MemberDao memberDao;

    public int chkID(String memid) {
        return memberDao.chkID(memid);
    }
}
