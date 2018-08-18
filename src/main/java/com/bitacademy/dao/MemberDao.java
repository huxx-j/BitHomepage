package com.bitacademy.dao;

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
}
