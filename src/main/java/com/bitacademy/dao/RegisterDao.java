package com.bitacademy.dao;

import com.bitacademy.vo.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class RegisterDao {
    @Autowired
    private SqlSession sqlSession;

    public List<ApplyVo> register_requestResult(UserVo authUser) {
        return sqlSession.selectList("apply.register_requestResult", authUser);
    }

    public List<PayVo> register_depositCheck(int user_no) {
        return sqlSession.selectList("apply.register_depositCheck", user_no);
    }

    public ApplyVo register_form(Map<String,Object> map) {
        return sqlSession.selectOne("apply.register_form", map);
    }

    public UserVo register_form_info(int user_no) {
        return sqlSession.selectOne("apply.register_form_info", user_no);
    }

    public List<TrainingVo> register_form_training(int user_no) {
        return sqlSession.selectList("apply.register_form_training", user_no);
    }

    public List<CareerVo> register_form_career(int user_no) {
        return sqlSession.selectList("apply.register_form_career", user_no);
    }

    public UserVo register_form_Lang_Mil(int user_no) {
        return sqlSession.selectOne("apply.register_form_Lang_Mil", user_no);
    }

    public List<UserVo> register_form_Licence(int user_no) {
        return sqlSession.selectList("apply.register_form_Licence", user_no);
    }

    public ApplyVo register_form_hope(Map<String,Object> map) {
        return sqlSession.selectOne("apply.register_form_hope", map);
    }
}
