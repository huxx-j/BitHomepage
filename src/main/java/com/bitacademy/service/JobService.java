package com.bitacademy.service;

import com.bitacademy.dao.JobDao;
import com.bitacademy.vo.InterviewVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobDao jobDao;

    public List<InterviewVo> search(String inputSearch){
        return jobDao.search(inputSearch);
    }
    public List<InterviewVo> selectList(){
        return jobDao.selectList();
    }
}
