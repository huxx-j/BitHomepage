package com.bitacademy.dao;

import com.bitacademy.vo.ApplyVo;
import com.bitacademy.vo.UserVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RegisterDao {
    @Autowired
    private SqlSession sqlSession;

    public List<ApplyVo> register_requestResult(UserVo authUser) {
        return sqlSession.selectList("apply.register_requestResult", authUser);
    }
}
