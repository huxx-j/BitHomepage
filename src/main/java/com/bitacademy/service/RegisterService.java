package com.bitacademy.service;

import com.bitacademy.dao.MemberDao;
import com.bitacademy.dao.RegisterDao;
import com.bitacademy.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RegisterService {
    @Autowired
    private RegisterDao registerDao;
    @Autowired
    private MemberDao memberDao;

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
        int size = list.size();
        if (size<4) {
            TrainingVo dummyVo = new TrainingVo();
            for (int i = 0; i<(4-size); i++){
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
        int size = list.size();
        if (size<4) {
            CareerVo dummyVo = new CareerVo();
            for (int i = 0; i<(4-size); i++){
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
        int size = list.size();
        if (size<2) {
            UserVo dummyVo = new UserVo();
            for (int i = 0; i<(2-size); i++){
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

    @Transactional
    public int register_form_submit(LongApplyVo longApplyVo, String cID) {
        UserModVo userModVo = new UserModVo();
        if (!cID.equals("presentation")) {
            // 2. 학력등록정보 데이터 조합 및 저장
            if (longApplyVo.getSchool_0() != null && !longApplyVo.getSchool_0().equals("") && !longApplyVo.getSchool_0().equals(" ")) {
                String startYear = longApplyVo.getDteFr_0();
                String startMon = longApplyVo.getDayFr_0();
                userModVo.setStartDate(startYear + "-" + startMon);

                String endYear = longApplyVo.getDteEnd_0();
                String endMon = longApplyVo.getDayEnd_0();
                userModVo.setEndDate(endYear + "-" + endMon);

                String school = longApplyVo.getSchool_0();
                String schoolClassify = longApplyVo.getSchoolclassify_0();
                userModVo.setSchool(school + schoolClassify);

                userModVo.setLocation(longApplyVo.getSchLocation_0());
                userModVo.setDegree(longApplyVo.getSchDegree_0());
                userModVo.setMajor(longApplyVo.getSchDepartment_0());
                userModVo.setSubMajor(longApplyVo.getSchSubDepartment_0());
                userModVo.setUserScholarship_no(Integer.parseInt(longApplyVo.getNum_0()));
                userModVo.setState(longApplyVo.getBigo_0());

                memberDao.member_school_modify_ok(userModVo);
            }

            if (longApplyVo.getSchool_1() != null && !longApplyVo.getSchool_1().equals("") && !longApplyVo.getSchool_1().equals(" ")) {
                String startYear = longApplyVo.getDteFr_1();
                String startMon = longApplyVo.getDayFr_1();
                userModVo.setStartDate(startYear + "-" + startMon);

                String endYear = longApplyVo.getDteEnd_1();
                String endMon = longApplyVo.getDayEnd_1();
                userModVo.setEndDate(endYear + "-" + endMon);

                String school = longApplyVo.getSchool_1();
                String schoolClassify = longApplyVo.getSchoolclassify_1();
                userModVo.setSchool(school + schoolClassify);

                userModVo.setLocation(longApplyVo.getSchLocation_1());
                userModVo.setDegree(longApplyVo.getSchDegree_1());
                userModVo.setMajor(longApplyVo.getSchDepartment_1());
                userModVo.setSubMajor(longApplyVo.getSchSubDepartment_1());
                userModVo.setUserScholarship_no(Integer.parseInt(longApplyVo.getNum_1()));
                userModVo.setState(longApplyVo.getBigo_1());

                memberDao.member_school_modify_ok(userModVo);
            }
            if (longApplyVo.getSchool_2() != null && !longApplyVo.getSchool_2().equals("") && !longApplyVo.getSchool_2().equals(" ")) {
                String startYear = longApplyVo.getDteFr_2();
                String startMon = longApplyVo.getDayFr_2();
                userModVo.setStartDate(startYear + "-" + startMon);

                String endYear = longApplyVo.getDteEnd_2();
                String endMon = longApplyVo.getDayEnd_2();
                userModVo.setEndDate(endYear + "-" + endMon);

                String school = longApplyVo.getSchool_2();
                String schoolClassify = longApplyVo.getSchoolclassify_2();
                userModVo.setSchool(school + schoolClassify);

                userModVo.setLocation(longApplyVo.getSchLocation_2());
                userModVo.setDegree(longApplyVo.getSchDegree_2());
                userModVo.setMajor(longApplyVo.getSchDepartment_2());
                userModVo.setSubMajor(longApplyVo.getSchSubDepartment_2());
                userModVo.setUserScholarship_no(Integer.parseInt(longApplyVo.getNum_2()));
                userModVo.setState(longApplyVo.getBigo_2());

                memberDao.member_school_modify_ok(userModVo);
            }
            if (longApplyVo.getSchool_3() != null && !longApplyVo.getSchool_3().equals("") && !longApplyVo.getSchool_3().equals(" ")) {
                String startYear = longApplyVo.getDteFr_3();
                String startMon = longApplyVo.getDayFr_3();
                userModVo.setStartDate(startYear + "-" + startMon);

                String endYear = longApplyVo.getDteEnd_3();
                String endMon = longApplyVo.getDayEnd_3();
                userModVo.setEndDate(endYear + "-" + endMon);

                String school = longApplyVo.getSchool_3();
                String schoolClassify = longApplyVo.getSchoolclassify_3();
                userModVo.setSchool(school + schoolClassify);

                userModVo.setLocation(longApplyVo.getSchLocation_3());
                userModVo.setDegree(longApplyVo.getSchDegree_3());
                userModVo.setMajor(longApplyVo.getSchDepartment_3());
                userModVo.setSubMajor(longApplyVo.getSchSubDepartment_3());
                userModVo.setUserScholarship_no(Integer.parseInt(longApplyVo.getNum_3()));
                userModVo.setState(longApplyVo.getBigo_3());

                memberDao.member_school_modify_ok(userModVo);
            }
        }
        //2. 학력정보 입력

        longApplyVo.setcID(cID);
        if (longApplyVo.getHopeExpert() == null || longApplyVo.getHopeExpert().equals("")){
            longApplyVo.setHopeExpert("0");
        }
        int app_no = registerDao.register_form_submit(longApplyVo); //ApplyInfo Table에 코스에 대한 기본정보 저장하고 Applicant_no를 리턴

        //여기서부터 문제인듯....
        System.out.println(cID);

        // 학원교육, 직장근무경력, 외국어, 병역, 자격/면허 등록
        if (cID.equals("industry40") || cID.equals("employment") || cID.equals("kuka") || cID.equals("expert") || cID.equals("chung")) {
            System.out.println("if안");
            registerDao.register_form_submit_user(longApplyVo); //외국어, 병역, 프로젝트내용 저장
            //자격증 정보를 Licence table에 저장
            if (longApplyVo.getlName_0() != null && !longApplyVo.getlName_0().equals("") && !longApplyVo.getlName_0().equals(" ")) {
                longApplyVo.setLicense_no(longApplyVo.getLicense_no_0());
                longApplyVo.setLiceName(longApplyVo.getlName_0());
                longApplyVo.setAcquireDate(longApplyVo.getlDteFr_0()+"-"+longApplyVo.getlDayFr_0());
                registerDao.register_form_submit_licence(longApplyVo);
            }
            if (longApplyVo.getlName_1() != null && !longApplyVo.getlName_1().equals("") && !longApplyVo.getlName_1().equals(" ")) {
                longApplyVo.setLicense_no(longApplyVo.getLicense_no_1());
                longApplyVo.setLiceName(longApplyVo.getlName_1());
                longApplyVo.setAcquireDate(longApplyVo.getlDteFr_1()+"-"+longApplyVo.getlDayFr_1());
                registerDao.register_form_submit_licence(longApplyVo);
            }
            //학원교육을 UserTraining Table에 저장
            if (longApplyVo.getEdName_0() != null && !longApplyVo.getEdName_0().equals("") && !longApplyVo.getEdName_0().equals(" ")) {
                longApplyVo.setUserTraining_no(longApplyVo.getUserTraining_no_0());
                longApplyVo.setStartDate(longApplyVo.getEdDteFr_0()+"-"+longApplyVo.getEdDayFr_0());
                longApplyVo.setEndDate(longApplyVo.getEdDteEnd_0()+"-"+longApplyVo.getDayEnd_0());
                longApplyVo.setEduCenterName(longApplyVo.getEdName_0());
                longApplyVo.setEduCourseName(longApplyVo.getEdCourseName_0());
                longApplyVo.setContent(longApplyVo.getEdContents_0());
                registerDao.register_form_submit_edu(longApplyVo);
            }
            if (longApplyVo.getEdName_1() != null && !longApplyVo.getEdName_1().equals("") && !longApplyVo.getEdName_1().equals(" ")) {
                longApplyVo.setUserTraining_no(longApplyVo.getUserTraining_no_1());
                longApplyVo.setStartDate(longApplyVo.getEdDteFr_1()+"-"+longApplyVo.getEdDayFr_1());
                longApplyVo.setEndDate(longApplyVo.getEdDteEnd_1()+"-"+longApplyVo.getDayEnd_1());
                longApplyVo.setEduCenterName(longApplyVo.getEdName_1());
                longApplyVo.setEduCourseName(longApplyVo.getEdCourseName_1());
                longApplyVo.setContent(longApplyVo.getEdContents_1());
                registerDao.register_form_submit_edu(longApplyVo);
            }
            if (longApplyVo.getEdName_2() != null && !longApplyVo.getEdName_2().equals("") && !longApplyVo.getEdName_2().equals(" ")) {
                longApplyVo.setUserTraining_no(longApplyVo.getUserTraining_no_2());
                longApplyVo.setStartDate(longApplyVo.getEdDteFr_2()+"-"+longApplyVo.getEdDayFr_2());
                longApplyVo.setEndDate(longApplyVo.getEdDteEnd_2()+"-"+longApplyVo.getDayEnd_2());
                longApplyVo.setEduCenterName(longApplyVo.getEdName_2());
                longApplyVo.setEduCourseName(longApplyVo.getEdCourseName_2());
                longApplyVo.setContent(longApplyVo.getEdContents_2());
                registerDao.register_form_submit_edu(longApplyVo);
            }
            if (longApplyVo.getEdName_3() != null && !longApplyVo.getEdName_3().equals("") && !longApplyVo.getEdName_3().equals(" ")) {
                longApplyVo.setUserTraining_no(longApplyVo.getUserTraining_no_3());
                longApplyVo.setStartDate(longApplyVo.getEdDteFr_3()+"-"+longApplyVo.getEdDayFr_3());
                longApplyVo.setEndDate(longApplyVo.getEdDteEnd_3()+"-"+longApplyVo.getDayEnd_3());
                longApplyVo.setEduCenterName(longApplyVo.getEdName_3());
                longApplyVo.setEduCourseName(longApplyVo.getEdCourseName_3());
                longApplyVo.setContent(longApplyVo.getEdContents_3());
                registerDao.register_form_submit_edu(longApplyVo);
            }
                //직장근무경력을 UserCareer 테이블에 저장
            if (longApplyVo.getCarrName_0() != null && !longApplyVo.getCarrName_0().equals("") && !longApplyVo.getCarrName_0().equals(" ")) {
                longApplyVo.setUserCareer_no(longApplyVo.getUserCareer_no_0());
                longApplyVo.setStartDate(longApplyVo.getCarrDteFr_0()+"-"+longApplyVo.getCarrDayFr_0());
                longApplyVo.setEndDate(longApplyVo.getCarrDteEnd_0()+"-"+longApplyVo.getCarrDayEnd_0());
                longApplyVo.setCompName(longApplyVo.getCarrName_0());
                longApplyVo.setDevPart(longApplyVo.getCarrOp_0());
                longApplyVo.setRole(longApplyVo.getCarrDegree_0());
                longApplyVo.setDepartment(longApplyVo.getCarrDep_0());
                longApplyVo.setYearSal(longApplyVo.getCarrYearpay_0());
                longApplyVo.setRetireReason(longApplyVo.getCarrRetire_0());
                registerDao.register_form_submit_career(longApplyVo);
            }
            if (longApplyVo.getCarrName_1() != null && !longApplyVo.getCarrName_1().equals("") && !longApplyVo.getCarrName_1().equals(" ")) {
                longApplyVo.setUserCareer_no(longApplyVo.getUserCareer_no_1());
                longApplyVo.setStartDate(longApplyVo.getCarrDteFr_1()+"-"+longApplyVo.getCarrDayFr_1());
                longApplyVo.setEndDate(longApplyVo.getCarrDteEnd_1()+"-"+longApplyVo.getCarrDayEnd_1());
                longApplyVo.setCompName(longApplyVo.getCarrName_1());
                longApplyVo.setDevPart(longApplyVo.getCarrOp_1());
                longApplyVo.setRole(longApplyVo.getCarrDegree_1());
                longApplyVo.setDepartment(longApplyVo.getCarrDep_1());
                longApplyVo.setYearSal(longApplyVo.getCarrYearpay_1());
                longApplyVo.setRetireReason(longApplyVo.getCarrRetire_1());
                registerDao.register_form_submit_career(longApplyVo);
            }
            if (longApplyVo.getCarrName_2() != null && !longApplyVo.getCarrName_2().equals("") && !longApplyVo.getCarrName_2().equals(" ")) {
                longApplyVo.setUserCareer_no(longApplyVo.getUserCareer_no_2());
                longApplyVo.setStartDate(longApplyVo.getCarrDteFr_2()+"-"+longApplyVo.getCarrDayFr_2());
                longApplyVo.setEndDate(longApplyVo.getCarrDteEnd_2()+"-"+longApplyVo.getCarrDayEnd_2());
                longApplyVo.setCompName(longApplyVo.getCarrName_2());
                longApplyVo.setDevPart(longApplyVo.getCarrOp_2());
                longApplyVo.setRole(longApplyVo.getCarrDegree_2());
                longApplyVo.setDepartment(longApplyVo.getCarrDep_2());
                longApplyVo.setYearSal(longApplyVo.getCarrYearpay_2());
                longApplyVo.setRetireReason(longApplyVo.getCarrRetire_2());
                registerDao.register_form_submit_career(longApplyVo);
            }
            if (longApplyVo.getCarrName_3() != null && !longApplyVo.getCarrName_3().equals("") && !longApplyVo.getCarrName_3().equals(" ")) {
                longApplyVo.setUserCareer_no(longApplyVo.getUserCareer_no_3());
                longApplyVo.setStartDate(longApplyVo.getCarrDteFr_3()+"-"+longApplyVo.getCarrDayFr_3());
                longApplyVo.setEndDate(longApplyVo.getCarrDteEnd_3()+"-"+longApplyVo.getCarrDayEnd_3());
                longApplyVo.setCompName(longApplyVo.getCarrName_3());
                longApplyVo.setDevPart(longApplyVo.getCarrOp_3());
                longApplyVo.setRole(longApplyVo.getCarrDegree_3());
                longApplyVo.setDepartment(longApplyVo.getCarrDep_3());
                longApplyVo.setYearSal(longApplyVo.getCarrYearpay_3());
                longApplyVo.setRetireReason(longApplyVo.getCarrRetire_3());
                registerDao.register_form_submit_career(longApplyVo);
            }
        }

        if (cID.equals("short")) {

        } else if (cID.equals("bitcam")) {

        } else if (cID.equals("kuka")) {

        } else if (cID.equals("industry40")) {

        } else if (cID.equals("employment")) {

        } else if (cID.equals("expert")) {

        } else if (cID.equals("chung")) {

        } else if (cID.equals("bspm")) {

        } else if (cID.equals("presentation")) {

        }
        return app_no;
    }

    public CourseVo register_form_course_info(String cID) {

        return registerDao.register_form_course_info(cID);
    }

    public ExtraApplyVo register_form2(int app_no) {
//        List<String> list = registerDao.register_form2_appway(app_no);
//        String[] wayArray = new String[list.size()];
//        wayArray = (String[])list.toArray(wayArray);
        ExtraApplyVo extraApplyVo = registerDao.register_form2(app_no);
//        extraApplyVo.setWayArray(wayArray);
        return extraApplyVo;
    }

    public String[] getAppWayList(int app_no) {
        List<String> list = registerDao.register_form2_appway(app_no);
        String[] wayArray = new String[list.size()];
        wayArray = (String[])list.toArray(wayArray);
        return wayArray;
    }

    public void register_form2_submit(ExtraApplyVo extraApplyVo) {
        //1. ApplyInfo 테이블에 저장 및 업데이트
        String hopeChkBox = extraApplyVo.getHopeChkBox();
        String hope = "";
        for (int i = 0; i < 6; i++){
            if(hopeChkBox.contains(String.valueOf(i+1))){
                hope += String.valueOf(i+1);
            } else {
                hope += "0";
            }
        }
        extraApplyVo.setHope_in(hope);
        registerDao.register_form2_submit(extraApplyVo);
        // 1. end

        //2. Users 테이블에 업데이트
        registerDao.register_form2_submit_user(extraApplyVo);
        //2. end

        //3. ApplyWay 테이블 삭제 및 저장
        registerDao.register_form2_submit_appway_del(extraApplyVo.getIdx());
        String[] appWayCodeArray = extraApplyVo.getAppWaychkbox().split(",");
        for (int i = 0; i < appWayCodeArray.length; i++) {
            extraApplyVo.setAppWayCode(appWayCodeArray[i]);
            registerDao.register_form2_submit_appway_in(extraApplyVo);
        }
        //3. end

    }
}
