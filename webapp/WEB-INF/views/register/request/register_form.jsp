<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <!--#include virtual="/Register/Request/register_kukka_script1.asp"-->
    <c:import url="./register_kukka_script1.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script type="text/javascript">
        $(document).ready(function(){
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            var cID = "${cID}";
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// 신규지원
            $(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// 신규지원SUB OPEN
            if (cID == "short") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(0).addClass("on");
            } else if (cID == "bitcam") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(1).addClass("on");
            } else if (cID == "expert") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(2).addClass("on");
            } else if (cID == "industry40") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(3).addClass("on");
            } else if (cID == "presentation") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(4).addClass("on");
            } else if (cID == "kuka") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(5).addClass("on");
            } else if (cID == "employment") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(6).addClass("on");
            } else if (cID == "chung") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(7).addClass("on");
            } else if (cID == "bspm") {
                $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(8).addClass("on");
            }
            SelectSubject("#select1_fir");	// Without this, the select box "개강일자" will be disabled until the other "지원과정" be selected.
        });
    </script>
    <style>
        table.padding2px tr td {
            padding-left:2px;
            padding-right:2px;
            font-size:13px;
        }
    </style>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<script type="text/javascript">
    // (Added : 2017-12-22-YG)
    function onChangeSelect1DB(value) {
        iSelectDay.location = "/Register/Request/register_common_selectdate_expert.asp?courseid=" + value;
        SelectSubject(this);
    }
