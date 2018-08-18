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
            $(".snb_1709 a.newdepth1").eq(2).addClass("on");
        });
    </script>
    <style>
        .stepNum {
            left:33px !important;
        }
    </style>
    <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
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
            <!-- #include virtual = "/Include/SNB_CenterInfo_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_CenterInfo_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>센터소개
                    </p>
                    <h4 style="float:left;">비트교육센터 연혁</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section">
                    <!-- con_wrap1709 2012 -->
                    <div class="con_wrap1709 mar_t40">
                        <div class="step_wrap type3">
                            <p class="stepNum">2012</p>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">기업맞춤교육 실시 (네비웍스)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <ul class="stepCon">
                                    <li>한화 S&C 개발자 교육실시</li>
                                    <li>기업맞춤교육 실시 (SGA, 비트컴퓨터)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <p class="stepCon">기업맞춤교육 실시 (웹케시)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <p class="stepCon">기업맞춤교육 실시 (더존 IT그룹, 비트컴퓨터)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <p class="stepCon">기업맞춤교육 실시 (심플렉스 인터넷)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <ul class="stepCon">
                                    <li>국가기간 전략산업직종 훈련기관 선정</li>
                                    <li>한일병원 전산개발자 교육실시</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">청년취업아카데미 사업자 선정</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(SK하이닉스, 펄서스 테크놀러지)</li>
                                    <li>삼성소프트웨어 멤버십 합격 (EX 340기 심재식, EX352기 윤영호, 신희승)</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 2012 -->
                    <!-- con_wrap1709 2011 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2011</p>
                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">포스코 ICT 개발자 교육실시</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>임베디드 SW 공모대전 수상</li>
                                    <li>우수상(EX 340기 박현우), 장려상(EX 333기 김민호 수상)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">기업맞춤교육실시 (XN시스템즈)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">09</p>
                                <p class="stepCon">전북은행 전산 개발자 교육 실시</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <ul class="stepCon">
                                    <li>방글라데시 공공행정부 전자결재시스템 구축사업 초청 연수 실시</li>
                                    <li>기업맞춤교육실시(넷크루즈, 한국아이오테크)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(휴맥스)</li>
                                    <li>비트교육센터 앱창작터 사업 선정</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <p class="stepCon">기업맞춤교육 실시(더존비즈온, 네비웍스)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <p class="stepCon">아프간파르완주 교육문화센터 건립사업 수주</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">지식경제부 SW핵심역량강화 우수과정 선정</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <p class="stepCon">기업맞춤교육 실시(하이닉스반도체, 지티원지티플러스, 허브테크)</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 2011 -->
                    <!-- con_wrap1709 2010 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2010</p>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>공개SW개발자대회 IX 122기 송인수 대상 수상</li>
                                    <li>기업맞춤교육 실시(엠게임,커머스아이,더존IT그룹)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>임베디드 SW 공모대전 수상</li>
                                    <li>우수상(EX 340기 박현우), 장려상(EX 333기 김민호 수상)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">'비트교육센터' 개칭</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">09</p>
                                <p class="stepCon">기업맞춤교육 실시(맵퍼스,이루온,윈스테크넷)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <ul class="stepCon">
                                    <li>비트교육센터 20주년</li>
                                    <li>기업맞춤교육 실시(마크애니)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <p class="stepCon">모로코 교사 IT 활용역량 강화사업 교사훈련센터 개원</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <p class="stepCon">SK C&C IT Fronthir 교육 실시</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <p class="stepCon">포스코ICT 임원 및 간부 교육실시</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <p class="stepCon">SW아키텍처 전문가과정 신규 개설</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">하이닉스반도체 기업맞춤 교육 실시</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 2010 -->
                    <!-- con_wrap1709 2009 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2009</p>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <p class="stepCon">비트출신 8천명 돌파</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <ul class="stepCon">
                                    <li>비트컴퓨터 소프트웨어프로세스 픔질인증 획득</li>
                                    <li>KOICA 초청연수 사업 (모로코 교사 IT 활용역량 강화사업)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <p class="stepCon">기업맞춤교육 실시 (웰게이트)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">유한대학과 인력양성 MOU 체결</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <p class="stepCon">비트교육센터 민간자격증 '비트 SW 프로젝트 자격증' 신설</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 2009 -->
                    <!-- con_wrap1709 2008 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2008</p>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>공개 SW 공모대전 대상 수상(Embedded System 전문가과정 EX311기 1조)</li>
                                    <li>기업맞춤교육 실시(어니언텍, 이루온, 인스프리트)</li>
                                    <li>기업맞춤교육 실시(넥스트리소프트, 디리아, 디지털에셋, 드리머, 지티원)</li>
                                    <li>제6회임베디드 SW 공모대전 금상 수상 (Embedded System 전문가과정 EX311기 2조)</li>
                                    <li>SBS 아이디어 하우머치 4억2천 낙찰 (Embedded System 전문가과정 EX294기)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(인터데브)</li>
                                    <li>필리핀 고위관리자 초청연수 사업</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">09</p>
                                <ul class="stepCon">
                                    <li>조현정 회장, 책 출간 - 발상이 다른 CEO 조현정의 '아름다운 열정'</li>
                                    <li>기업맞춤교육 실시(허브테크)</li>
                                    <li>기업맞춤교육 실시(디지털에셋, 넥스트리소프트)</li>
                                    <li>한국 IT기업연합회 - 비트컴퓨터 협약</li>
                                    <li>임베디드 SW 공모대전 '비트컴퓨터 사장상' 추가</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(엠게임)</li>
                                    <li>지식경제부 지원 맞춤형 재직자과정 교육 실시</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <p class="stepCon">기업맞춤교육 실시(인스프리트, 이루온)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <ul class="stepCon">
                                    <li>2008 코드게이트 및 전역장교를 위한 취업박람회 참가</li>
                                    <li>유한대학 학장 비트교육센터 방문 IT교육 노하우 벤치마킹</li>
                                    <li>기업맞춤교육 실시(브리지텍, 컴스퀘어, 엑스크립트, 비트컴퓨터)</li>
                                    <li>재직자 위탁교육 실시(마이다스IT, 잡코리아)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(인테그라정보통신, 날리지큐브)</li>
                                    <li>일본취업 Embedded System 전문가과정 개설</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <ul class="stepCon">
                                    <li>Korea Mashup Contest 2008 장려상 수상</li>
                                    <li>기업맞춤교육 실시(어울림정보기술)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(이루온, 넥스트리소프트)</li>
                                    <li>기업맞춤교육 실시(가온미디어, 셀런, 인텍디지탈)</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 2008 -->
                    <!-- con_wrap1709 2007 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2007</p>
                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">파나마 전자정부 및 원격교육 지원 사업</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>제5회 임베디드SW 공모대전 동상 수상</li>
                                    <li>기업맞춤교육 실시(뱅크타운, 코아뱅크, 디리아, 솔루션박스)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">KOICA 초청연수 사업 (콩고민주공화국 및 파나마)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">09</p>
                                <p class="stepCon">기업맞춤교육 실시(아이티앤씨, 아이티플러스, 코아뱅크, 토마토시스템)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">인도네시아 스마랑 주립대학 총장 비트교육센터 내방</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <ul class="stepCon">
                                    <li>페루 국립공과대 ICT 교육역량강화사업 수주</li>
                                    <li>기업맞춤교육 실시(토마토시스템)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <ul class="stepCon">
                                    <li>SEK'2007 전시회 참가</li>
                                    <li>기업맞춤교육 실시(엠게임)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <ul class="stepCon">
                                    <li>모로코 초청연수 실시</li>
                                    <li>기업맞춤교육 실시(이루온, 토마토시스템)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <p class="stepCon">모로코 초청연수</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">자바소프트웨어 공모대전 장려상 수상</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <p class="stepCon">기업맞춤교육 실시(성우시스템, 토마토시스템)</p>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2007 -->
                    <!-- con_wrap1709 2006 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2006</p>

                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>우크라이나 원격진료시스템구축사업 수주</li>
                                    <li>기업맞춤교육실시(넷피아닷컴)</li>
                                    <li>기업맞춤교육실시(빛샘,에이텍)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">기업맞춤교육실시(비트컴퓨터 & 인피니트)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <ul class="stepCon">
                                    <li>서울 디지털밸리內 비트교육센터 재직자과정 개설</li>
                                    <li>SEK'2006 전시회 참가</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <p class="stepCon">기업맞춤교육실시(핸디소프트)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <p class="stepCon">USN 전문가과정 개설</p>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2006 -->
                    <!-- con_wrap1709 2005 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2005</p>

                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">해외연수초청 3개 사업 수주(파나마, 우즈베키스탄, 우크라이나)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>기업맞춤교육 실시(휴맥스)</li>
                                    <li>USN신규 전문가과정 개설</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <ul class="stepCon">
                                    <li>전문가과정 수료인원7,097명(2005년 10월기준)</li>
                                    <li>영산대학교 학점인정 협약</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">중앙대학교 학점인정 협약</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <ul class="stepCon">
                                    <li>경남 IT 엘리트 양성사업 </li>
                                    <li>기업맞춤교육 실시 (다산네트웍스)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <ul class="stepCon">
                                    <li>전문가과정 수료인원 7,045명</li>
                                    <li>강원도 IT전문가 양성사업</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <ul class="stepCon">
                                    <li>비트교육센터 학점인정 대상기관 선정</li>
                                    <li>조현정회장 벤처기업협회 회장 취임</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <p class="stepCon">신임 전진옥 사장 대표이사 취임 / 조현정 회장 대표이사 취임</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 2005 -->

                    <!-- con_wrap1709 2004 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2004</p>

                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <ul class="stepCon">
                                    <li>12월 제2회 임베디드 소프트웨어 공보대전 동상수상 </li>
                                    <li>'Mobile Fast P2P System(무선의 고속 P2P 시스템) : 조용수, 김영욱, 김상수, 이학승, 정선경, 박세일</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">비트교육센터 인도 앱텍과 IT 인력 공동 양성 협약</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">전문가과정 수료인원 6,917명</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">비트프로젝트 100호 기념식 (926개 프로그램 소스 오픈)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <p class="stepCon">우송비트교육센터 설립 및 학점인정 협약 (우송대학교)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <p class="stepCon">해외IT연수 사전교육 실시 (정보통신연구진흥원)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <p class="stepCon">직업능력개발훈련 협약 (한국산업인력공단)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <p class="stepCon">방글라/우즈백 IT교육사업 (KOICA)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">Software Engineering 교육사업 협약 (한국소프트웨어공학협회)</p>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2004 -->
                    <!-- con_wrap1709 2003 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2003</p>

                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">재일동포청년대상 IT교육 사업 실시 (재외동포재단)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <ul class="stepCon">
                                    <li>제1회 임베디드 소프트웨어 공모대전 동상 수상 </li>
                                    <li>리눅스 기반 음성인식 메신져 (지정공모) : 권재호, 강영수, 문학선, 아지훈, 이민욱, 이상민(LX241)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">임베디드 강사양성과정 (ETRI)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <p class="stepCon">&lt;여성IT 전문교육&gt; 윈도우, 자바전문가과정 운영 (여성부)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">이화여자대학교 학점인정 협약 체결</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <p class="stepCon">한세비트교육센터 설립 및 학점인정 협약 (한세대학교)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">02</p>
                                <ul class="stepCon">
                                    <li>'2003년 Java 소프트웨어 공모전' 금상 수상 </li>
                                    <li>원격 웹 애플리케이션 서버 모니터링 관리 툴 : 홍황용, 박민석, 차주영, 최선옥, 허강호(JX215) :89호/6</li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2003 -->
                    <!-- con_wrap1709 2002 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2002</p>

                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <ul class="stepCon">
                                    <li>12월 2002년 대한민국 소프트웨어 공모대전 장려상 수상 (한국정보기술전문가협회) </li>
                                    <li>침입대응 및 분석 시스템 (Fishbowl) : 이정민, 여욱형, 홍진석, 전건웅, 권준일, 김한겸, 김상욱(NX202) :85호/3</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">비트출신 대상 교육리콜제 도입 및 시행</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">MIC IT 아카데미 2회 연속 선정 (정보통신부)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <p class="stepCon">&lt;사이버 여성IT 전문교육&gt; 보안/윈도즈 고급과정 운영 (여성부)</p>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2002 -->
                    <!-- con_wrap1709 2001 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2001</p>

                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <ul class="stepCon">
                                    <li>2001년 12월 2001년 대한민국 소프트웨어 공모대전 일반부 장려상 수상 (한국리눅스협의회)</li>
                                    <li>실시간 운영체제를 지원하는 임베디드 시스템 (RES, Real-Time Linux for Embedded System) : 서희, 김영훈, 박영복, 유기명, 유영갑(NX158) : 70호/6</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">국립목포대학교 학점인정 협약</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <p class="stepCon">사이버 여성 IT 전문 교육사업 운영 (여성부)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">ISO 9001 통합인증 획득 (한국품질인증센터)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">10</p>
                                <p class="stepCon">사이버 교육 사이트 비트캠퍼스 오픈 www.BITcampus.com</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">09</p>
                                <p class="stepCon">비트정보봉사단 발족</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <p class="stepCon">MIC IT 아카데미 전문교육기관 선정 (정보통신부)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <p class="stepCon">선문비트교육센터 설립 및 학점인정 협약 (선문대학교)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <p class="stepCon">커뮤니티 사이트 '비트클럽' 오픈 www.BITclub.co.kr</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <p class="stepCon">비트캠프 서울교육원 개원</p>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2001 -->
                    <!-- con_wrap1709 2000 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">2000</p>

                            <div class="conWrap">
                                <p class="stepTit">11</p>
                                <ul class="stepCon">
                                    <li>제2회 JAVA 소프트웨어 공모전 일반부 장려상 수상 (한국소프트웨어진흥원)</li>
                                    <li>지니 웹 어플리케이션 : 문상기, 김진학, 민창훈, 이제환, 이주원, 유국선(NX134) 61호/10</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">IT강국을 위한 다짐대회 개최 (비트교육센터 10주년 행사)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">04</p>
                                <p class="stepCon">캠퍼스세미나 2000 시작</p>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 2000 -->
                    <!-- con_wrap1709 1999 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">1999</p>

                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <ul class="stepCon">
                                    <li>정보통신 소프트웨어 공모대전 동상 (한국정보처리전문가협회) </li>
                                    <li>RMS(Resouce Management System) : 백선욱, 박종혁, 오병선, 이인순, 이재정, 조강현, 최동철, 한현진(NX102)</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">실업대책추진 공로표창 수상 (국무총리상)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <ul class="stepCon">
                                    <li>제1회 Java 소프트웨어 공모전 학생부 우수상 </li>
                                    <li>항공권 예약 관리 시스템 (Air troval Manager) : 정치영, 박충순, 송성태, 최인엽(IX91) 41호/10</li>
                                </ul>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">03</p>
                                <p class="stepCon">'99 전국 대학 순회 기술세미나 시작</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <ul class="stepCon">
                                    <li>제1회 한국 오픈소스 소프트웨어 컨테스트 우수상 수상</li>
                                    <li>모보니 (Mobonie) : 이준석, 이종수(NX90) 40호/8</li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <!-- //con_wrap1709 1999 -->
                    <!-- con_wrap1709 1998 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">1998</p>
                            <div class="conWrap">
                                <p class="stepTit">12</p>
                                <p class="stepCon">비트교육센터, 정보통신분야 유공자상 수상 (정보통신부 장관상)</p>
                            </div>
                            <div class="conWrap">
                                <p class="stepTit">05</p>
                                <p class="stepCon">AD Club 결성 (정보통신기술 벤처 창업클럽)</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 1998 -->
                    <!-- con_wrap1709 1997 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">1997</p>
                            <div class="conWrap">
                                <p class="stepTit">07</p>
                                <p class="stepCon">(주)비트컴퓨터 KOSDAQ 등록</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 1997 -->
                    <!-- con_wrap1709 1994 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">1994</p>
                            <div class="conWrap">
                                <p class="stepTit">06</p>
                                <p class="stepCon">비트프로젝트 1호 단행본 발간</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 1994 -->
                    <!-- con_wrap1709 1993 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">1993</p>
                            <div class="conWrap">
                                <p class="stepTit">01</p>
                                <p class="stepCon">'비트교육센터' 개칭</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 1993 -->
                    <!-- con_wrap1709 1990 -->
                    <div class="con_wrap1709 first">
                        <div class="step_wrap type3">
                            <p class="stepNum">1990</p>
                            <div class="conWrap">
                                <p class="stepTit">08</p>
                                <p class="stepCon">(주)비트컴퓨터 부설 C 교육센터 설립</p>
                            </div>
                        </div>
                    </div>
                    <!-- //con_wrap1709 1990 -->
                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
    </div>

    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>