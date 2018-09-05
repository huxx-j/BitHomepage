package com.bitacademy.service;

import com.bitacademy.dao.RegisterDao;
import com.bitacademy.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RegisterService {
    @Autowired
    private RegisterDao registerDao;

    public List<ApplyVo> register_requestResult(UserVo authUser) {
        return registerDao.register_requestResult(authUser);
    }

    public List<PayVo> register_depositCheck(UserVo userVo) {
        return registerDao.register_depositCheck(userVo.getUser_no());
    }

    public ApplyVo register_form(UserVo authUser, int idx) {
        Map<String, Object> map = new HashMap<>();
        map.put("user_no", authUser.getUser_no());
        map.put("idx", idx);
        return registerDao.register_form(map);
    }

    public UserVo register_form_info(UserVo authUser){
        return registerDao.register_form_info(authUser.getUser_no());
    }

    public List<TrainingVo> register_form_training(int user_no) {
        List<TrainingVo> list = registerDao.register_form_training(user_no);
        for (TrainingVo trainingVo : list) {
            String startYear = trainingVo.getStartYear();
            String startMon = trainingVo.getStartMon();
            String endYear = trainingVo.getEndYear();
            String endMon = trainingVo.getEndMon();
            if (endYear.contains("-") || endYear.equals("")) {
                endYear = "0";
            }
            if (endMon.contains("-") || endMon.equals("")) {
                endMon = "0";
            }
            if (startYear.contains("-") || startYear.equals("")){
                startYear = "0";
            }
            if (startMon.contains("-") || startMon.equals("")){
                startMon = "0";
            }
            trainingVo.setEndYear(endYear);
            trainingVo.setEndMon(endMon);
            trainingVo.setStartYear(startYear);
            trainingVo.setStartMon(startMon);
        }
        if (list.size()<4) {
            TrainingVo dummyVo = new TrainingVo();
            for (int i = 0; i<=(4-list.size()); i++){
                list.add(dummyVo);
            }
        }
        return list;
    }

    public List<CareerVo> register_form_career(int user_no) {
        List<CareerVo> list = registerDao.register_form_career(user_no);
        for (CareerVo careerVo: list) {
            String startYear = careerVo.getStartYear();
            String startMon = careerVo.getStartMon();
            String endYear = careerVo.getEndYear();
            String endMon = careerVo.getEndMon();
            if (endYear.contains("-") || endYear.equals("")) {
                endYear = "0";
            }
            if (endMon.contains("-") || endMon.equals("")) {
                endMon = "0";
            }
            if (startYear.contains("-") || startYear.equals("")){
                startYear = "0";
            }
            if (startMon.contains("-") || startMon.equals("")){
                startMon = "0";
            }
            careerVo.setEndYear(endYear);
            careerVo.setEndMon(endMon);
            careerVo.setStartYear(startYear);
            careerVo.setStartMon(startMon);
        }
        if (list.size()<4) {
            CareerVo dummyVo = new CareerVo();
            for (int i = 0; i<=(4-list.size()); i++){
                list.add(dummyVo);
            }
        }
        return list;
    }

    public UserVo register_form_Lang_Mil(int user_no) {
        return registerDao.register_form_Lang_Mil(user_no);
    }

    public List<UserVo> register_form_Licence(int user_no) {
        List<UserVo> list = registerDao.register_form_Licence(user_no);
        if (list.size()<2) {
            UserVo dummyVo = new UserVo();
            for (int i = 0; i<=(2-list.size()); i++){
                list.add(dummyVo);
            }
        }
        return list;
    }

    public ApplyVo register_form_hope(int user_no, int idx) {
        Map<String, Object> map = new HashMap<>();
        map.put("user_vo", user_no);
        map.put("idx", idx);
        return registerDao.register_form_hope(map);
    }
}
