package com.bitacademy.dao;

import com.bitacademy.vo.MemberVo;
import com.bitacademy.vo.UserModVo;
import com.bitacademy.vo.UserVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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

    public int ActivateSleepingAccount(UserVo authUser) {
        return sqlSession.update("member.ActivateSleepingAccount", authUser);
    }

    public int ReAgree(UserVo authUser) {
        return sqlSession.update("member.ReAgree", authUser);

    }

    public UserModVo Member_modify(int user_no) {
        return sqlSession.selectOne("member.Member_modify",user_no);
    }

    public List<UserModVo> Member_modify_school(int user_no) {
        return sqlSession.selectList("member.Member_modify_school",user_no);
    }

    public int member_modify_ok(UserModVo userModVo) {
        return sqlSession.update("member.member_modify_ok", userModVo);
    }


    public int member_school_modify_ok(UserModVo userModVo) {
        System.out.println(userModVo.toString());
        return sqlSession.insert("member.member_school_modify_ok", userModVo);
    }

    public int member_del(Map<String,Object> map) {
        return sqlSession.update("member.member_del", map);
    }
}
