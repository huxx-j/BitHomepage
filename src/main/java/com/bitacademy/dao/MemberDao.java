package com.bitacademy.dao;

import com.bitacademy.vo.MemberVo;
import com.bitacademy.vo.UserVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

    @Autowired
    private SqlSession sqlSession;

    public int chkID(String memid) {
//        return 1;
        return sqlSession.selectOne("member.chkID",memid);
    }

    public UserVo login_ok(UserVo userVo) {
        return sqlSession.selectOne("member.login_ok", userVo);
    }

    public int member_ipin_result_ok_old(MemberVo memberVo) {
        return sqlSession.insert("member.member_ipin_result_ok_old", memberVo);
    }
}
