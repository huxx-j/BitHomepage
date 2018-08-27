package com.bitacademy.dao;

import com.bitacademy.vo.QAVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Repository
public class SupportDao {
    @Autowired
    private SqlSession sqlSession;

    public List<QAVo> getQAList(Map<String, Integer> map) {
        return sqlSession.selectList("qa.getQAList", map);
    }

    public int getTotalCnt() {
        return sqlSession.selectOne("qa.getTotalCnt");
    }

    public QAVo Support_online_content(int idx) {
        return sqlSession.selectOne("qa.Support_online_content", idx);
    }

    public QAVo Support_online_write(int idx) {
        return sqlSession.selectOne("qa.Support_online_write", idx);
    }

    public int Support_online_write_re(QAVo qaVo) {
        return sqlSession.insert("qa.Support_online_write_re", qaVo);
    }

    public int Support_online_write_up(QAVo qaVo) {
        return sqlSession.update("qa.Support_online_write_up", qaVo);
    }

    @Transactional
    public int Support_online_write_new(QAVo qaVo) {
        int s = sqlSession.insert("qa.Support_online_write_new", qaVo);
        int u = sqlSession.update("qa.refUp", qaVo.getIdx());
        return u;
    }

    public int refChk(int idx) {
        return sqlSession.selectOne("qa.refChk", idx);
    }

    public int Support_online_del(int idx) {
        return sqlSession.delete("qa.Support_online_del", idx);
    }
}
