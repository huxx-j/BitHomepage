
<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
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

            //$(".snb .depth1").eq(4).addClass("on");
            $(".snb_1709 a.newdepth1").eq(4).addClass("on");
        });
    </script>
    <script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=19bd72fa3f35a576e9b39b1b7dbcb203"></script>
    <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
<div id="Wrapper">
    <%--<form name="form_ipin" method="post" style="display:none">--%>
        <%--<input type="hidden" name="m" value="pubmain">--%>
        <%--<input type="hidden" name="enc_data" value="<%= sRequestData %>">--%>
    <%--</form>--%>
    <%--<%--%>
        <%--'//<!-- SkipMenu -->--%>
        <%--'//<!-- #include virtual = "/Include/skipMenu.asp"-->--%>
        <%--'//<!-- //SkipMenu -->--%>
    <%--%>--%>

    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->

    <!-- Container_Wrap -->
    <div id="Container_Wrap" style="min-height:300px;">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
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
                    </p>
                    <h4 style="float:left;">찾아오시는 길</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section mar_t20">
                    <div class="con_wrap1709">
                        <div id="map" style="width:720px; height:600px;"></div>
                        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=29b984056f1894cd0111ec4dc874f7dd"></script>
                        <script>
                            var container = document.getElementById('map');
                            var options = {
                                center: new daum.maps.LatLng(37.4946008, 127.027694),
                                level: 3
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

                            var iwContent = '<div style="padding:5px;"><span style="font-size:15pt; font-weight:900;">비트교육센터</span> <a href="http://map.daum.net/link/map/비트교육센터,37.4946008,127.027694" style="color:blue; letter-spacing:-2px;" target="_blank">큰지도보기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                                iwPosition = new daum.maps.LatLng(37.4946008, 127.027694); //인포윈도우 표시 위치입니다

                            // 인포윈도우를 생성합니다
                            var infowindow = new daum.maps.InfoWindow({
                                position : iwPosition,
                                content : iwContent
                            });

                            // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                            infowindow.open(map, marker);
                        </script>


                        <%--<div id = "divMap" style="border:1px solid #000; width:850px; height:600px; margin:20px;"></div>
                        <script type="text/javascript">
                            var oPoint = new nhn.api.map.LatLng(37.4946008, 127.027694);
                            nhn.api.map.setDefaultPoint('LatLng');
                            oMap = new nhn.api.map.Map('divMap' ,{
                                point : oPoint,
                                zoom : 12,
                                enableWheelZoom : true,
                                enableDragPan : true,
                                enableDblClickZoom : false,
                                mapMode : 0,  // 0 : 일반지도 , 1 : 겹침지도, 2: 위성지도
                                activateTrafficMap : false,
                                activateBicycleMap : false,
                                minMaxLevel : [ 1, 14 ],
                                size : new nhn.api.map.Size(850, 600)
                            });

                            var mapZoom = new nhn.api.map.ZoomControl(); // - 줌 컨트롤 선언
                            mapZoom.setPosition({left:30, bottom:30}); // - 줌 컨트롤 위치 지정
                            oMap.addControl(mapZoom); // - 줌 컨트롤 추가.

                            mapTypeChangeButton = new nhn.api.map.MapTypeBtn(); // - 지도 타입 버튼 선언
                            mapTypeChangeButton.setPosition({top:10, left:50}); // - 지도 타입 버튼 위치 지정
                            oMap.addControl(mapTypeChangeButton);

                            // 마커 아이콘(안보이는 상태로 맵에 추가해 놓기)
                            var oSize = new nhn.api.map.Size(28, 37);
                            var oOffset = new nhn.api.map.Size(14, 37);
                            var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);

                            //var oLabel = new nhn.api.map.MarkerLabel(); // - 마커 라벨 선언.
                            //oMap.addOverlay(oLabel); // - 마커 라벨 지도에 추가. 기본은 라벨이 보이지 않는 상태로 추가됨

                            // 마커 직접추가
                            var oMarker = new nhn.api.map.Marker(oIcon, { title : '비트교육센터' });
                            oMarker.setPoint(oMap.getCenter());
                            oMap.addOverlay(oMarker);

                            oLabel = new nhn.api.map.MarkerLabel();
                            oMap.addOverlay(oLabel);
                            oLabel.setVisible(true, oMarker);

                        </script>--%>

                    </div>

                    <div class="con_wrap1709 mar_t20">
                        <div class="divTable">
                            <table>
                                <caption>비트교육센터(본관) 주소, 전화, 팩스</caption>
                                <colgroup>
                                    <col style="width:30%">
                                    <col style="width:70%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="col" colspan="2">비트교육센터(본관)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="darker c" scope="row">주 소</td>
                                    <td>서울특별시 서초구 서초대로74길33 비트빌 3층</td>
                                </tr>
                                <tr>
                                    <td class="darker c" scope="row">전 화</td>
                                    <td>02-3486-3456</td>
                                </tr>
                                <tr>
                                    <td class="darker c" scope="row">팩 스</td>
                                    <td>02-3486-7890</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="con_wrap1709 mar_t20">
                        <div class="divTable">
                            <table>
                                <caption>비트컴퓨터 주소, 전화, 팩스</caption>
                                <colgroup>
                                    <col style="width:30%">
                                    <col style="width:70%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="col" colspan="2">비트컴퓨터</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="darker c" scope="row">주 소</td>
                                    <td>서울특별시 서초구 서초대로74길33 비트빌</td>
                                </tr>
                                <tr>
                                    <td class="darker c" scope="row">전 화</td>
                                    <td>02-3486-1234</td>
                                </tr>
                                <tr>
                                    <td class="darker c" scope="row">팩 스</td>
                                    <td>02-3486-5555</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="con_wrap1709 bg_none mar_t20">
                        <div class="divTable">
                            <table>
                                <caption>교통편안내</caption>
                                <colgroup>
                                    <col style="width:30%">
                                    <col style="width:70%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="col" colspan="2">교통편안내</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="darker c" scope="col">전철</td>
                                    <td>지하철 2호선/신분당선 강남역 5번 출구 도보 3분</td>
                                </tr>
                                <tr>
                                    <td class="darker c" scope="col">버스</td>
                                    <td>
                                        <ul class="ul_dot_gray">
                                            <li>지선 - 3420, 4424, 5412</li>
                                            <li>간선 - 140, 144, 145, 340, 363, 402, 420, 470, 471</li>
                                            <li>광역 - 1550, 9100, 9200, 9300, 9400, 9404, 9408, 9409, 9410, 9411, 9412, 9503, 9700</li>
                                        </ul>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
        <!-- Content_Wrap -->
    </div>
    <!-- Container_Wrap -->

    <!-- Footer_Wrap -->
    <!-- #include virtual = "/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>

</html>