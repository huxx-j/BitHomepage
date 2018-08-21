<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            //$(".snb_1702 .newdepth1").eq(5).addClass("on");
            $(".snb_1709 a.newdepth1").eq(5).addClass("on");
        });
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap" style="min-height:250px;">
        <div id="Content_Wrap" style="min-height:250px;">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_JobCenter_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>취업지원센터
                    </p>
                    <h4 style="float:left;">비트출신 진출기업</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section">
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>가</h5>
                        <ul class="companyList yellow">
                            <li>거원시스템</li>
                            <li>경향신문사</li>
                            <li>고려정보통신</li>
                            <li>고속도로정보통신</li>
                            <li>공영DBM</li>
                            <li>교보생명</li>
                            <li>교보정보통신[김경수 외]</li>
                            <li>교보증권</li>
                            <li>구우정보기술</li>
                            <li>국민데이타시스템</li>
                            <li>국민은행</li>
                            <li>굿모닝증권</li>
                            <li>금융감독원</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>나</h5>
                        <ul class="companyList yellow">
                            <li>나눔기술</li>
                            <li>나라정보기술</li>
                            <li>나래이동통신</li>
                            <li>나모인터렉티브</li>
                            <li>나우컴</li>
                            <li>나우텍</li>
                            <li>나이스채권평가</li>
                            <li>나인정보기술</li>
                            <li>나프정보기술</li>
                            <li>남선산업</li>
                            <li>네띠앙</li>
                            <li>네오뮤즈</li>
                            <li>네오위즈[김정일 외]</li>
                            <li>네오미디어</li>
                            <li>네오엠텔</li>
                            <li>네오캐스트</li>
                            <li>네이버시스템</li>
                            <li>네비웍스</li>
                            <li>넥스젠테크놀로지</li>
                            <li>넥스텍</li>
                            <li>넷마블</li>
                            <li>넷피아[김준수 외]</li>
                            <li>농심NDS</li>
                            <li>누리텔레콤</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>다</h5>
                        <ul class="companyList yellow">
                            <li>다산네트웍스[고준석 외]</li>
                            <li>다음기술</li>
                            <li>다음커뮤니케이션</li>
                            <li>대교</li>
                            <li>대림I&S[허민규 외]</li>
                            <li>대상정보기술[김민철 외]</li>
                            <li>대신증권[조정익 외]</li>
                            <li>대신투자신탁운영</li>
                            <li>대우전자</li>
                            <li>대우정보시스템[박정운 외]</li>
                            <li>대우증권</li>
                            <li>대한생명</li>
                            <li>대한투자신탁</li>
                            <li>대한통운</li>
                            <li>대한해운</li>
                            <li>더존디지탈웨어</li>
                            <li>더존비즈온</li>
                            <li>더존IT그룹</li>
                            <li>데이콤</li>
                            <li>데이콤ST</li>
                            <li>델컴퓨터[윤성근 외]</li>
                            <li>동부CNI[심규성 외]</li>
                            <li>동부증권</li>
                            <li>동부화재</li>
                            <li>동양시스템즈[변대성 외]</li>
                            <li>동양텔레콤 [박종상 외]</li>
                            <li>두리정보통신</li>
                            <li>드림위즈</li>
                            <li>디오텍</li>
                            <li>디지털조선일보</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->

                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>라</h5>
                        <ul class="companyList yellow">
                            <li>라스21</li>
                            <li>라이거시스템즈</li>
                            <li>라이코스코리아</li>
                            <li>레인콤[조경래 외]</li>
                            <li>로커스</li>
                            <li>롯데정보통신[신정우 외]</li>
                            <li>리눅스씨큐리티</li>
                            <li>리눅스코리아</li>
                            <li>링크뱅크</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>마</h5>
                        <ul class="companyList yellow">
                            <li>마로테크</li>
                            <li>메디코아</li>
                            <li>메디페이스</li>
                            <li>메리츠증권[박철진 외]</li>
                            <li>모나미</li>
                            <li>모다정보통신</li>
                            <li>모비스텔레콤</li>
                            <li>미디어랜드</li>
                            <li>미디어링크</li>
                            <li>미래넷</li>
                            <li>미래에셋증권[장진용 외]</li>
                            <li>미리온시스템</li>
                            <li>미지리서치</li>
                            <li>맵퍼스</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>바</h5>
                        <ul class="companyList yellow">
                            <li>바스네트워크</li>
                            <li>바이오넷</li>
                            <li>바이오스랩코리아</li>
                            <li>바이텍정보통신</li>
                            <li>버츄얼웨어</li>
                            <li>베스테컴</li>
                            <li>베스트나우</li>
                            <li>보고정보시스템</li>
                            <li>보라존</li>
                            <li>보스소프트</li>
                            <li>보안제국</li>
                            <li>브이텍</li>
                            <li>블루칩인터넷</li>
                            <li>비씨카드[김상범 외]</li>
                            <li>비에스테크놀러지</li>
                            <li>비트컴퓨터[김석진 외]</li>
                            <li>백병원</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>사</h5>
                        <ul class="companyList yellow">
                            <li>삼미정보시스템</li>
                            <li>삼보정보통신</li>
                            <li>삼보컴퓨터</li>
                            <li>삼성멤버쉽[경규철 외]</li>
                            <li>삼보컴퓨터</li>
                            <li>삼성캐피털</li>
                            <li>삼성SDS[김진철 외]</li>
                            <li>삼성생명보험</li>
                            <li>삼성전자[안영전 외]</li>
                            <li>삼성종합기술원[박순례 외]</li>
                            <li>삼성중공업</li>
                            <li>삼성카드</li>
                            <li>삼성테크윈</li>
                            <li>선마이크로시스템즈[백정인 외]</li>
                            <li>새롬아이티</li>
                            <li>새롬정보시스템</li>
                            <li>서울대병원</li>
                            <li>서울보증보험</li>
                            <li>서울일렉트론</li>
                            <li>서울아산병원</li>
                            <li>서울증권</li>
                            <li>성진네텍</li>
                            <li>세원텔레콤</li>
                            <li>세종증권</li>
                            <li>소프트그램</li>
                            <li>소프트뱅크미디어</li>
                            <li>소프트웨어진흥원[정현석 외]</li>
                            <li>소프트포럼</li>
                            <li>쉬프트정보통신</li>
                            <li>스탠더드텔레콤</li>
                            <li>스톡캐스터</li>
                            <li>시스윌</li>
                            <li>신영증권</li>
                            <li>신지소프트[이동재 외]</li>
                            <li>신텔정보통신</li>
                            <li>신한은행[우상수 외]</li>
                            <li>신흥증권</li>
                            <li>싸이월드</li>
                            <li>쌍용정보통신[유영웅 외]</li>
                            <li>썬마이크로시스템즈</li>
                            <li>쓰리탑정보통신</li>
                            <li>씨큐어소프트</li>
                            <li></li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>아</h5>
                        <ul class="companyList yellow">
                            <li>아이메카</li>
                            <li>아이소프트</li>
                            <li>아이작소프트</li>
                            <li>아이티엔씨</li>
                            <li>아이티플러스</li>
                            <li>안철수연구소[김봉구 외</li>
                            <li>애드라닷컴</li>
                            <li>액터스네트워스</li>
                            <li>야후코리아[한대영 외]</li>
                            <li>어울림정보기술[신선희 외]</li>
                            <li>어필텔레콤</li>
                            <li>에스오엔코리아</li>
                            <li>에이메일</li>
                            <li>에이아이넷</li>
                            <li>엔씨소프트[김대진 외]</li>
                            <li>엔커머스</li>
                            <li>엔타즈</li>
                            <li>엠게임[임지웅 외]</li>
                            <li>엠쓰리모바일</li>
                            <li>엣데이터</li>
                            <li>오란디프</li>
                            <li>온넷테크놀러지</li>
                            <li>와우티브이</li>
                            <li>우리금융정보시스템</li>
                            <li>웹나라</li>
                            <li>웹젠[이승주 외]</li>
                            <li>웹플러스</li>
                            <li>위세아이텍</li>
                            <li>윈스테크넷</li>
                            <li>위즈정보기술</li>
                            <li>윈포넷[오신우 외]</li>
                            <li>유니보스</li>
                            <li>유비케어</li>
                            <li>유비퀵스</li>
                            <li>유엔젤</li>
                            <li>유진데이타</li>
                            <li>유화증권</li>
                            <li>이타임즈인터넷</li>
                            <li>이루온</li>
                            <li>인디시스템</li>
                            <li>인스프리트</li>
                            <li>인성정보</li>
                            <li>인츠</li>
                            <li>일은시스템</li>
                            <li>일은증권</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>자</h5>
                        <ul class="companyList yellow">
                            <li>자네트시스템</li>
                            <li>전자부품연구원</li>
                            <li>조선일보</li>
                            <li>조은시큐리티</li>
                            <li>조흥은행</li>
                            <li>조흥증권</li>
                            <li>한화정보</li>
                            <li>주성엔지니어링[변영안 외]</li>
                            <li>중앙일보</li>
                            <li>증전엔지니어링</li>
                            <li>GE메디컬시스템코리아</li>
                            <li>지티플러스·지티원</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>카</h5>
                        <ul class="companyList yellow">
                            <li>카티정보</li>
                            <li>캐드랜드</li>
                            <li>케이비테크놀러지</li>
                            <li>케이웨더</li>
                            <li>코디콤</li>
                            <li>코아로직[김형규 외]</li>
                            <li>코아뱅크</li>
                            <li>코아정보시스템</li>
                            <li>코이넬</li>
                            <li>커머스아이</li>
                            <li>큐라이프</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>타</h5>
                        <ul class="companyList yellow">
                            <li>터보테크</li>
                            <li>테스텍</li>
                            <li>테크하임텔슨전자</li>
                            <li>텔슨전자</li>
                            <li>토마토시스템</li>
                            <li>트러스트</li>
                            <li>특허청</li>
                            <li>티맥스소프트[선찬규 외]</li>
                            <li>팅크웨어[박태헌 외]</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>파</h5>
                        <ul class="companyList yellow">
                            <li>파이언소프트</li>
                            <li>파인디지털</li>
                            <li>팬텍</li>
                            <li>펜타소프트</li>
                            <li>펜타시스템</li>
                            <li>펜타시큐리티</li>
                            <li>포스데이타[김상준 외]</li>
                            <li>폴리픽스</li>
                            <li>퓨전소프트</li>
                            <li>프리즘정보시스템</li>
                            <li>필아이티</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>하</h5>
                        <ul class="companyList yellow">
                            <li>하나로통신</li>
                            <li>하나은행</li>
                            <li>하우리</li>
                            <li>하이닉스반도체</li>
                            <li>한국가상현실</li>
                            <li>한국과학기술원[조병성 외]</li>
                            <li>한국디지탈라인</li>
                            <li>한국신용평가정보</li>
                            <li>한국아이오테크</li>
                            <li>한국외환은행[강상규 외]</li>
                            <li>한국일보</li>
                            <li>한국전력</li>
                            <li>한국전자통신연구소</li>
                            <li>한국정보공학</li>
                            <li>한국정보통신[이은실 외]</li>
                            <li>한국정보컨설팅</li>
                            <li>한국증권전산</li>
                            <li>한국컴퓨터</li>
                            <li>한국통신</li>
                            <li>한국투자신탁</li>
                            <li>한국철도기술연구원</li>
                            <li>한국후지제록스</li>
                            <li>한국휴렛팩커드</li>
                            <li>한국IBM</li>
                            <li>한글과컴퓨터</li>
                            <li>한독약품</li>
                            <li>한빛은시스템</li>
                            <li>한울I.C.I</li>
                            <li>한진정보통신</li>
                            <li>한컴씨큐어</li>
                            <li>한화S&C</li>
                            <li>허브테크</li>
                            <li>핸디소프트</li>
                            <li>현대오토넷</li>
                            <li>현대정보기술</li>
                            <li>현대증권</li>
                            <li>홈캐스트</li>
                            <li>효성데이타시스템</li>
                            <li>휴림인터랙티브</li>
                            <li>휴맥스</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap first">
                        <h5>기타</h5>
                        <ul class="companyList yellow">
                            <li>BEA시스템즈코리</li>
                            <li>Bixon Technology</li>
                            <li>CJ시스템즈</li>
                            <li>HP</li>
                            <li>타IRAM소프트</li>
                            <li>KCC정보통신</li>
                            <li>KGI증권</li>
                            <li>L&H Korea</li>
                            <li>LG CNS</li>
                            <li>LG전자</li>
                            <li>LG정보통신</li>
                            <li>LG텔레콤</li>
                            <li>LG투자증권</li>
                            <li>MBC기술연구소</li>
                            <li>NHN</li>
                            <li>SK C&C</li>
                            <li>SK증권</li>
                            <li>SK커뮤니케이션</li>
                            <li>SK텔레콤</li>
                        </ul>
                    </div>
                    <!-- //con_wrap -->
                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
    </div>
    <hr>
    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>