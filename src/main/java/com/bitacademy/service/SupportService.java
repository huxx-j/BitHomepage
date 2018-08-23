package com.bitacademy.service;

import com.bitacademy.dao.SupportDao;
import com.bitacademy.vo.QAVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SupportService {
    @Autowired
    private SupportDao supportDao;

    public Map<String, Object> getQAList(int page) {
        int pageSize= 14; //한 페이지에 보여질 게시글 수
        int start = (page-1) * pageSize; //MySQL Limit 절의 시작 번호
        int totalCnt = supportDao.getTotalCnt(); //게시글 총 개수 2289
        int beginIndex = totalCnt - ((page-1)*pageSize);

        Map<String, Integer> map = new HashMap<>();
        map.put("pageSize", pageSize);
        map.put("start", start);
        List<QAVo> list = supportDao.getQAList(map); //페이지에 맞는 게시글 가져오는 코드

        for (int i = 0; i < list.size(); i++){
            list.get(i).setIndex(beginIndex-i); //인덱스 바꾸는 코드

            switch (list.get(i).getRe_Level()){ //글씨수 초과되면 말줄임표 표시
                case 0:
                    if(list.get(i).getTitle().length()>30) {
                        list.get(i).setTitle(list.get(i).getTitle().substring(0,29)+"...");
                    }
                    break;
                case 1:
                    if(list.get(i).getTitle().length()>27) {
                        list.get(i).setTitle(list.get(i).getTitle().substring(0, 26)+"...");
                    }
                    break;
                case 2:
                    if(list.get(i).getTitle().length()>25) {
                        list.get(i).setTitle(list.get(i).getTitle().substring(0, 24)+"...");
                    }
                    break;
                case 3:
                    if(list.get(i).getTitle().length()>23) {
                        list.get(i).setTitle(list.get(i).getTitle().substring(0, 22)+"...");
                    }
                    break;
                default:
                    if(list.get(i).getTitle().length()>23) {
                        list.get(i).setTitle(list.get(i).getTitle().substring(0, 22)+"...");
                    }
                    break;
            }
        }
        int pageBtnCnt = 10; //페이지 버튼의 수

        int endPageBtnNo = (int)(Math.ceil(page/(double)pageBtnCnt)) * pageBtnCnt;
        int startPageBtnNo= endPageBtnNo - (pageBtnCnt-1);

        boolean next = false;
        if (endPageBtnNo * pageSize < totalCnt) { //이동할 페이지가 남아 있다면 보이게 처리
            next = true;
        } else { //이동할 페이지가 남아 있지 않으면 마지막 버튼 값 계산
            endPageBtnNo = (int) (Math.ceil(totalCnt / (double) pageSize));
        }

        boolean prev = false;
        if (startPageBtnNo != 1) {
            prev = true;
        }

        Map<String, Object> returnMap = new HashMap<>();
        returnMap.put("qaList", list);
        returnMap.put("next", next);
        returnMap.put("prev",prev);
        returnMap.put("startPageBtnNo",startPageBtnNo);
        returnMap.put("endPageBtnNo", endPageBtnNo);
        returnMap.put("page", page);
        returnMap.put("totalCnt",totalCnt);

        return returnMap;
    }

    public QAVo Support_online_content(int idx) {

        return supportDao.Support_online_content(idx);
    }

    public QAVo Support_online_write(int idx) {
        return supportDao.Support_online_write(idx);
    }

    public int Support_online_write_ok(QAVo qaVo, String re) {
        if (qaVo.getIdx() != 0) {
            if (re.equals("YES")){
                //re_Step++, re_Level++, INSERT
                System.out.println("re > " + qaVo);
                return supportDao.Support_online_write_re(qaVo);
            } else {
                //수정, UPDATE
                System.out.println("up > " + qaVo);
                return supportDao.Support_online_write_up(qaVo);
            }
        } else {
            //새글, INSERT
            System.out.println("new > " + qaVo);
            return supportDao.Support_online_write_new(qaVo);
        }
    }

    public int refChk(int idx) {
        int refCnt = supportDao.refChk(idx);
        if (refCnt>1){
            return 2;
        } else {
            return supportDao.Support_online_del(idx);
        }
    }
}
