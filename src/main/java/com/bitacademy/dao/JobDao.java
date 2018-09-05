package com.bitacademy.dao;

import com.bitacademy.vo.InterviewVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class JobDao {
    @Autowired
    private SqlSession sqlSession;

    public List<InterviewVo> search(String search){
        return sqlSession.selectList("job.search",search);
    }
    public List<InterviewVo> selectList(){
        return sqlSession.selectList("job.selectList");
    }

    public void insertinterview(InterviewVo interviewVo) {
        sqlSession.insert("job.insertinterview" ,interviewVo);
    }

    public int getTotalpage() {
        return sqlSession.selectOne("job.getTotalpage");
    }

    public InterviewVo selectNum(int num) {
        return sqlSession.selectOne("job.selectNum",num);
    }
}
