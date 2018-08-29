package com.bitacademy.service;

import com.bitacademy.dao.RegisterDao;
import com.bitacademy.vo.ApplyVo;
import com.bitacademy.vo.PayVo;
import com.bitacademy.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
}