</script>
<iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe>
<form name="applyForm" method="POST" action="${pageContext.request.contextPath}/register/request/register_form_submit?cID=${cID}">
    <input type="hidden" name="idx" value="${applyInfo.applicant_no}">
    <input type="hidden" name="isAppYN" value="${applyInfo.isAppYN}">
    <input type="hidden" name="cID" value="${cID}">
    <input type="hidden" name="user_no" value="${sessionScope.authUser.user_no}">
    <div id="Wrapper">
        <!-- Header_Wrap -->
        <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
        <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
        <!-- //Header_Wrap -->

        <div id="Container_Wrap">
            <div id="Content_Wrap">
                <!-- SNB_Wrap-->
                <!-- #include virtual = "/Include/SNB_Register_1709.asp"-->
                <c:import url="/WEB-INF/views/Include/SNB_Register_1709.jsp"/>
                <!-- //SNB_Wrap-->
                <div id="Content">
                    <div class="hGroup1709">
                        <p>
                            <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                            <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>수강신청
                            <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>신규지원
                        </p>
                        <c:if test="${cID eq 'short'}">
                            <h4>단기핵심과정 / 여름방학특강</h4>
                        </c:if>
                        <c:if test="${cID eq 'bitcam'}">
                            <h4>비트캠퍼스</h4>
                        </c:if>
                        <c:if test="${cID eq 'kuka'}">
                            <h4>국가기간 전략산업 직종훈련 <span style="font-size:0.8em;">(국비지원무료과정)</span></h4>
                        </c:if>
                        <c:if test="${cID eq 'industry40'}">
                            <h4>4차산업 선도인력 양성</h4>
                        </c:if>
                        <c:if test="${cID eq 'employment'}">
                            <h4>신입사원채용교육</h4>
                        </c:if>
                        <c:if test="${cID eq 'expert'}">
                            <h4>전문가과정</h4>
                        </c:if>
                        <c:if test="${cID eq 'chung'}">
                            <h4>청년취업아카데미</h4>
                        </c:if>
                        <c:if test="${cID eq 'bspm'}">
                            <h4>BSPM (비트SW프로그래밍 자격증)</h4>
                        </c:if>
                        <c:if test="${cID eq 'presentation'}">
                            <h4>4차산업 선도인력 양성 교육설명회</h4>
                        </c:if>
                    </div>

                    <div class="con_wrap1709">
                        <section class="section">
                            <c:if test="${cID eq 'employment'}">
                                <p class="brownTxt" style="font-size:1.2em;">※ 본 지원양식은 기업 면접관에게 직접 전달되는 자료입니다. <br/>원하시는 기업에 입사지원하듯 성실히 작성하여 주시기 바랍니다.</p>
                            </c:if>
                            <div class="section_header">
                                <h5>신규지원</h5>
                            </div>
                            <div class="divTable">
                                <table>
                                    <colgroup>
                                        <col style="width:20%">
                                        <col style="width:80%">
                                    </colgroup>
                                    <tbody>
                                    <c:if test="${cID != 'presentation'}">
                                        <tr>
                                            <th scope="row">지원과정</th>
                                            <td colspan="3" class="l">
                                                <!--<select style="width:400px" name="select1_fir"  onchange="return SelectSubject(this)">-->
                                                <select style="width:400px" name="curriculum_no"  onchange="return onChangeSelect1DB(this.value)">
                                                    <option value="">==선택==</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </c:if>
                                    <c:if test="${cID eq 'short' or cID eq 'bitcam' or cID eq 'kuka'}">
                                        <tr>
                                            <th scope="row">지원종류</th>
                                            <td colspan="3" class="l">
                                                <c:if test="${cID eq 'kuka'}">
                                                    <select id="select" style="width:140px" name="applyType">
                                                        <option value='노동부지원' ${applyInfo.isAppYN eq 'Y' and applyInfo.applyType eq "노동부지원"? "selected" : ""}>노동부지원</option>
                                                    </select>
                                                </c:if>
                                                <c:if test="${cID eq 'short'}">
                                                    <select id="select2" style="WIDTH: 160px; HEIGHT: 22px" name="applyType" onChange="showTextBox(this.value)">
                                                        <option value="">(선택하세요)</option>
                                                        <option ${applyInfo.isAppYN eq 'Y' and applyInfo.applyType eq "일반지원"? "selected" : ""} value="일반지원">일반지원</option>
                                                        <option ${applyInfo.isAppYN eq 'Y' and applyInfo.applyType eq "근로자직무향상"? "selected" : ""} value="근로자직무향상">근로자직무향상</option>
                                                        <option ${applyInfo.isAppYN eq 'Y' and applyInfo.applyType eq "사업주훈련"? "selected" : ""} value="사업주훈련">사업주훈련</option>
                                                    </select>
                                                </c:if>
                                                <c:if test="${cID eq 'bitcam'}">
                                                    <select id="select2" style="WIDTH: 160px; HEIGHT: 22px" name="applyType">
                                                        <option value="">==선택==</option>
                                                        <option value=일반지원 selected>일반지원</option>
                                                    </select>
                                                </c:if>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">개강일자</th>
                                            <td class="l">
                                                <select id="select4" style="width:140px" name="startDate" onclick="JavaScript:SelectDateCheck()">
                                                    <option value="">==선택==</option> <%--과정클릭하면 바뀌게하는 코드 필요--%>
                                                </select> <input type=hidden value="<%--<%=totSelectDate%>--%>" name="totselectdate">
                                            </td>
                                        </tr>
                                    </c:if>
                                    <c:if test="${cID eq 'industry40' or cID eq 'employment'}">
                                        <tr>
                                            <th scope="row">전형과목</th>
                                            <td colspan="3" class="l">
                                                <select style="width: 140px" name="testLang" disabled>
                                                    <option value="">과목 선택</option> <%--과정선택하면 시험과목이 나오는걸로..--%>
                                                </select>
                                            </td>
                                        </tr>
                                    </c:if>
                                    <c:if test="${cID eq 'expert' or cID eq 'industry40' or cID eq 'employment'}">
                                        <tr>
                                            <th scope="row">전형일자</th>
                                            <td class="l">
                                                <select id="select4" style="width:140px" name="testDate" onclick="JavaScript:SelectDateCheck()">
                                                    <option value="">==선택==</option>
                                                </select> <input type=hidden value="<%--<%=totSelectDate%>--%>" name="totselectdate">
                                            </td>
                                        </tr>
                                    </c:if>
                                    <c:if test="${cID eq 'bspm'}">
                                        <tr>
                                            <th class="darker c" scope="row">
                                                <label for="itemInfo_04">시험일시</label>
                                            </th>
                                            <td class="l">
                                                <select id="itemInfo_04" name="testDate" onclick="JavaScript:SelectDateCheck()" style="width150px">
                                                    <option value="">=====선택=====</option>
                                                </select>
                                                <input type=hidden value="<%--<%=totSelectDate%>--%>" name="totselectdate">
                                            </td>
                                        </tr>
                                    </c:if>

                                    <c:if test="${cID eq 'presentation'}">
                                        <tr>
                                            <th scope="row">
                                                <label for="itemInfo_01">교육설명회<span class="star">*</span></label>
                                            </th>
                                            <td>
                                                <select id="select1" style="WIDTH: 350px; HEIGHT: 22px" name="curriculum_no" onchange="javascript:onChangeSelect1(this.value)">
                                                    <option value="">(선택하세요)</option> <%--여긴 하드코딩으로 넣는듯--%>
                                                    <!--<option value="4IX_Pres">IoT를 활용한 AI 기반 자율주행 전문가과정 설명회</option>-->
                                                    <!--<option value="4FX_Pres">AI기반 핀테크 융합 전문가과정 설명회</option>-->
                                                    <!--<option value="4BX_Pres">AI기반 빅데이터 엔지니어/사이언티스트 전문가과정 설명회</option>-->
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">설명회일정 <span class="star">*</span></th>
                                            <td>
                                                <select id="select4" name="startDate" style="width:160px">
                                                    <option value="">(설명회를 선택하세요)</option> <%--여기도 하드코딩--%>

                                                </select><input type=hidden value="<%--<%=totSelectDate%>--%>" name="totselectdate">
                                            </td>
                                        </tr>
                                    </c:if>
                                    <tr>
                                        <th scope="row">이름</th>
                                        <td colspan="3" class="l">${userInfo.nameHan eq null or userInfo.nameHan eq '' ? '' : userInfo.nameHan}</td>
                                    </tr>
                                    <%--<tr>--%>
                                    <%--<th scope="row">영문</th>--%>
                                    <%--<td colspan="3" class="l">${userInfo.nameEng eq null or userInfo.nameEng eq '' ? '' : userInfo.nameEng}</td>--%>
                                    <%--</tr>--%>
                                    <%--<input type="hidden" name="jumin1" value="<%=StudResnum1%>">--%>  <%--이게 필요한가?--%>
                                    <%--<input type="hidden" name="jumin2" value="<%=StudResnum2%>">--%>
                                    <tr>
                                        <th scope="row">생년월일</th>
                                        <td><c:set var="resNum" value="${userInfo.studResNum}"/> 19${fn:substring(resNum,0,1)}년 ${fn:substring(resNum, 2,3)}월 ${fn:substring(resNum, 4, 5)}일 생&nbsp;&nbsp;(만 :<%--${fn:}<%=Year(date)-Cint("19"&left(StudResnum1,2))%>--%>세)</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">E-Mail</th>
                                        <td colspan="3" class="l">${userInfo.email eq null or userInfo.email eq '' ? '' : userInfo.email}</td>
                                    </tr>

                                    <tr>
                                        <th scope="row">주소</th>
                                        <td colspan="3" class="l">${userInfo.postNum} &nbsp;&nbsp;${userInfo.address}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">핸드폰</th>
                                        <td colspan="3" class="l">${userInfo.cellphone}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">연락처</th>
                                        <td colspan="3" class="l">${userInfo.telephone}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <p class="mar_t10 brownTxt"> 위의 개인정보 항목들은 [개인정보수정] 에서 수정하시기 바랍니다. <a href="${pageContext.request.contextPath}/member/Member_modify" title="개인정보수정" class="mar_l10 btnGreenBorder">개인정보수정</a></p>
                            </div>
                        </section>

                        <!-- # i n c l ude virtual="/Register/Include/register_info_01.asp" -->
                        <!-- From /Register/Include/register_info_01.asp -->
                        <c:if test="${cID ne 'presentation'}">
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
                                                        <input type="hidden" name="userScholarship_no_${cnt.index}" value="${vo.userScholarship_no eq null or vo.userScholarship_no eq '' ? '0' : vo.userScholarship_no}">
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
                                                            <option ${vo.degree eq "none" ? "selected" : ""} value="none">해당없음</option>
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
                                            <c:if test="${cID eq 'kuka' or cID eq 'industry40' or cID eq 'employment' or cID eq 'expert' or cID eq 'chung'}">
                                                <tr>
                                                    <th>수행프로젝트 제목/내용</th>
                                                    <td colspan="6" class="l"><textarea onkeyup="chklen(this,'학위논문')"  name="papertext"  style="width:100%; height:110px; padding:0px; border:0px; resize: none">${userInfo.thesis}</textarea></td>
                                                </tr>
                                            </c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </section>
                        </c:if>
                        <c:if test="${cID eq 'kuka' or cID eq 'industry40' or cID eq 'employment' or cID eq 'expert' or cID eq 'chung'}">
                            <section class="section">
                                <h5>학원교육</h5>
                                <div class="divTable">
                                    <table class="padding2px">
                                        <colgroup>
                                            <col style="width:23%">
                                            <col style="width:20%">
                                            <col style="width:20%">
                                            <col style="width:37%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th scope="col">기간</th>
                                            <th scope="col">교육기간</th>
                                            <th scope="col">교육과정</th>
                                            <th scope="col">주요교육내용</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${trainingList}" var="vo" varStatus="cnt">
                                            <tr>
                                                <td>
                                                    <input type="hidden" name="userTraining_no_${cnt.index}" value="${vo.userTraining_no eq null or vo.userTraining_no eq '' ? '0' : vo.userTraining_no}">
                                                    <input type="text" name="EdDteFr_${cnt.index}" value="${vo.startYear eq 0 ? "" : vo.startYear}" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
                                                    년
                                                    <select name="EdDayFr_${cnt.index}" size="1">
                                                        <option value=""></option>
                                                        <c:forEach var="i" begin="1" end="12" step="1">
                                                            <option ${vo.startMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                        </c:forEach>
                                                    </select>
                                                    월
                                                    ~<br/>&nbsp; &nbsp; &nbsp;
                                                    <input type="text" name="EdDteEnd_${cnt.index}" value="${vo.endYear eq 0 ? "" : vo.endYear}"  maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
                                                    년
                                                    <select name="EdDayEnd_${cnt.index}" size="1">
                                                        <option value=""></option>
                                                        <c:forEach var="i" begin="1" end="12" step="1">
                                                            <option ${vo.endMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                        </c:forEach>
                                                    </select>
                                                    월
                                                </td>
                                                <td>
                                                    <select name="EdName_${cnt.index}"  onchange="JavaScript:togglefaq('faq${cnt.index}',this)"   style="HEIGHT: 22px;WIDTH: 140px">
                                                        <option value=""<%-- ${vo.eduCenterName eq 'null' or vo.eduCenterName eq "" ? "selected" : ""}--%>></option>
                                                        <option value='비트교육센터' ${vo.eduCenterName eq '비트교육센터' ? "selected" : ""} >비트교육센터</option>
                                                        <option value='비트캠프(별관)' ${vo.eduCenterName eq '비트캠프(별관)' ? "selected" : ""} >비트캠프(별관)</option>
                                                        <option value='선문비트' ${vo.eduCenterName eq '선문비트' ? "selected" : ""} >선문비트</option>
                                                        <option value='한세비트' ${vo.eduCenterName eq '한세비트' ? "selected" : ""} >한세비트</option>
                                                        <option value='우송비트' ${vo.eduCenterName eq '우송비트' ? "selected" : ""} >우송비트</option>
                                                        <option value='부산외대비트' ${vo.eduCenterName eq '부산외대비트' ? "selected" : ""} >부산외대비트</option>
                                                        <option value='그린컴퓨터학원' ${vo.eduCenterName eq '그린컴퓨터학원' ? "selected" : ""} >그린컴퓨터학원</option>
                                                        <option value='삼성멀티캠퍼스' ${vo.eduCenterName eq '삼성멀티캠퍼스' ? "selected" : ""} >삼성멀티캠퍼스</option>
                                                        <option value='중앙정보처리학원' ${vo.eduCenterName eq '중앙정보처리학원' ? "selected" : ""} >중앙정보처리학원</option>
                                                        <option value='한빛교육센터' ${vo.eduCenterName eq '한빛교육센터' ? "selected" : ""} >한빛교육센터</option>
                                                        <option value='KETI' ${vo.eduCenterName eq 'KETI' ? "selected" : ""} >KETI</option>
                                                        <option value='KH정보교육원' ${vo.eduCenterName eq 'KH정보교육원' ? "selected" : ""} >KH정보교육원</option>
                                                        <option value='KITRI 아카데미' ${vo.eduCenterName eq 'KITRI 아카데미' ? "selected" : ""} >KITRI 아카데미</option>
                                                        <option value='KOSTA' ${vo.eduCenterName eq 'KOSTA' ? "selected" : ""} >KOSTA</option>
                                                        <option value='KOSA' ${vo.eduCenterName eq 'KOSA' ? "selected" : ""} >KOSA</option>
                                                        <option value="기타" ${vo.eduCenterName eq '기타' ? "selected" : ""}>기타</option>
                                                    </select><br>
                                                        <%--<span ID="faq${cnt.index}" style="display:none">--%>
                                                        <%--<input type="text" name="EdEtcName_${cnt.index}" value="" style="width:128px;" placeholder="입력해주세요."/>--%>
                                                        <%--</span>--%>
                                                </td>
                                                <td><input type="text" name="EdCourseName_${cnt.index}" value="${vo.eduCourseName}" size="18"></td>
                                                <td><input type="text" name="EdContents_${cnt.index}" value="${vo.content}" size="37"></td>
                                            </tr>
                                            <input type="hidden" name="Num2_${cnt.index}" value="${vo.userTraining_no}">
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </section>

                            <section class="section">
                                <h5>직장근무경력</h5>
                                <div class="divTable">
                                    <table class="padding2px">
                                        <colgroup>
                                            <col style="width:35%">
                                            <col style="width:20%">
                                            <col style="width:15%">
                                            <col style="width:15%">
                                            <col style="width:5%">
                                            <col style="width:5%">
                                            <col style="width:5%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th scope="col">기간</th>
                                            <th scope="col">회사명</th>
                                            <th scope="col">부서</th>
                                            <th scope="col">주업무/개발프로그램</th>
                                            <th scope="col">직위</th>
                                            <th scope="col">연봉</th>
                                            <th scope="col">퇴직사유</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${careerList}" var="vo" varStatus="cnt">
                                            <tr>
                                                <td>
                                                    <input type="hidden" name="userCareer_no_${cnt.index}" value="${vo.userCareer_no eq null or vo.userCareer_no eq '' ? '0' : vo.userCareer_no}">
                                                    <input type="text" name="CarrDteFr_${cnt.index}" value="${vo.startYear}" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:30px">
                                                    년
                                                    <select name="CarrDayFr_${cnt.index}" size="1">
                                                        <option value=""></option>
                                                        <c:forEach var="i" begin="1" end="12" step="1">
                                                            <option ${vo.startMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                        </c:forEach>
                                                    </select>
                                                    월
                                                    ~ <br/>&nbsp; &nbsp;
                                                    <input type="text" name="CarrDteEnd_${cnt.index}" value="${vo.endYear}"  maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();"  style="width:30px">
                                                    년
                                                    <select name="CarrDayEnd_${cnt.index}" size="1">
                                                        <option value=""></option>
                                                        <c:forEach var="i" begin="1" end="12" step="1">
                                                            <option ${vo.endMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                        </c:forEach>
                                                    </select>
                                                    월
                                                </td>
                                                <td><input type="text" name="CarrName_${cnt.index}" value="${vo.compName eq null or vo.compName eq '' ? '' : vo.compName}" style="WIDTH: 125px"></td>
                                                <td><input type="text" name="CarrDep_${cnt.index}" value="${vo.department eq null or vo.department eq '' ? '' : vo.department}" style="WIDTH: 92px"></td>
                                                <td><input type="text" name="CarrOp_${cnt.index}" value="${vo.devPart eq null or vo.devPart eq '' ? '' : vo.devPart}" style="WIDTH: 120px"></td>
                                                <td><input type="text" name="CarrDegree_${cnt.index}" value="${vo.role eq null or vo.role eq '' ? '' : vo.role}" style="WIDTH: 35px"></td>
                                                <td><input type="text" name="CarrYearpay_${cnt.index}" value="${vo.yearSal eq null or vo.yearSal eq '' ? '' : vo.yearSal}" style="WIDTH: 35px"></td>
                                                <td><input type="text" name="CarrRetire_${cnt.index}" value="${vo.retireReason eq null or vo.retireReason eq '' ? '' : vo.retireReason}" style="WIDTH: 60px" maxlength=100></td>
                                            </tr>
                                            <input type="hidden" name="CarrNum_${cnt.index}" value="${vo.user_no}">
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </section>

                            <section class="section">
                                <h5>외국어</h5>
                                <div class="divTable">
                                    <table class="padding2px">
                                        <colgroup>
                                            <col style="width:8%">
                                            <col style="width:20%">
                                            <col style="width:20%">
                                            <col style="width:20%">
                                            <col style="width:25%">
                                        </colgroup>

                                        <thead>
                                        <tr>
                                            <th scope="col">언어</th>
                                            <th scope="col">독해</th>
                                            <th scope="col">작문</th>
                                            <th scope="col">회화</th>
                                            <th scope="col">공인시험성적</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="c">영어</td>
                                            <td class="c">
                                                <input name="Eread" type="radio" ${langMil.lang1[1] eq "2" ? "checked" : ""} value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">상
                                                <input name="Eread" type="radio" ${langMil.lang1[1] eq "1" ? "checked" : ""} value="1" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">중
                                                <input name="Eread" type="radio" ${langMil.lang1[1] eq "0" ? "checked" : ""} value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">하
                                            </td>
                                            <td class="c">
                                                <input name="Ewrite" type="radio" ${langMil.lang1[2] eq "2" ? "checked" : ""} value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">상
                                                <input name="Ewrite" type="radio" ${langMil.lang1[2] eq "1" ? "checked" : ""} value="1"   style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">중
                                                <input name="Ewrite" type="radio" ${langMil.lang1[2] eq "0" ? "checked" : ""} value="0"   style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">하
                                            </td>
                                            <td class="c">
                                                <input name="Espeak" type="radio" ${langMil.lang1[3] eq "2" ? "checked" : ""} value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">상
                                                <input name="Espeak" type="radio" ${langMil.lang1[3] eq "1" ? "checked" : ""} value="1" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">중
                                                <input name="Espeak" type="radio" ${langMil.lang1[3] eq "0" ? "checked" : ""} value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">하
                                            </td>
                                            <td class="c">
                                                <select name="langScoreType1">
                                                    <option ${langMil.langScore1[0] eq "" or langMil.langScore1[0] eq null or langMil.langScore1[0] eq '없음' ? "selected" : ""} selected>없음</option>
                                                    <option ${langMil.langScore1[0] eq "TOEIC" ? "selected" : ""} value="TOEIC">TOEIC</option>
                                                    <option ${langMil.langScore1[0] eq "TOFEL" ? "selected" : ""} value="TOFEL">TOFEL</option>
                                                    <option ${langMil.langScore1[0] eq "TOEIC Speaking" ? "selected" : ""} value="TOEIC Speaking">TOEIC Speaking</option>
                                                    <option ${langMil.langScore1[0] eq "OPIc" ? "selected" : ""} value="OPIc">OPIc</option>
                                                    <option ${langMil.langScore1[0] eq "ETAT" ? "selected" : ""} value="ETAT">ETAT</option>
                                                    <option ${langMil.langScore1[0] eq "TEPS" ? "selected" : ""} value="TEPS">TEPS</option>
                                                    <option ${langMil.langScore1[0] eq "G-TELP" ? "selected" : ""} value="G-TELP">G-TELP</option>
                                                    <option ${langMil.langScore1[0] eq "GRE" ? "selected" : ""} value="GRE">GRE</option>
                                                    <option ${langMil.langScore1[0] eq "JTRA" ? "selected" : ""} value="JTRA">JTRA</option>
                                                    <option ${langMil.langScore1[0] eq "JPT" ? "selected" : ""} value="JPT">JPT</option>
                                                    <option ${langMil.langScore1[0] eq "HSK" ? "selected" : ""} value="HSK">HSK</option>
                                                </select>
                                                <input name="langScore1" value="${langMil.langScore1[1] != null or langMil.langScore1[1] != '' ? langMil.langScore1[1] : ""}" style="WIDTH: 25px">점</td>
                                        </tr>
                                        <tr>
                                            <td class="c">
                                                <select style="WIDTH: 55px" name="secLang2">
                                                    <option ${langMil.lang2[0] eq "없음" ? "selected" : ""} value="">없음</option>
                                                    <option ${langMil.lang2[0] eq "일어" ? "selected" : ""} value="일어">일어</option>
                                                    <option ${langMil.lang2[0] eq "독어" ? "selected" : ""} value="독어">독어</option>
                                                    <option ${langMil.lang2[0] eq "불어" ? "selected" : ""} value="불어">불어</option>
                                                    <option ${langMil.lang2[0] eq "중국어" ? "selected" : ""} value="중국어">중국어</option>
                                                </select>
                                            </td>
                                            <td class="c">
                                                <input name="Secread" type="radio" ${langMil.lang2[1] eq "2" ? "checked" : ""} value="2">상
                                                <input name="Secread" type="radio" ${langMil.lang2[1] eq "1" ? "checked" : ""} value="1">중
                                                <input name="Secread" type="radio" ${langMil.lang2[1] eq "0" ? "checked" : ""} value="0">하
                                            </td>
                                            <td class="c">
                                                <input name="Secwrite" type="radio" ${langMil.lang2[1] eq "2" ? "checked" : ""} value="2">상
                                                <input name="Secwrite" type="radio" ${langMil.lang2[1] eq "1" ? "checked" : ""} value="1">중
                                                <input name="Secwrite" type="radio" ${langMil.lang2[1] eq "0" ? "checked" : ""} value="0">하
                                            </td>
                                            <td class="c">
                                                <input name="Secspeak" type="radio" ${langMil.lang2[1] eq "2" ? "checked" : ""} value="2">상
                                                <input name="Secspeak" type="radio" ${langMil.lang2[1] eq "1" ? "checked" : ""} value="1">중
                                                <input name="Secspeak" type="radio" ${langMil.lang2[1] eq "0" ? "checked" : ""} value="0">하
                                            </td>
                                            <td class="c">
                                                <select name="langScoreType2">
                                                    <option ${langMil.langScore2[0] eq "" or langMil.langScore1[0] eq null ? "selected" : ""} selected>없음</option>
                                                    <option ${langMil.langScore2[0] eq "TOEIC" ? "selected" : ""} value="TOEIC">TOEIC</option>
                                                    <option ${langMil.langScore2[0] eq "TOFEL" ? "selected" : ""} value="TOFEL">TOFEL</option>
                                                    <option ${langMil.langScore2[0] eq "TOEIC Speaking" ? "selected" : ""} value="TOEIC Speaking">TOEIC Speaking</option>
                                                    <option ${langMil.langScore2[0] eq "OPIc" ? "selected" : ""} value="OPIc">OPIc</option>
                                                    <option ${langMil.langScore2[0] eq "ETAT" ? "selected" : ""} value="ETAT">ETAT</option>
                                                    <option ${langMil.langScore2[0] eq "TEPS" ? "selected" : ""} value="TEPS">TEPS</option>
                                                    <option ${langMil.langScore2[0] eq "G-TELP" ? "selected" : ""} value="G-TELP">G-TELP</option>
                                                    <option ${langMil.langScore2[0] eq "GRE" ? "selected" : ""} value="GRE">GRE</option>
                                                    <option ${langMil.langScore2[0] eq "JTRA" ? "selected" : ""} value="JTRA">JTRA</option>
                                                    <option ${langMil.langScore2[0] eq "JPT" ? "selected" : ""} value="JPT">JPT</option>
                                                    <option ${langMil.langScore2[0] eq "HSK" ? "selected" : ""} value="HSK">HSK</option>
                                                </select>
                                                <input name="langScore2" value="${langMil.langScore2[1] != null or langMil.langScore1[1] != '' ? langMil.langScore1[1] : ""}" style="WIDTH: 25px">점
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>

                            <section class="section">
                                <h5>병역</h5>
                                <div class="divTable">
                                    <table class="padding2px">
                                        <colgroup>
                                            <col style="width:25%">
                                            <col style="width:25%">
                                            <col style="width:10%">
                                            <col style="width:10%">
                                            <col style="width:30%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th scope="col">입대일</th>
                                            <th scope="col">전역일</th>
                                            <th scope="col">병과</th>
                                            <th scope="col">계급</th>
                                            <th scope="col">미필사유</th>
                                        </tr>
                                        </thead>

                                        <tbody>

                                        <tr>
                                            <td class="c">
                                                <input type="text" name="MilYearFr" value="${langMil.startYear}" maxlength="4" onChange="JavaScript:chknext(this)"  onKeyPress="onlyNumber();" style="width:30px">
                                                년
                                                <select name="MilMonFr" size="1">
                                                    <option value=""></option>
                                                    <c:forEach var="i" begin="1" end="12" step="1">
                                                        <option ${langMil.startMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                    </c:forEach>
                                                </select>
                                                월
                                            </td>
                                            <td class="c">
                                                <input type="text" name="MilYearTo" value="${langMil.endYear}" maxlength="4" onChange="JavaScript:chknext(this)"  onKeyPress="onlyNumber();" style="width:30px">
                                                년
                                                <select name="MilMonTo" size="1">
                                                    <option value=""></option>
                                                    <c:forEach var="i" begin="1" end="12" step="1">
                                                        <option ${langMil.endMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                    </c:forEach>
                                                </select>
                                                월
                                            </td>
                                            <td class="c"><input type="text" name="MilArm" value="${langMil.millArm eq null or langMil.millArm eq "" ? "" : langMil.millArm}" style="width:50px"></td>
                                            <td class="c"><input type="text" name="MilRank" value="${langMil.millRank eq null or langMil.millRank eq "" ? "" : langMil.millRank}" style="width:50px"></td>
                                            <td class="c"><input type="text" name="MilReason" value="${langMil.millIncompletReason eq null or langMil.millIncompletReason eq "" ? "" : langMil.millIncompletReason}" style="width:190px"></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>

                            <section class="section">
                                <h5>자격/면허</h5>
                                <div class="divTable">
                                    <table class="padding2px">
                                        <colgroup>
                                            <col style="width:50%">
                                            <col style="width:50%">
                                        </colgroup>
                                        <thead>
                                        <tr>
                                            <th scope="col">취득일</th>
                                            <th scope="col">종류</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${licence}" var="vo" varStatus="cnt">
                                            <tr>
                                                <td class="c">
                                                    <input type="hidden" name="licence_no_${cnt.index}" value="${vo.licence_no eq null or vo.licence_no eq '' ? '0' : vo.licence_no}">
                                                    <input type="text" name="LDteFr_${cnt.index}" value="${vo.acquireYear eq '0' ? '' : vo.acquireYear}" maxLength="4" onchange="JavaScript:chknext(this)"  onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
                                                    년
                                                    <select name="LDayFr_${cnt.index}" size="1">
                                                        <option value=""></option>
                                                        <c:forEach var="i" begin="1" end="12" step="1">
                                                            <option ${vo.acquireMon eq i ? "selected" : ""} value="${i}">${i}</option>
                                                        </c:forEach>
                                                    </select>
                                                    월
                                                </td>
                                                <td class="c"><input type="text" name="LName_${cnt.index}" value="${vo.liceName eq null or vo.liceName eq '' ? '' : vo.liceName}" style="WIDTH: 300px"></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                        </c:if>
                        <c:if test="${cID eq 'bitcam'}">
                            <section class="section mar_t40">
                                <h5>향후 전문가과정 지원 희망 여부</h5>
                                <div class="divTable">
                                    <table summary="학력등록정보 - 기간, 학교, 소재지, 학위, 전공, 부전공, 졸업구분">
                                        <tbody>
                                        <tr>
                                            <td class="l">
                                                <input type="radio" name="hopeExpert" value="1" > 희망함
                                                <input type="radio" name="hopeExpert" class="mar_l20" value="0" selected> 희망안함
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>
                        </c:if>
                        <!-- // from /Register/Include/register_info_01.asp -->
                        <c:choose>
                            <c:when test="${cID eq 'kaku' or cID eq 'industry40' or cID eq 'employment' or cID eq 'expert' or cID eq 'chung'}">
                                <div class="btn_wrap c pd_b30">
                                    <a href="javascript:submit_it()" title="" class="btnGreenBorder big" style="width:80px;">다음페이지</a>
                                    <a href="/Register/register_newRequest.asp" title="" class="btnWhiteBorder big" style="width:80px;">취소</a>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="btn_wrap c pd_b30">
                                    <!-- 주석화 : <a href="javascript:submit_it()" title="" class="btn mid green1">지원하기</a>-->
                                    <!--<p class="redTxt mar_b20">※ 방학특강 할인이벤트 참여자는 결제하시기 전에 연락바랍니다 (02-3486-3456)</p>-->
                                    <a href="javascript:submitCheck3();" title="" class="btnGreenBorder big" style="width:64px;">지원하기</a>
                                    <a href="/Register/register_newRequest.asp" title="" class="btnWhiteBorder big" style="width:64px;">취소</a>
                                </div>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </div>
        </div>

        <!-- Footer_Wrap -->
        <!-- #include virtual="/Include/FooterHTML1709.asp"-->
        <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
        <!-- //Footer_Wrap -->
    </div>
</form>
</body>
</html>
