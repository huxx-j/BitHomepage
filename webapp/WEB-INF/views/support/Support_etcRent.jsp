<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
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
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");								// 강의실 임대문의 ON
            //ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
            //$(".snb_1702 .newdepth1").eq(1).addClass("on");
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
    <hr>
    <div id="Container_Wrap">

        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Support_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_Support_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>지원안내
                    </p>
                    <h4>강의실 임대 문의</h4>
                </div>

                <section class="section">
                    <!--
                    <div class="con_wrap1709 first">
                        <h5>비트교육센터 강당</h5>
                        <p>
                            최대 200인까지 수용가능한 비트교육센터 강당은 지하철 2호선 강남역에서 5분거리에 위치하고 있습니다. 자율 이동가능한 개별 접이식 책상을 보유하고 있으며 넓은 공간으로 많은 인원이 답답함 없이 편안하게 장시간 이용이 가능합니다.<br>
                            대형 스크린, 보조스크린 등 2개의 스크린과 각각의 빔프로젝트, DVD/VTR 5채널등 최신 장비가 완벽하게 구비되어 있어 세미나, 워크샵, 영화상영, 강연회, 영화상영, 팬미팅 등 다양한 목적의 모임으로 이용이 가능합니다.
                        </p>
                        <p class="c"><img src="/Images/Content/Gallery/img_gallery_11.jpg"></p>
                        <table class="table_col_type1">
                            <caption></caption>
                            <thead>
                                <tr>
                                    <th scope="row">시설, 장비 안내</th>
                                    <th scope="row">대관요금</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <ul class="ul_dot_gray">
                                            <li>인원 : 최대 200명 수용</li>
                                            <li>대형스크린 : 빔프로젝트(4500안시) 200" 전동스크린</li>
                                            <li>보조스크린 : 빔프로젝트(2000안시) 80" 전동스크린</li>
                                            <li>DVD/VTR : 5채널</li>
                                        </ul>
                                    </td>
                                    <td>
                                        <ul class="ul_dot_gray">
                                            <li>반일 사용료 : 500,000원</li>
                                            <li>종일 사용료 : 900,000원</li>
                                            <li>주말 및 장기 대관시에는 별도협의</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    -->

                    <div class="con_wrap1709 first">
                        <p>
                            강남에 많은 강의장이 있지만 컴퓨터까지 보유한 전산 강의장은 찾기 어려우셨죠?<br/>
                            20인~40인까지 수용가능한 비트교육센터 전산강의장은 인터넷이 연결된 최신 컴퓨터와 빔프로젝트, 화이트보드 등
                            교육을 하기에 적합한 시설을 갖추고 있어 전산교육, 워크샵, 소형세미나 등의 다양한 용도로 이용이 가능합니다.
                        </p>
                    </div>

                    <div class="con_wrap1709 mar_b10">
                        <h5>전산강의장</h5>
                        <p class="c"><a href="${pageContext.request.contextPath}/assets/Images/Content/img_RentalClass401.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_RentalClass401.jpg" style="width:720px; margin-bottom:4px; "></a></p>
                        <p class="c">
                            <a href="${pageContext.request.contextPath}/assets/Images/Content/img_RentalClass30.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_RentalClass30.jpg" style="width:358px;"></a>
                            <a href="${pageContext.request.contextPath}/assets/Images/Content/img_RentalClass402.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_RentalClass402.jpg" style="width:358px;"></a>
                        </p>
                        <div class="divTable mar_t10">
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:40%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th colspan="4">대관요금</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="c">반일</td>
                                    <td class="c">4시간</td>
                                    <td class="c">40만원</td>
                                    <td rowspan="2">
                                        <ul class="ul_dot_gray l" style="padding-left:15px;">
                                            <li>VAT 10% 별도</li>
                                            <li>별도 SW 설치시간 제공</li>
                                            <li>교육시작 30분 전 오픈</li>
                                            <li>교육종료 30분 이내 퇴실</li>
                                            <li>다과 가능</li>
                                        </ul>
                                        <div class="brownTxt" style="margin-left:20px;">※ 장기사용시 할인가능</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="c">종일</td>
                                    <td class="c">8시간</td>
                                    <td class="c">60만원</td>
                                </tr>
                                <!--
                                <tr>
                                    <td colspan="4">
                                        <ul class="ul_dot_gray l" style="padding-left:15px;">
                                            <li>인원 : 20~40 수용</li>
                                            <li>빔프로젝터</li>
                                            <li>컴퓨터 : 모니터 24인치, Windows 8, i5-4590, 메모리 8GB, SSD 100G, HDD 500G</li>
                                        </ul>
                                    </td>
                                </tr>
                                -->

                                </tbody>
                            </table>
                        </div>
                        <p class="mar_t10 blueTxt" style="margin-left:5px; font-size:15px; font-weight:600;">※ 운영시간 : 월요일~금요일 09:00 ~ 22:00 / 토요일,일요일 09:00 ~ 18:00</p>
                    </div>

                    <div class="con_wrap1709 mar_b10">
                        <h5>대형회의실</h5>
                        <p class="c"><a href="${pageContext.request.contextPath}/assets/Images/Content/img_RentalConference2.jpg" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_RentalConference2.jpg" style="width:720px;"></a></p>
                        <div class="divTable mar_t10">
                            <table>
                                <colgroup>
                                    <col style="width:60%">
                                    <col style="width:40%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th colspan="2">대관요금</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="c">시간당 10만원</td>
                                    <td>
                                        <ul class="ul_dot_gray l" style="padding-left:15px;">
                                            <li>VAT 10% 별도</li>
                                            <li>대형프로젝터 / 음향기기 완비</li>
                                        </ul>
                                        <div class="brownTxt" style="margin-left:20px;">※ 장기사용시 할인가능</div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="mar_t10 blueTxt" style="margin-left:5px; font-size:15px; font-weight:600;">※ 운영시간 : 월요일~금요일 09:00 ~ 22:00 / 토요일 09:00 ~ 18:00</p>
                    </div>

                    <div class="con_wrap1709">
                        <h5>비트교육센터 위치</h5>
                        <p class="brownTxt">비트교육센터는 신분당선 강남역 5번출구 3분 거리에 있습니다.</p>
                        <div id="divMap" style="width:720px; height:420px;"></div>
                        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29b984056f1894cd0111ec4dc874f7dd"></script>
                        <script>
                            var container = document.getElementById('divMap');
                            var options = {
                                center: new daum.maps.LatLng(37.4946008, 127.027694),
                                level: 4
                            };
                            var map = new daum.maps.Map(container, options);

                            // 마커가 표시될 위치입니다
                            var markerPosition  = new daum.maps.LatLng(37.4946008, 127.027694);

                            // 마커를 생성합니다
                            var marker = new daum.maps.Marker({
                                position: markerPosition
                            });

                            // 마커가 지도 위에 표시되도록 설정합니다
                            marker.setMap(map);

                            var iwContent = '<div style="padding:5px;"><span style="font-size:15pt; font-weight:900;">비트교육센터</span> <a href="http://map.daum.net/link/map/비트교육센터,37.4946008,127.027694" style="color:blue" target="_blank">큰지도보기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                                iwPosition = new daum.maps.LatLng(37.4946008, 127.027694); //인포윈도우 표시 위치입니다

                            // 인포윈도우를 생성합니다
                            var infowindow = new daum.maps.InfoWindow({
                                position : iwPosition,
                                content : iwContent
                            });

                            // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                            infowindow.open(map, marker);
                        </script>
                        <div style="box-shadow:1px 1px 5px #9a9a9a; padding:10px; margin-top:20px; font-size:1.4em;">
                            주소 : 서울 서초구 서초대로 74길33 비트빌 3층
                        </div>
                        <div style="box-shadow:1px 1px 5px #9a9a9a; padding:10px; margin-top:20px; font-size:1.4em;">
                            대중교통 : 지하철 2호선,신분당선 강남역 5번출구
                        </div>
                        <div style="box-shadow:1px 1px 5px #9a9a9a; padding:10px; margin-top:20px; margin-bottom:20px; font-size:1.4em;">
                            주차 : 관리자 무료주차 <span style="font-size:0.8em;">(승용차 1대)</span>
                        </div>
                    </div>

                    <div class="con_wrap1709 last">
                        <h5>문의</h5>
                        <!--<p>담당자 : 조희준 선임 (02-3486-3456)</p>-->
                        <!--<p>담당자 : 조희준 (02-3486-3456)</p>-->
                        <p>02-3486-3456</p>
                    </div>

                </section>
            </div>
            <!--<a href="#this" class="moveTop">Top</a>-->
            <!-- // Content -->
        </div>
        <!-- //Content_Wrap -->
    </div>
    <hr>
    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>