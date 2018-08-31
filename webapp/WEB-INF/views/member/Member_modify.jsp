<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <!--#include virtual="/Member/member_modify_script.asp"-->
    <c:import url="./member_modify_script.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >

    <!-- 우편번호 DAUM API 적용 -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script>
        function openDAUMapi() {
            new daum.Postcode({
                oncomplete: function(data) {
                    $("#inputZipCode").val(data.zonecode);
                    $("#inputAddress").val(data.roadAddress + " ");
                    $("#inputAddress").focus();
                    alert("입력되었습니다. 이제 상세주소를 입력해주세요.");
                },
                left: -900,
                top: 200
            }).open();
        }
        function openDAUMapi2() {
            new daum.Postcode({
                oncomplete: function(data) {
                    $("#inputZipCode2").val(data.zonecode);
                    $("#inputAddress2").val(data.roadAddress + " ");
                    $("#inputAddress2").focus();
                    alert("입력되었습니다. 이제 상세주소를 입력해주세요.");
                },
                left: -900,
                top: 200
            }).open();
        }
        function OnSelectChangeSchool(num) {
            // selectSchool 변수에 제대로 된 값을 넣어준다.

            if($("#selectSchool0").val() == "고등학교" && num==0) {
                var strPlus = '&schoolType=high';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=0' + strPlus );
                schoolNameNumber = 0;
            } else if(($("#selectSchool1").val() == "대학교" || $("#selectSchool1").val() == "대학" || $("#selectSchool1").val() == "대학원") && num==1) {
                var strPlus = '&schoolType=univ';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=1' + strPlus );
                schoolNameNumber = 1;
            } else if(($("#selectSchool2").val() == "대학교" || $("#selectSchool2").val() == "대학" || $("#selectSchool2").val() == "대학원") && num==2) {
                var strPlus = '&schoolType=univ';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=2' + strPlus );
                schoolNameNumber = 2;
            } else if(($("#selectSchool3").val() == "대학교" || $("#selectSchool3").val() == "대학" || $("#selectSchool3").val() == "대학원") && num==3) {
                var strPlus = '&schoolType=univ';
                ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=3' + strPlus );
                schoolNameNumber = 3;
            } else {
                return;
            }
            //e.preventDefault();
            $(".myPopup").css('display','block');
            $(".myBlurAll").css('display','block');


        }
    </script>

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script type="text/javascript">
        var schoolNameNumber; // 0 : 첫째칸, 1 : 둘째칸, 2 : 셋째칸, 3 : 넷째칸.


        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

            //$(".snb .depth1").eq(0).addClass("on");
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");

            $('.myBlurAll').on('click', function() {
                $('.myPopup').css('display','none');
                $('.myBlurAll').css('display','none');
                $('body').css('overflow','auto');
            });

            $(document).on('click', '#aClose1', function(e) {
                e.preventDefault();

                $('.myPopup').css('display','none');
                $('.myBlurAll').css('display','none');
                $('body').css('overflow','auto');
            });
        });
    </script>

    <style>
        .myPopup {
            position:fixed;
            left:45%;
            top:15%;

            opacity:1;
            z-index:10000;

            background-color:#fff;
            font-family:'Nanum Gothic Bold';
            font-weight:800;

            width:315px;
            height:70%;
            padding:30px;
            border-radius:1px;
            box-shadow: 0 0 80px rgba(0,0,0,0.99);

            overflow: scroll;
        }
        .myBlurAll {
            position:fixed;
            left:0;
            top:0;
            width:100%;
            height:100%;

            opacity:0.49;
            z-index:9999;
            background-color:#000;
        }
    </style>

    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<form name="memform" method="POST" action="${pageContext.request.contextPath}/member/member_modify_ok">
    <div id="Wrapper">

        <!-- Header -->
        <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
        <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
        <!-- //Header -->

        <!-- Container_Wrap -->
        <div id="Container_Wrap" style="min-height:initial;">
            <!-- Content_Wrap -->
            <div id="Content_Wrap">
                <!-- SNB_Wrap-->
                <!-- #include virtual = "/Include/SNB_Member_1709.asp"-->
                <c:import url="/WEB-INF/views/Include/SNB_Member_1709.jsp"/>
                <!-- //SNB_Wrap-->

                <!-- Content -->
                <div id="Content">
                    <div class="hGroup1709">
                        <p>
                            <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                            <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        </p>
                        <h4 style="float:left;">개인정보수정</h4>
                        <div style="clear:both; height:10px;"></div>
                    </div>

                    <section class="section mar_t20">

                        <div class="con_wrap1709">
                            <h5>개인정보</h5>
                        </div>

                        <div class="con_wrap1709">
                            <div class="divTable">
                                <input type="hidden" name="idcheck" value="N">
                                <input type="hidden" name="user_no" value="${sessionScope.authUser.user_no}">
                                <table>
                                    <caption>개인정보수정</caption>
                                    <colgroup>
                                        <col width="18%">
                                        <col width="*">
                                    </colgroup>

                                    <style>
                                        span.star { color:red; }
                                    </style>
                                    <tbody>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="name">이름<span class="star">*</span></td>
                                        <td colspan="2">${modVo.nameHan}</td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="name">영문이름<span class="star">*</span></td>
                                        <td colspan="2">
                                            이름: <input type="text" maxLength="30" size="15" name="user_nameEng_first"  value="${modVo.nameEngArray[0]}">&nbsp;&nbsp;&nbsp;
                                            성: <input type="text" maxLength="20" size="5" name="user_nameEng_second"  value="${modVo.nameEngArray[1]}">&nbsp;&nbsp;이름/성을 구분하여 입력
                                            <span class="ks1"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="username">아이디 <span class="star">*</span></td>
                                        <td colspan="2">${modVo.loginID}</td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="password">비밀번호<span class="star">*</span></td>
                                        <td colspan="2"><input name="password" type="password" class="slim_input" id="pw" REQUIRED/> <span>대,소문자를 구분합니다. </span> </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="confirm_pwd">비밀번호 확인<span class="star">*</span></td>
                                        <td colspan="2">
                                            <input name="confirm_pwd" type="password" class="slim_input" id="pw2" REQUIRED/>
                                            <span class="ks1">한번 더 비밀번호를 입력하여 주세요.</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c">성별</td>
                                        <td>
                                            <c:if test="${modVo.gender eq 1}">
                                            <input name="sex" type="radio" CHECKED value="1" disabled>&nbsp;남자
                                            <input name="sex" type="radio" value="2" disabled>&nbsp;여자</td>
                                        </c:if>
                                        <c:if test="${modVo.gender eq 2}">
                                            <input name="sex" type="radio" value="1" disabled>&nbsp;남자
                                            <input name="sex" type="radio" CHECKED value="2" disabled>&nbsp;여자</td>
                                        </c:if>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="telephone1">전화번호<span class="star">*</span></td>
                                        <td colspan="2">
                                            <input type="text" name="telephone1"   maxlength="3" size="4" value="${modVo.telephoneArray[0]}"> -
                                            <input type="text" maxlength="4" name="telephone2" size="4" value="${modVo.telephoneArray[1]}"> -
                                            <input type="text" name="telephone3"   maxlength="4" size="5" value="${modVo.telephoneArray[2]}"> &nbsp;(예: 02-1111-1111)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="handphone1">핸드폰번호<span class="star">*</span></td>
                                        <td colspan="2">
                                            <input type="text" maxlength="3" name="handphone1" size="4" value="${modVo.cellphoneArray[0]}"> -
                                            <input type="text" maxlength="4" name="handphone2" size="4" value="${modVo.cellphoneArray[1]}"> -
                                            <input type="text" name="handphone3" maxlength="4" size="5" value="${modVo.cellphoneArray[2]}"> &nbsp;(예:011-1111-1111)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="mail1">이메일<span class="star">*</span></td>
                                        <td colspan="2"><input type="text" name="email" size="30" maxlength="30" value="${modVo.email}"></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="bitletter">메일수신<span class="star">*</span></td>
                                        <td colspan="2">
                                            <c:if test="${modVo.bitLetter eq 'yes'}">
                                                <span><input name="bitletter" type="radio" value="yes" checked> 이메일 수신</span>
                                                <span class="mar_l20"><input name="bitletter" type="radio" value="no"> 이메일 수신안함</span>
                                            </c:if>
                                            <c:if test="${modVo.bitLetter eq 'no'}">
                                                <span><input name="bitletter" type="radio" value="yes"> 이메일 수신</span>
                                                <span class="mar_l20"><input name="bitletter" type="radio" value="no" checked> 이메일 수신안함</span>
                                            </c:if>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c">우편번호</td>
                                        <td>
                                            <input id="inputZipCode" type="text" name="czipcode" maxLength="7" size="7" value="${modVo.familyPostNum}">
                                            <!--<input name="zipsearch" type="button" value="우편번호검색" align="left" size="16" onclick="zip_search1()">-->
                                            <input name="zipsearch" type="button" value="우편번호검색" align="left" size="16" onclick="javascript:openDAUMapi();" style="background-color:#8fd9e7; padding:1px 5px; height:25px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c">주민등록상 주소</td>
                                        <td><input id="inputAddress" type="text" maxlength="50" size="50" value="${modVo.familyAddress}" name="caddr" style="width:500px"></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c">우편번호</td>
                                        <td>
                                            <input id="inputZipCode2" type="text" name="czipcode2" maxLength="7" size="7" value="${modVo.postNum}">
                                            <!--<input  type="button" onclick="zip_search2()" value="우편번호검색" size="16">-->
                                            <input  type="button" onclick="javascript:openDAUMapi2();" value="우편번호검색" size="16" style="background-color:#8fd9e7; padding:1px 5px; height:25px;">

                                            <input type=checkbox name=sendaddr onclick="chk_sendaddr(this.form)"> 위의 주소와 동일함
                                        </td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c">현주소</td>
                                        <td><input id="inputAddress2" type="text" maxlength="50" size="50" value="${modVo.address}" name="caddr2" style="width:500px"></td>
                                    </tr>
                                    <tr>
                                        <td scope="row" class="darker c"><label for="joinInfo_10">직업<span class="star">*</span></td>
                                        <td colspan="2">
                                            <select name="job" id="" class="jobSelect">
                                                <option ${modVo.job eq null or modVo.job eq '' ? "selected" : ""}>직업선택</option>
                                                <option ${modVo.job eq "학생" ? "selected" : ""} value="학생" >학생 </option>
                                                <option ${modVo.job eq "컴퓨터/인터넷" ? "selected" : ""} value="컴퓨터/인터넷" >컴퓨터/인터넷</option>
                                                <option ${modVo.job eq "언론" ? "selected" : ""} value="언론" >언론</option>
                                                <option ${modVo.job eq "공무원" ? "selected" : ""} value="공무원" >공무원</option>
                                                <option ${modVo.job eq "회사원" ? "selected" : ""} value="회사원" >회사원</option>
                                                <option ${modVo.job eq "군인" ? "selected" : ""} value="군인" >군인</option>
                                                <option ${modVo.job eq "서비스업" ? "selected" : ""} value="서비스업" >서비스업</option>
                                                <option ${modVo.job eq "교육" ? "selected" : ""} value="교육" >교육</option>
                                                <option ${modVo.job eq "금융/증권/보험업" ? "selected" : ""} value="금융/증권/보험업" >금융/증권/보험업</option>
                                                <option ${modVo.job eq "유통업" ? "selected" : ""} value="유통업" >유통업</option>
                                                <option ${modVo.job eq "예술" ? "selected" : ""} value="예술" >예술</option>
                                                <option ${modVo.job eq "의료" ? "selected" : ""} value="의료" >의료</option>
                                                <option ${modVo.job eq "법률" ? "selected" : ""} value="법률" >법률</option>
                                                <option ${modVo.job eq "건설업" ? "selected" : ""} value="건설업" >건설업</option>
                                                <option ${modVo.job eq "제조업" ? "selected" : ""} value="제조업" >제조업</option>
                                                <option ${modVo.job eq "부동산업" ? "selected" : ""} value="부동산업" >부동산업</option>
                                                <option ${modVo.job eq "운송업" ? "selected" : ""} value="운송업" >운송업</option>
                                                <option ${modVo.job eq "농/수산/임업" ? "selected" : ""} value="농/수산/임업" >농/수산/임업</option>
                                                <option ${modVo.job eq "광산업" ? "selected" : ""} value="광산업" >광산업</option>
                                                <option ${modVo.job eq "주부" ? "selected" : ""} value="주부" >주부</option>
                                                <option ${modVo.job eq "기타" ? "selected" : ""} value="기타" >기타</option>
                                                <option ${modVo.job eq "무직" ? "selected" : ""} value="무직" >무직</option>
                                            </select>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>

                    <div id="myBox1" class="myPopup" style="display:none;">


                    </div>
                    <div class="myBlurAll" style="display:none;"></div>

                    <style>
                        table.padding2px tr td {
                            padding-left:2px;
                            padding-right:2px;
                            font-size:13px;
                        }
                    </style>

                    <section class="section mar_t40">
                        <div class="con_wrap1709">
                            <h5>학력등록정보</h5>
                        </div>
                        <div class="con_wrap1709">
                            <div class="divTable">
                                <table class="padding2px">
                                    <caption>Table - 학력등록정보</caption>
                                    <colgroup>
                                        <col style="width:28%">
                                        <col style="width:27%">
                                        <col style="width:15%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th scope="col">기간</th>
                                        <th scope="col">학교</th>
                                        <th scope="col">소재지</th>
                                        <th scope="col">학위</th>
                                        <th scope="col">전공</th>
                                        <th scope="col">부전공</th>
                                        <th scope="col">졸업구분</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach items="${schoolList}" var="vo" varStatus="cnt">
                                        <tr>
                                            <td>	<!-- 기간 -->
                                                <input type="hidden" name="">
                                                <input name="DteFr_${cnt.index}"  value="${vo.startYear eq 0 ? "" : vo.startYear}" size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)" style="width:33px">
                                                년
                                                <select name="DayFr_${cnt.index}" size="1">
                                                    <option value="0"></option>
                                                    <c:forEach var="i" begin="1" end="12" step="1">
                                                        <option ${vo.startMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                    </c:forEach>

                                                </select>
                                                월
                                                ~

                                                <br/>
                                                <span>&nbsp; &nbsp; &nbsp; &nbsp;</span>

                                                <input name="DteEnd_${cnt.index}"  size=3 value="${vo.endYear eq 0 ? "" : vo.endYear}" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:33px">
                                                년
                                                <select name="DayEnd_${cnt.index}" size="1">
                                                    <option value="0"></option>
                                                    <c:forEach var="i" begin="1" end="12" step="1">
                                                        <option ${vo.endMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                    </c:forEach>
                                                </select>
                                                월
                                            </td>
                                            <td>		<!-- 학교 -->
                                                <input id="inputSchoolName${cnt.index}" name="School_${cnt.index}" value="${vo.schoolArray[0]}" maxLength="14" size="9" style="width:70px; height:22px;">
                                                <select id="selectSchool${cnt.index}" name="schoolclassify_${cnt.index}" style="HEIGHT:22px; WIDTH:85px; background-color:#f7f7ff;" onChange="OnSelectChangeSchool(${cnt.index});">
                                                    <option value="0">선택</option>
                                                    <option ${vo.schoolArray[1] eq "고등학교" ? "selected" : ""} value="고등학교">고등학교</option>
                                                    <option ${vo.schoolArray[1] eq "검정고시" ? "selected" : ""} value="검정고시">검정고시</option>
                                                    <option ${vo.schoolArray[1] eq "대학" ? "selected" : ""} value="대학">대학</option>
                                                    <option ${vo.schoolArray[1] eq "대학교" ? "selected" : ""} value="대학교">대학교</option>
                                                    <option ${vo.schoolArray[1] eq "대학원" ? "selected" : ""} value="대학원">대학원</option>
                                                    <option ${vo.schoolArray[1] eq "기타" ? "selected" : ""} value="기타">기타</option>
                                                </select>
                                            </td>
                                            <td>		<!-- 소재지 -->
                                                <!--<input name="SchLocation_ < % = i % > " value=" < % = Location % > " maxLength="20" size="7" style="width:60px">-->
                                                <select name="SchLocation_${cnt.index}" style="width:110px; HEIGHT:22px; background-color:#f7f7ff;">
                                                    <option ${vo.location eq '' or vo.location eq null ? "selected" : ""} value="0">선택</option>
                                                    <option ${vo.location eq '서울특별시' ? "selected" : ""} value="서울특별시">서울특별시</option>
                                                    <option ${vo.location eq '부산광역시' ? "selected" : ""} value="부산광역시">부산광역시</option>
                                                    <option ${vo.location eq '인천광역시' ? "selected" : ""} value="인천광역시">인천광역시</option>
                                                    <option ${vo.location eq '대구광역시' ? "selected" : ""} value="대구광역시">대구광역시</option>
                                                    <option ${vo.location eq '광주광역시' ? "selected" : ""} value="광주광역시">광주광역시</option>
                                                    <option ${vo.location eq '대전광역시' ? "selected" : ""} value="대전광역시">대전광역시</option>
                                                    <option ${vo.location eq '울산광역시' ? "selected" : ""} value="울산광역시">울산광역시</option>
                                                    <option ${vo.location eq '세종특별자치시' ? "selected" : ""} value="세종특별자치시">세종특별자치시</option>
                                                    <option ${vo.location eq '경기도' ? "selected" : ""} value="경기도">경기도</option>
                                                    <option ${vo.location eq '강원도' ? "selected" : ""} value="강원도">강원도</option>
                                                    <option ${vo.location eq '충청남도' ? "selected" : ""} value="충청남도">충청남도</option>
                                                    <option ${vo.location eq '충청북도' ? "selected" : ""} value="충청북도">충청북도</option>
                                                    <option ${vo.location eq '경상북도' ? "selected" : ""} value="경상북도">경상북도</option>
                                                    <option ${vo.location eq '경상남도' ? "selected" : ""} value="경상남도">경상남도</option>
                                                    <option ${vo.location eq '전라북도' ? "selected" : ""} value="전라북도">전라북도</option>
                                                    <option ${vo.location eq '전라남도' ? "selected" : ""} value="전라남도">전라남도</option>
                                                    <option ${vo.location eq '제주특별자치도' ? "selected" : ""} value="제주특별자치도">제주특별자치도</option>

                                                </select>
                                            </td>
                                            <td>		<!-- 학위 -->
                                                    <%--<% if i=0 then%>--%>
                                                    <%--<input type=hidden name='SchDegree_0' value="">--%>
                                                    <%--<% else%>--%>
                                                <select name="SchDegree_${cnt.index}" style="HEIGHT: 22px;WIDTH: 55px">
                                                    <option ${vo.degree eq "" or vo.degree eq null ? "selected" : ""} value="0">선택</option>
                                                    <option ${vo.degree eq "전문학사" ? "selected" : ""} value="전문학사">전문학사</option>
                                                    <option ${vo.degree eq "학사" ? "selected" : ""} value="학사">학사</option>
                                                    <option ${vo.degree eq "석사" ? "selected" : ""} value="석사">석사</option>
                                                    <option ${vo.degree eq "박사" ? "selected" : ""} value="박사">박사</option>

                                                </select>
                                            </td>
                                            <td><input name="SchDepartment_${cnt.index}" value="${vo.major eq null or vo.major eq '' ? '' : vo.major}" maxLength="25" size="8" style="width:60px"></td>
                                            <td>
                                                <input name="SchSubDepartment_${cnt.index}" value="${vo.subMajor eq null or vo.subMajor eq '' ? '' : vo.subMajor}" maxLength="25" size="7" style="width:60px">
                                                <input type="hidden" name="Num_${cnt.index}" value="${vo.userScholarship_no}">
                                            </td>
                                            <td>
                                                <select name="Bigo_${cnt.index}" style='HEIGHT: 22px;WIDTH: 55px'>
                                                    <option ${vo.state eq "" or vo.state eq null ? "selected" : ""} value="0">선택</option>
                                                    <option ${vo.state eq "졸업" ? "selected" : ""} value="졸업">졸업</option>
                                                    <option ${vo.state eq "수료" ? "selected" : ""} value="수료">수료</option>
                                                    <option ${vo.state eq "졸업예정" ? "selected" : ""} value="졸업예정">졸업예정</option>
                                                    <option ${vo.state eq "편입졸업" ? "selected" : ""} value="편입졸업">편입졸업</option>
                                                    <option ${vo.state eq "중퇴" ? "selected" : ""} value="중퇴">중퇴</option>
                                                    <option ${vo.state eq "자퇴" ? "selected" : ""} value="자퇴">자퇴</option>
                                                    <option value="0"> </option>
                                                    <option value="-">▼재학▼</option>
                                                    <option ${vo.state eq "재1/1" ? "selected" : ""} value="재1/1">1학년1학기</option>
                                                    <option ${vo.state eq "재1/2" ? "selected" : ""} value="재1/2">1학년2학기</option>
                                                    <option ${vo.state eq "재2/1" ? "selected" : ""} value="재2/1">2학년1학기</option>
                                                    <option ${vo.state eq "재2/2" ? "selected" : ""} value="재2/2">2학년2학기</option>
                                                    <option ${vo.state eq "재3/1" ? "selected" : ""} value="재3/1">3학년1학기</option>
                                                    <option ${vo.state eq "재3/2" ? "selected" : ""} value="재3/2">3학년2학기</option>
                                                    <option ${vo.state eq "재4/1" ? "selected" : ""} value="재4/1">4학년1학기</option>
                                                    <option ${vo.state eq "재4/2" ? "selected" : ""} value="재4/2">4학년2학기</option>

                                                    <option value="0"> </option>
                                                    <option value="-">▼휴학▼</option>
                                                    <option ${vo.state eq "휴1/1" ? "selected" : ""} value="휴1/1">1학년1학기</option>
                                                    <option ${vo.state eq "휴1/2" ? "selected" : ""} value="휴1/2">1학년2학기</option>
                                                    <option ${vo.state eq "휴2/1" ? "selected" : ""} value="휴2/1">2학년1학기</option>
                                                    <option ${vo.state eq "휴2/2" ? "selected" : ""} value="휴2/2">2학년2학기</option>
                                                    <option ${vo.state eq "휴3/1" ? "selected" : ""} value="휴3/1">3학년1학기</option>
                                                    <option ${vo.state eq "휴3/2" ? "selected" : ""} value="휴3/2">3학년2학기</option>
                                                    <option ${vo.state eq "휴4/1" ? "selected" : ""} value="휴4/1">4학년1학기</option>
                                                    <option ${vo.state eq "휴4/2" ? "selected" : ""} value="휴4/2">4학년2학기</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="btn_wrap c mar_t40">
                            <a href="javascript:submit_it();" title="" class="btnBlueBorder big">완료</a>
                            <a href="javascript:history.back();" title="" class="btnWhiteBorder big">취소</a>
                        </div>
                    </section>
                    <!--<a href="#this" class="moveTop">Top</a>-->
                </div>
                <!-- //Content -->
            </div>
            <!-- Content_Wrap -->
        </div>
        <!-- Container_Wrap -->
        <hr>
        <!-- Footer_Wrap -->
        <!-- #include virtual = "/Include/FooterHTML1709.asp"-->
        <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
        <!-- //Footer_Wrap -->
    </div>
</form>
</body>
</html>