package com.bitacademy.service;

import com.bitacademy.dao.CourseDao;
import com.bitacademy.vo.BP2Vo;
import com.bitacademy.vo.PamphletVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    @Autowired
    private CourseDao courseDao;

    public List<BP2Vo> getLocationInfo(int bpNum) {
        return courseDao.getLocationInfo(bpNum);
    }

    public PamphletVo getProjectInfo(int termNum, int groupNum) {
        BP2Vo bp2Vo = new BP2Vo();
        bp2Vo.setTermNum(termNum);
        bp2Vo.setGroupNum(groupNum);
        return courseDao.getProjectInfo(bp2Vo);
    }
}
