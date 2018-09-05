package com.bitacademy.service;

import com.bitacademy.dao.JobDao;
import com.bitacademy.vo.InterviewVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public void insertinterview(InterviewVo interviewVo) {
        jobDao.insertinterview(interviewVo);
    }

    public Map<String,Integer> setpage(int page) {
        Map<String, Integer> map = new HashMap<>();
        int pagingStartNum;
        int pagingEndNum;
        int pagingPrevNum;
        int pagingNextNum;
        int totalPage=jobDao.getTotalpage()/10;
        int fristitem=(page*10)-10;
        int enditem=(page*10)-1;
        pagingStartNum = page - (page % 10) + 1;
        pagingEndNum = page - (page % 10) + 10;
        if (page % 10 == 0) {
            pagingStartNum = pagingStartNum - 10;
            pagingEndNum = pagingEndNum - 10;
        }
        if (pagingEndNum > totalPage) {
            pagingEndNum = totalPage;
        }

        pagingPrevNum = pagingStartNum - 10;
        pagingNextNum = pagingStartNum + 10;
        if (pagingPrevNum < 1){
            pagingPrevNum = 1;
         }
        if( pagingNextNum > totalPage) {
            pagingNextNum = totalPage - (totalPage % 10)+1;
        }
        map.put("pagingStartNum",pagingStartNum);
        map.put("pagingEndNum",pagingEndNum);
        map.put("pagingPrevNum",pagingPrevNum);
        map.put("pagingNextNum",pagingNextNum);
        map.put("totalPage",totalPage);
        map.put("fristitem",fristitem);
        map.put("enditem",enditem);

        return map;

    }

    public InterviewVo selectNum(int num) {
        return jobDao.selectNum(num);
    }
}
