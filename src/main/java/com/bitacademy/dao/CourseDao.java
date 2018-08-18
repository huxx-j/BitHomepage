package com.bitacademy.dao;

import com.bitacademy.vo.BP2Vo;
import com.bitacademy.vo.PamphletVo;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseDao {
    @Autowired
    private SqlSession sqlSession;

    public List<BP2Vo> getLocationInfo(int bpNum) {
        return sqlSession.selectList("course.getLocationInfo", bpNum);
    }

    public PamphletVo getProjectInfo(BP2Vo bp2Vo) {
        return sqlSession.selectOne("course.getProjectInfo", bp2Vo);
    }
}
