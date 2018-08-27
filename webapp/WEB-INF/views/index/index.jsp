<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
    <title>비트교육센터</title>
    <meta name="description" content="입학이 긍지가 되고 수료가 날개가 되는 상위 1% 전문가 양성을 위한 교육, 비트교육센터"></meta>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
     <!--[if lt IE 9]>
        <script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!--[if lt IE 9]>
        <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
        <![endif]-->
    <script src="${pageContext.request.contextPath}/assets/JS/jquery-1.10.2.js"></script>
    <script src="${pageContext.request.contextPath}/assets/JS/jquery-ui-1.10.3.custom.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="${pageContext.request.contextPath}/assets/JS/jquery.bpopup.min.js"></script>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/JS/main/gallerot.css"/>
        <script src="${pageContext.request.contextPath}/assets/JS/main/jquery.gallerot.js"></script>

        <!-- bxSlider Javascript file -->
        <script src="${pageContext.request.contextPath}/assets/M/CSS_JS/jquery.bxslider.js"></script>
        <!-- bxSlider CSS file -->
        <link href="${pageContext.request.contextPath}/assets/M/CSS_JS/jquery.bxslider.css" rel="stylesheet" />

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>

    <script>
        // wideBanner 관련 변수(2개) 재정의
        var NUM_OF_WIDEBANNERS = 5;	// 와이드배너이미지 개수. 					// OVERRIDE
        var arrWidebannerAddr = new Array(
            "/Course/ShortCourse/DetailPage/Course_DSCIENCE_PracticalMachineLearningPython.asp",
            "/Course/Kukka/Course_Kukka_RaspberryPiIoTService_2018.asp",
            "",
            "/Course/BITsupporters_2018.asp",
            "/Center/Center_info.asp"
        );																			// OVERRIDE
        var arrWidebannerBgColor = new Array("#083860", "#003030", "#004986", "#2c2d2c", "#4c4c4c");					// OVERRIDE   "#1d3660",

        $(document).ready(function() {
            <!-- #include virtual="/Include/HeaderScriptReady1709.inc" -->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

            ///////////////////////////////////////////////////////////
            // From HERE : MAINPAGE :: WideBanner Handlers
            $("#mainWideBanner img").on("mouseenter", function() {
                clearTimeout(timerWidebanner);
            }).on("mouseleave", function() {
                var index = $("#mainWideBanner img").index(this);
                for(var i=0; i<=NUM_OF_WIDEBANNERS-1; i++) {
                    //var str = ( $(".wideBannerBtn:eq("+i+")").attr("src") );
                    //if(str.substring(str.length-6) == "on.png") {
                    //	index = i;
                    //}
                }
                clearTimeout(timerWidebanner);
                setTimerWidebanner(index);
            });

            // MAINPAGE :: widebanner image handler
            $("#mainWideBanner img").on("click", function() {
                var index = $("#mainWideBanner img").index(this) ;
                //alert(index);
                if($(this).attr("href")!=undefined) location.href = arrWidebannerAddr[index];
            });

            // MAINPAGE :: wideBanner's Navigator handlers
            $("#mainWideBanner .navigatorWideBanner").on("mouseenter", function() {
                var index = $(".navigatorWideBanner").index(this);
                //alert("내비게이터#"+index);

                wideBannerHandler(index, false);
                clearTimeout(timerWidebanner);
                fillNavigator(index);
            }).on("mouseleave", function() {
                var index = $(".navigatorWideBanner").index(this);
                clearTimeout(timerWidebanner);
                setTimerWidebanner(index);
            });
            // UNTIL HERE : MAINPAGE :: WideBanner Handlers.
            ////////////////////////////////////////////////////////////

            // MAINPAGE :: submenu(1~9) handlers
            $(".submenu").on("mouseenter",function() {
                var index = $(".submenu").index(this);
                $(this).attr("src", "${pageContext.request.contextPath}/assets/Images/Menus/submenu"+(index+1)+"on.png");
            }).on("mouseleave",function() {
                var index = $(".submenu").index(this);
                $(this).attr("src", "${pageContext.request.contextPath}/assets/Images/Menus/submenu"+(index+1)+"off.png");
            }).on("click", function() {
                var index = $(".submenu").index(this);
                //alert("서브메뉴"+(index+1)+"번 선택");
                if($(this).attr("h_ref")!=undefined) location.href=$(this).attr("h_ref");
                /*
                if(index==0) { alert("비트교육센터 소개"); }
                else if(index==1) alert("청년실업해소펀드 안내");
                else if(index==2) alert("고용보험(재직자) 환급안내");
                else if(index==3) alert("자격증 및 확인서 신청");
                else if(index==4) alert("강의실 임대문의");
                else if(index==5) alert("비트교육센터 강사모집");
                else if(index==6) alert("자주묻는 질문");
                else if(index==7) alert("Q&A");
                else if(index==8) alert("찾아오시는 길");
                */
            });

            // MAINPAGE :: slots handlers
            $("#Content .slot").on("click", function() {
                //var cn = $(this).find("p").eq(0).text();
                //alert("과정 선택 : " + cn);
                var href = $(this).attr("href");
                if(href!=undefined)  location.href = href;

            });

            // MAINPAGE :: insideSlots handlers
            $(".insideSlot").on("mouseenter", function() {
                //$(this).css("opacity",1);
                $(this).stop(true,true).animate({"opacity":1},400,'easeOutElastic');
            }).on("mouseleave", function() {
                //$(this).css("opacity",0);
                $(this).stop(true,true).animate({"opacity":0},200);
            });

            // MAINPAGE :: slide effect for SLOT "C P / 자료구조" --> 삭제(2018-04-17-YG)
            /*
            bxslider1 = $('.bxslider').bxSlider({
                auto: true,
                speed: 500,
                controls: false,
                pager: false
            });
            */

            // MAINPAGE :: WideBanner transition timer 시작! index 매개변수 = 0부터 시작.
            if(NUM_OF_WIDEBANNERS>1) setTimerWidebanner(0);
            wideBannerHandler(0, false);

        });  // the end of the $document.ready.

        function setCookie(cookieName, value, exdays){
            var exdate = new Date();
            exdate.setDate(exdate.getDate() + exdays);
            var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
            document.cookie = cookieName + "=" + cookieValue;
        }

        function deleteCookie(cookieName){
            var expireDate = new Date();
            expireDate.setDate(expireDate.getDate() - 1);
            document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
        }

        function getCookie(cookieName) {
            cookieName = cookieName + '=';
            var cookieData = document.cookie;
            var start = cookieData.indexOf(cookieName);
            var cookieValue = '';
            if(start != -1){
                start += cookieName.length;
                var end = cookieData.indexOf(';', start);
                if(end == -1)end = cookieData.length;
                cookieValue = cookieData.substring(start, end);
            }
            return unescape(cookieValue);
        }

    </script>

    <style>
        /*
        포지션 (position)의 속성이 absolute 일 경우에는 두가지 형태로 나뉘게 됩니다.
        absolute 된 엘리먼트의 상위 엘리먼트의 속성이 relative 인것과 아닌것으로 나뉩니다.
        아닐 경우에는, 브라우져 (body) 를 기준으로 절대적인 위치를 가지게 되고,
        상위 엘리먼트의 속성이 relative 일 경우에는 상위 엘리먼트를 기준으로 절대적인 위치로 이동합니다.
        */
        body {
            margin-top:0;
            margin-bottom:0;
            margin-left:0;
            margin-right:0;
            font-family:'SandolGothicNeo2';
            font-weight:500;
        }
        #Container_Wrap {
            min-height:2000px;
        }
        #mainTopBar {
            min-width:960px;
        }

        #mainTopMenuBar img, #mainSubMenu img, #Content_Wrap img.slot {
            left:85px;
        }

        #Content {
            margin-top:24px;
        }
        #Content_Wrap {
            margin-bottom:15px;
        }
        #Content div.slot, #Content div.slot .insideSlot {
            float:left;
            width:234px;
            height:250px;
            position:relative;
            cursor:pointer;
        }
        #Content div.slot.extended, div.slot.extended .insideSlot {
            height:280px !important;
        }
        #Content div.slot .insideSlot {
            z-index:3;
        }
        #Content div.slot .insideSlot.withSelectCampus {
            top:-261px;
        }
        /*
        #Content div.slot:not(.first) {
            margin-left:10px;
        }
        */
        #Content div.slot {
            margin-left:8px;
        }
        #Content div.slot.first {
            margin-left:0px;
        }

        .slotIcon {
            position:absolute;
            right:0;
            top:0;
            z-index:2;
        }
        p.courseName {
            position:absolute;
            left:13px;
            top:-3px;
            letter-spacing:-1px;
            color:#373737;
            font-size:20px;
            font-family:'SandolGothicNeo2';
            font-weight:600;
        } /* letter-spacing:-1px; */
        p.courseName.long {
            letter-spacing:-1.5px;
        }
        p.courseDescription {
            position:absolute;
            left:13px;
            top:32px;
            width:204px;
            color:#878787;
            font-size:13px;
            letter-spacing:-1px;
            font-weight:300;
            line-height:19px;
            word-break:keep-all;
        } /* letter-spacing:-1.1px; color:#706f6f*/
        p.courseDescription.under2line {
            top:53px;
        }

        .slotIcon {
            DISPLAY:NONE;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/CSS/Base2017Webfont.css"/>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>

</head>
<body>
<div id="Wrapper">
    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp" -->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->

    <div style="width:100%; background-color:#4c4c4c; height:345px;">

        <!-- WideBanner -->
        <div id="mainWideBanner" style="width:960px; margin:0 auto;">
            <!--<div style="height:345px; position:relative;">-->
            <img src="${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__PythonMachineLearning.png" href="" style="position:absolute;"/>
            <img src="${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__IoTJavaWebMobile.png" href="" style="position:absolute; opacity:0:0;"/>
            <img src="${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__SWETI.png" href="" style="position:absolute; opacity:0:0;"/>
            <img src="${pageContext.request.contextPath}/assets/Images/Banners/MainPage_Banner__BITsupporters.jpg" href="" style="position:absolute; opacity:0.0; "/>
            <img src="${pageContext.request.contextPath}/assets/Images/Banners/widebanner_Bitacademy.png" href="" style="position:absolute; opacity:0.0; "/>

            <!-- TODO : to put these circles programmably -->
            <!-- TODO : to reactivate mouseleave event handler -->
            <img class="navigatorWideBanner" src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_Filled.png" style="position:relative; height:11px; left:840px; top:20px; z-index:10;"/>
            <img class="navigatorWideBanner" src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_NotFilled.png" style="position:relative; height:11px; left:850px; top:20px; z-index:10;"/>
            <img class="navigatorWideBanner" src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_NotFilled.png" style="position:relative; height:11px; left:860px; top:20px; z-index:10;"/>
            <img class="navigatorWideBanner" src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_NotFilled.png" style="position:relative; height:11px; left:870px; top:20px; z-index:10;"/>
            <img class="navigatorWideBanner" src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Navigator_NotFilled.png" style="position:relative; height:11px; left:880px; top:20px; z-index:10;"/>
        </div>
    </div>


    <div style="width:100%; background-color:#e7ecf3;">
        <!-- mainSubMenu -->
        <div id="mainSubMenu" style="width:960px; margin:0 auto;">
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu1off.png" h_ref="/center/Center_info"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu2off.png" h_ref="/support/Support_fund"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu3off.png" h_ref="/course/shortcourse/refundInfo_01"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu4off.png" h_ref="/support/Support_certification"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu5off.png" h_ref="/support/Support_etcRent"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu6off.png" h_ref="/support/Support_instructor"/>
            <!--<img class="submenu" src="Images/Menus/submenu7off.png" h_ref="/Support/Support_labor_favor.asp"/>-->
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu7off.png" h_ref="javascript:alert('준비중입니다. Q&A 게시판에 문의 주세요. 문의(02-3486-3456)');"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu8off.png" h_ref="/support/Support_online_list"/>
            <img class="submenu" src="${pageContext.request.contextPath}/assets/Images/Menus/submenu9off.png" h_ref="/center/location"/>
            <div style="clear:both;"></div>
        </div>
    </div>

    <!--<div id="Container_Wrap" style="min-height:1100px;">-->
    <div id="Container_Wrap" style="min-height:880px;">
        <!-- 강의평가 -->
        <section class="section">
                <%--<%--%>
					<%--bOpenSectionLessonEvaluation = false--%>

					<%--if StudId = "" OR isEmpty(StudId) OR isNULL(StudId) then--%>
						<%--' do nothing--%>
					<%--else--%>

						<%--' StudId 로부터 LoginID를 가져온다.--%>
						<%--sql = ""--%>
						<%--sql = "Select top 1 LoginID from db_bit.dbo.Member where StudID = " & StudId--%>
						<%--Set Rs = Dbcon.Execute(sql)--%>
						<%--LoginID = Rs("LoginID")--%>



						<%--'response.write("<h5>"+LoginID+"</h5>")--%>

						<%--sql = "SELECT * FROM db_bit.dbo.Lesson_Evaluation_Ongoing_Member WHERE LoginID='" + LoginID + "' AND Status<>'close'"--%>

						<%--Set Rs = Dbcon.Execute(sql)--%>

						<%--do while Rs.eof = false--%>

							<%--'StudID = Rs("StudID")--%>
							<%--SubjectID = Rs("SubjectID")--%>
							<%--Status = Rs("Status") 	' Status : open -> formFilled -> close--%>

							<%--'이제 SubjectID로 강의평가 입력기간인지 결과조회기간인지 판단한다--%>
							<%--sql2 = "SELECT * FROM db_bit.dbo.Lesson_Evaluation_Subject WHERE SubjectID='"+SubjectID+"'"--%>

							<%--Set Rs2 = Dbcon.Execute(sql2)--%>

							<%--if Rs2.eof or Rs2.bof then--%>

							<%--else--%>
								<%--InputStartDate = Rs2("InputStartDate")--%>
								<%--InputEndDate = Rs2("InputEndDate")--%>
								<%--ResultStartDate = Rs2("ResultStartDate")--%>
								<%--ResultEndDate = Rs2("ResultEndDate")--%>
								<%--SubjectName = Rs2("SubjectName")--%>
								<%--TeacherName = Rs2("TeacherName")--%>

								<%--IF DateDiff("y",InputStartDate,Date)>=0 AND DateDiff("y",Date,InputEndDate)>=0 AND Status="open" THEN			'강의평가입력기간임--%>
									<%--IF bOpenSectionLessonEvaluation=false THEN 	'Section이 안 열렸다면, 먼저 Section을 열어줘야해.--%>
										<%--response.write("<div style='border:1px solid #a9a9a9;'> ")--%>
											<%--'response.write("<div class='hgroup'><h5><a href='#'>강의평가 기간입니다</a></h5></div>")--%>
										<%--response.write("<div style='margin:3px 10px;'> ")--%>
										<%--bOpenSectionLessonEvaluation=true--%>
									<%--END IF--%>

									<%--Session("LoginID") = LoginID	'// added on 2016-11-18-YG.--%>
									<%--Session("StudID") = StudId		'// added on 2016-11-18-YG.--%>

									<%--response.write("<div style='padding:10px 5px; '><b>")--%>
									<%--response.write("<div class='fl' style='width:166px;'><a href='#' onclick='openPopupInputFormLessonEvaluation(""" & SubjectID & """); return false;' style='text-decoration:none; color:#0c3f8c; text-shadow:1px 1px 3px #c9c9c9;'>강의평가 진행중</a></div>")--%>
									<%--response.write("<div class='fl' style='width:700px;'><a href='#' onclick='openPopupInputFormLessonEvaluation(""" & SubjectID & """); return false;' style='text-decoration:none;'><span style='color:black; font-size:16px; letter-spacing:-1px;'>&nbsp;&nbsp;<span style='color:gray; font-size:9pt; letter-spacing:0px;'>(" & InputStartDate & "~" & InputEndDate & ")</span> " & SubjectName & " <span style='color:green;'>(" & TeacherName & " 강사님)</span></span></a></div>")--%>
									<%--response.write("<div style='clear:both;'")--%>
									<%--response.write("</b></div></div>")--%>
								<%--END IF--%>

							<%--end if--%>

							<%--Rs2.close--%>
							<%--Rs.moveNext--%>
						<%--loop--%>

						<%--Rs.close--%>
						<%--Set Rs = nothing--%>
					<%--end if--%>

					<%--IF bOpenSectionLessonEvaluation=true THEN	'Section이 열려있다면, 닫아줘야해.--%>
						<%--response.write("</div></section>")--%>
					<%--END IF--%>
				<%--%>--%>
            <!-- // UNTIL HERE : 강의평가 -->

            <!-- FROM HERE : 프로젝트지도 평가 -->
            <!-- 프로젝트지도 평가 -->
            <section class="section">
                    <%--<%--%>
					<%--bOpenSectionLessonEvaluation = false--%>

					<%--if StudId = "" OR isEmpty(StudId) OR isNULL(StudId) then--%>
						<%--' do nothing--%>
					<%--else--%>

						<%--' StudId 로부터 LoginID를 가져온다.--%>
						<%--sql = ""--%>
						<%--sql = "Select top 1 LoginID from db_bit.dbo.Member where StudID = " & StudId--%>

						<%--Set Rs = Dbcon.Execute(sql)--%>
						<%--LoginID = Rs("LoginID")--%>

						<%--sql = "SELECT * FROM db_bit.dbo.LessonProj_Evaluation_Ongoing_Member WHERE LoginID='" + LoginID + "' AND Status<>'close'"--%>

						<%--Set Rs = Dbcon.Execute(sql)--%>

						<%--do while Rs.eof = false--%>

							<%--ProjectID = Rs("ProjectID")--%>
							<%--Status = Rs("Status") 	' Status : open -> formFilled or close--%>

							<%--'//ProjectID로 강의평가 입력기간인지 결과조회기간인지 판단한다--%>
							<%--sql2 = "SELECT * FROM db_bit.dbo.LessonProj_Evaluation_Subject WHERE ProjectID='"+ProjectID+"'"--%>

							<%--Set Rs2 = Dbcon.Execute(sql2)--%>

							<%--if Rs2.eof or Rs2.bof then--%>

							<%--else--%>
								<%--InputStartDate = Rs2("InputStartDate")--%>
								<%--InputEndDate = Rs2("InputEndDate")--%>
								<%--CourseName = Rs2("CourseName")--%>
								<%--TeacherName = Rs2("TeacherName")--%>

								<%--IF DateDiff("y",InputStartDate,Date)>=0 AND DateDiff("y",Date,InputEndDate)>=0 AND Status="open" THEN			'프로젝트지도평가 입력기간임--%>
									<%--IF bOpenSectionLessonEvaluation=false THEN 	'Section이 안 열렸다면, 먼저 Section을 열어줘야해.--%>
										<%--response.write("<div style='margin-top:2px; border:1px solid #a9a9a9;'> ")--%>
										<%--response.write("<div style='margin:10px 15px 10px 15px;'> ")--%>
										<%--bOpenSectionLessonEvaluation=true--%>
									<%--END IF--%>

									<%--Session("LoginID") = LoginID	'// added on 2016-11-18-YG.--%>
									<%--Session("StudID") = StudId		'// added on 2016-11-18-YG.--%>

									<%--response.write("<div style='padding:3px 0px;'><b>")--%>
									<%--response.write("<a href='#' onclick='openPopupInputFormLessonProjEvaluation(""" & ProjectID & """); return false;' style='text-decoration:none; color:#0c3f8c; text-shadow:1px 1px 3px #c9c9c9;'>프로젝트지도평가 진행중</a>")--%>
									<%--response.write("<a href='#' onclick='openPopupInputFormLessonProjEvaluation(""" & ProjectID & """); return false;' style='text-decoration:none;'><span style='color:black; font-size:16px; letter-spacing:-1px;'>&nbsp;&nbsp;<span style='color:gray; font-size:9pt; letter-spacing:0px;'>(" & InputStartDate & "~" & InputEndDate & ")</span> " & CourseName & " <span style='color:green;'>(" & TeacherName & " 강사님)</span></span></a>")--%>
									<%--response.write("</b></div></div>")--%>
								<%--END IF--%>

							<%--end if--%>

							<%--Rs2.close--%>
							<%--Rs.moveNext--%>
						<%--loop--%>

						<%--Rs.close--%>
						<%--Set Rs = nothing--%>
					<%--end if--%>

					<%--IF bOpenSectionLessonEvaluation=true THEN	'Section이 열려있다면, 닫아줘야해.--%>
						<%--response.write("</div></section>")--%>
					<%--END IF--%>
				<%--%>--%>
                <!-- //프로젝트지도 평가 -->

                <!-- selectCampus -->
                <style>
                    .selectCampus {
                        font-size:14px;
                        font-family:'SandolGothicNeo2';
                        font-weight:600;
                        border-radius:3px;

                        width:100%;
                        height:60%;
                        margin-top:110px;
                    } /* box-shadow:5px 5px 10px #000; */
                    .selectCampus p {
                        text-align:center;
                        font-size:1.75em;
                        font-weight:900;
                        letter-spacing:-1px;
                        color:#251b7c;
                        text-shadow:1px 1px 3px #c9c9c9;
                    }
                    .selectCampus a {
                        text-decoration:none;
                    }
                    .selectCampus a div {
                        color:#373737;
                        border:1px solid #a9a9a9;
                        background-color:#f9f9f9;
                        padding:10px;
                        width:160px;
                        height:16px;
                        line-height:16px;
                        margin:0 auto;
                        margin-top:8px;
                        opacity:0.95;
                        box-shadow:2px 2px 6px #474747;
                        border-radius:5px;
                    }
                    .campusName {
                        color:#124c98;
                        font-weight:900;
                    } /* 10428e */
                </style>

                <!-- content -->
                <div id="Content_Wrap">
                    <!-- 단기 프로그래밍(now단기핵심과정) -->
                    <div id="Content">
                        <img src="${pageContext.request.contextPath}/assets/Images/Titles/MainPage_Title__단기핵심과정.png" style="float:left;" alt="단기 핵심과정"/>
                        <div style="clear:both;"></div>
                        <!--
                        <img src="Images/Titles/MainPage_Title__단기프로그래밍.png" style="float:left; margin-bottom:-2px;" alt="단기 프로그래밍"/>
                        <div style="clear:both;"></div>
                        -->
                        <style>
                            .dnone { DISPLAY:NONE; }
                        </style>
                        <div class="slot first" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_Python프로그래밍.png')" href="/Course/ShortCourse/DetailPage/Course_Python.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone">Python 프로그래밍</p>
                            <p class="courseDescription dnone">프로그래밍 입문자도 쉽게 공부할 수 있는, 세상에서 가장 쉬운 언어</p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <%--<%--%>
                            <%--'					<!-- SLIDER ( C <-> 자료구조 ) 삭제(2018-04-17-YG) -->--%>
                            <%--'					<div class="fl" style="margin-left:8px; width:234px; height:250px; overflow:hidden;" > <!-- because of the 2nd position -->--%>
                            <%--'						<ul class="bxslider">--%>
                            <%--'							<li>--%>
                            <%--'								<!--<div class="slot" style="background:url('/Images/Slots/MainPage_Slot__단기프_C프로그래밍.png')" href="/Course/ShortCourse/Courses_c.asp">-->--%>
                            <%--'								<div class="slot first" style="background:url('/Images/Slots/2/MainPage_Slot__단기프_C프로그래밍.png')" href="javascript:toggleCampusInfo(1);">--%>
                            <%--'									<p class="courseName dnone">C 프로그래밍</p>--%>
                            <%--'									<p class="courseDescription dnone">모든 프로그래밍 언어 중 가장 기본이며 많은 개발자들이 선호하는 언어</p>--%>
                            <%--'									<div class="insideSlot withSelectCampus" style="top:0; background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">--%>
                            <%--'										<div class="selectCampus" id="selectCampus1"></div>--%>
                            <%--'									</div>--%>
                            <%--'								</div>--%>
                            <%--'							</li>--%>
                            <%--'							<li>--%>
                            <%--'								<div class="slot first" style="background:url('/Images/Slots/2/MainPage_Slot__단기프_DataStructure.png')" href="javascript:toggleCampusInfo(4);">--%>
                            <%--'									<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png" style="display:none;"/>--%>
                            <%--'									<p class="courseName dnone">자료구조/알고리즘</p>--%>
                            <%--'									<p class="courseDescription dnone">주어진 문제를 해결해가는 일련의 과정을 배우는 알고리즘과 그의 일부를 이루는 자료구조</p>--%>
                            <%--'									<div class="insideSlot withSelectCampus" style="top:0; background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">--%>
                            <%--'										<div class="selectCampus" id="selectCampus4"></div>--%>
                            <%--'									</div>--%>
                            <%--'								</div>--%>
                            <%--'							</li>--%>
                            <%--'						</ul>--%>
                            <%--'					</div>--%>
                            <%--<!-- //SLIDER ( C <-> 자료구조 ) 삭제(2018-04-17-YG) -->--%>
                        <%--%>--%>
                        <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_C프로그래밍.png')" href="/Course/ShortCourse/DetailPage/Course_C.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__hot.png"/>--%>
                            <p class="courseName dnone"></p>
                            <p class="courseDescription dnone"></p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_JAVA프로그래밍.png')" href="javascript:toggleCampusInfo(2);">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__hot.png"/>--%>
                            <p class="courseName dnone">JAVA 프로그래밍</p>
                            <!--<p class="courseDescription dnone">자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하는 과정으로 JAVA의 기본 문법을 탄탄히 다질 수 있는 기초 과정</p>-->
                            <p class="courseDescription dnone">웹개발의 시작이며 대규모 소프트웨어 개발에 많이 사용되는 언어로서 누구나 쉽게 시작할 수 있는 언어</p>
                            <div class="insideSlot withSelectCampus" style="top:0; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">
                                <div class="selectCampus" id="selectCampus2"></div>
                            </div>
                        </div>
                        <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_Cpp프로그래밍.png')"  href="javascript:toggleCampusInfo(3);">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone">C++ 프로그래밍</p>
                            <!--<p class="courseDescription dnone">C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성</p>-->
                            <p class="courseDescription dnone">C언어에서 발전한 언어로서 컴퓨터 하드웨어를 가장 강력하게 제어할 수 있는 언어</p>
                            <div class="insideSlot withSelectCampus" style="top:0; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">
                                <div class="selectCampus" id="selectCampus3"></div>
                            </div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <!--//단기 프로그래밍(now단기핵심과정) -->

                    <!-- 단기 핵심과정 -->
                    <div id="Content">
                        <!--
                                            <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__단기핵심_자바튜닝.png')" href="/Course/ShortCourse/DetailPage/Course_codingTuning.asp">
                                                <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                                <p class="courseName dnone">자바튜닝</p>
                                                <p class="courseDescription dnone">-</p>
                                                <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                                            </div>
                        -->
                        <!-- .extended / _extended.png / _280px.png -->
                        <div class="slot first extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_GoProgramming_Extended.png')" href="/Course/ShortCourse/DetailPage/Course_Go.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone"></p>
                            <p class="courseDescription dnone"></p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_R을_사용한_데이터분석_extended.png')" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone"></p>
                            <p class="courseDescription dnone"></p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_최적화_알고리즘_extended.png')" href="/Course/ShortCourse/DetailPage/Course_OptimizationAlgorithms.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assetsImages/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone"></p>
                            <p class="courseDescription dnone"></p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_AWSCloudWeb_Extended.png')" href="/Course/ShortCourse/DetailPage/Course_AWSCloudWeb2.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assetsImages/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone"></p>
                            <p class="courseDescription dnone"></p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div id="Content">
                        <!--
                        <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__컨소시엄_라즈베리파이.png')" href="/Course/Kukka/Course_Consortium_RaspberryPi_IoT.asp">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                            <p class="courseName dnone">라즈베리파이를 활용한 IoT개발 실무과정</p>
                            <p class="courseDescription dnone">-</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <!-- .extended / _extended.png / _280px.png -->
                        <div class="slot first extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_실용머신러닝Python_extended.png')" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_PracticalMachineLearningPython.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assetsImages/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone">웹퍼블리싱 실무</p>
                            <p class="courseDescription dnone">HTML의 기초부터 실무예제를 체계적인 학습을 통해 모바일, 데스크탑 웹 서비스를 제작할 수 있도록 하는 과정</p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_블록체인_초연결_extended.png')" href="/Course/ShortCourse/DetailPage/Course_Blockchain_HyperConnected.asp">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assetsImages/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone"></p>
                            <p class="courseDescription dnone"></p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <!--
                        <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__단기핵심_Database_DB자격검정대비SQLP.png')" href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLP.asp">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
                            <p class="courseName dnone">DB자격검정대비 SQLP</p>
                            <p class="courseDescription dnone">데이터모델링에 기본 지식을 바탕으로 SQL 작성, 성능 최적화 등 DB 개체 설계 및 구현에 대한 실무 수행 능력 교육</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <!--
                        <div class="slot first" style="background:url('/Images/Slots/2/MainPage_Slot__컨소시엄_AWS.png')" href="/Course/Kukka/Course_Consortium_AWS_Cloud_Web.asp">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                            <p class="courseName dnone">-</p>
                            <p class="courseDescription dnone">-</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <!--
                        <div class="slot " style="background:url('/Images/Slots/2/MainPage_Slot__단기핵심_모바일_안드로이드앱개발.png')" href="/Course/ShortCourse/DetailPage/Course_android.asp">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                            <p class="courseName dnone">안드로이드 앱 개발</p>
                            <p class="courseDescription dnone">Java 언어를 기반으로 안드로이드에서 구동되는 앱을 개발하는 과정</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <!--
                        <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__단기핵심_R을사용한데이터분석과머신러닝초급.png')" href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
                            <p class="courseName up long dnone">R을 사용한 데이터 분석과 머신러닝 (초급)</p>
                            <p class="courseDescription dnone">데이터 분석과 머신러닝을 위한 통계 프로그래밍 언어 R을 사용하여 데이터 처리, 시각화, 머신러닝을 배우는 과정</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <div style="clear:both;"></div>
                    </div>
                    <!--//단기 핵심과정 -->

                    <!-- 국비지원무료과정 / 초중고hidden -->
                    <div id="Content">
                        <div style="float:left;">
                            <!--
                            <img src="Images/Titles/MainPage_Title__국비지원무료과정.png" style="float:left; margin-bottom:2px;" alt="국비지원무료과정"/>
                            -->
                            <img src="${pageContext.request.contextPath}/assets/Images/Titles/MainPage_Title__무료취업과정.png" style="float:left; margin-bottom:2px;" alt="무료취업과정"/>
                            <div style="clear:both;"></div>

                            <!--
                            <div class="slot first" style="background:url('/Images/Slots/MainPage_Slot__국비지원_국가기간.png')" href="/Course/Kukka/Course_Kukka_2017.asp">
                                <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                <p class="courseName">국가기간전략산업직종</p>
                                <p class="courseDescription">국비지원으로 금전적 부담없이 고3처럼 공부하고 6개월 후 취업까지 연계되는 과정</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            -->
                            <!-- .extended / _extended.png / _280px.png -->
                            <div class="slot first extended" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__국비지원_라즈베리파이IoT서비스_extended.png')" href="/Course/Kukka/Course_Kukka_RaspberryPiIoTService_2018.asp">
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__new.png"/>--%>
                                <p class="courseName dnone">&nbsp;</p>
                                <p class="courseDescription dnone">&nbsp;</p>
                                <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            <!--
                            <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_핀테크.png')" href="/Course/Kukka/Course_Kukka_FinTech_2018.asp">
                                <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>
                                <p class="courseName dnone">&nbsp;</p>
                                <p class="courseDescription dnone">&nbsp;</p>
                                <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            -->
                            <%--<%--%>
                                <%--'// 잠시숨김.--%>
                                <%--'<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_AWS클라우드웹개발.png')" href="/Course/Kukka/Course_Kukka_AWSCloudWeb_2018.asp">--%>
                                <%--'	<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__new.png"/>--%>
                                <%--'	<p class="courseName dnone">&nbsp;</p>--%>
                                <%--'	<p class="courseDescription dnone">&nbsp;</p>--%>
                                <%--'	<div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>--%>
                                <%--'</div>--%>
                            <%--%>--%>
                            <!--
                                                    <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__4차산업_핀테크.png')" href="/Course/Industry4.0/Course_Industry40_FinTech_Expert.asp">
                                                        <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                                        <p class="courseName dnone">&nbsp;</p>
                                                        <p class="courseDescription dnone">&nbsp;</p>
                                                        <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                                                    </div>
                            -->
                            <!--
                                                </div>
                                                <div style="float:left;">
                                                    <img src="Images/Titles/MainPage_Title__신입사원채용교육.png" style="float:left; margin-bottom:2px;" alt="신입사원채용교육"/>
                                                    <div style="clear:both;"></div>
                            -->
                            <!-- .extended / _extended.png / _280px.png -->
                            <div class="slot extended" style="background:url('/assets/Images/Slots/2/MainPage_Slot__국비지원_빅데이터_extended.png')" href="/Course/Kukka/Course_Kukka_JavaBigData_2018.asp">
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__new.png"/>--%>
                                <p class="courseName dnone">&nbsp;</p>
                                <p class="courseDescription dnone">&nbsp;</p>
                                <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_280px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__전문가_자바.png')" href="/Course/Expert/Course_Expert_JavaExpert.asp">
                                <%--<img class="slotIcon" src="/${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">자바 전문가과정</p>
                                <p class="courseDescription dnone">Java 언어를 기반으로 프론트엔드와 백엔드를 아우르는 전문가가 되기 위한 과정</p>
                                <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__전문가_임베디드시스템.png')" href="/Course/Expert/Course_Expert_Embedded.asp">
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__hot.png"/>--%>
                                <p class="courseName dnone long">임베디드 시스템 전문가과정</p>
                                <p class="courseDescription dnone">ARM어셈블리, 리눅스커널, 디바이스드라이버 등을 심도 있게 배워 임베디드SW의 전문가가 되기 위한 과정</p>
                                <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            <!--
                            <div class="slot first" style="background:url('/Images/Slots/2/MainPage_Slot__국비지원_임베디드드론.png')" href="/Course/Kukka/Course_Kukka_EmbeddedDrone_2018.asp">
                                <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                <p class="courseName dnone long">_</p>
                                <p class="courseDescription dnone">_</p>
                                <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            -->
                        </div>

                        <div style="float:left; DISPLAY:NONE;">
                            <img src="${pageContext.request.contextPath}/assets/Images/Titles/MainPage_Title__4차산업혁명.png" style="float:left; margin-bottom:2px;" alt="4차산업혁명"/>
                            <div style="clear:both;"></div>


                            <!--<div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__4차산업_IoT자율주행.png')" href="/Course/Industry4.0/Course_Industry40_IoTSelfDriving_Expert.asp">
                                <img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                <p class="courseName dnone">&nbsp;</p>
                                <p class="courseDescription dnone">&nbsp;</p>
                                <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            -->
                            <!--
                            <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__4차산업_빅데이터.png')" href="/Course/Industry4.0/Course_Industry40_BigData_Expert.asp">
                                <img class="slotIcon" src="/Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                <p class="courseName dnone">&nbsp;</p>
                                <p class="courseDescription dnone">&nbsp;</p>
                                <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            -->
                        </div>
                        <div style="float:left; DISPLAY:NONE;">
                            <img src="${pageContext.request.contextPath}/assets/Images/Titles/MainPage_Title__초중고SW교육.png" style="float:left; margin-bottom:2px;" alt="초중고SW교육"/>
                            <div style="clear:both;"></div>

                            <style>
                                .courseName dnone.up { margin-top:8px; }
                            </style>
                            <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__초중고SW교육_라즈베리파이.png')" href="/Course/ShortCourse/DetailPage/Course_RaspberryPi_Audio.asp">
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__new.png"/>--%>
                                <p class="courseName dnone up long">세상과 소통하는<br/>라즈베리파이 오디오 만들기</p>
                                <!--<p class="courseDescription dnone under2line">프로그래밍을 전혀 모르는 청소년들이 인터넷에 연결되는 오디오를 임베디드를 보드를 이용하여 만들어 보는 과정</p>-->
                                <p class="courseDescription dnone">프로그래밍을 전혀 모르는 청소년들이 인터넷에 연결되는 오디오를 임베디드를 보드를 이용하여 만들어 보는 과정</p>
                                <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <!--//국비지원무료과정 / 초중고hidden -->

                    <!-- 국비지원무료과정2 -->
                    <div id="Content">
                        <!--
                        <img src="Images/Titles/MainPage_Title__전문가과정.png" style="float:left; margin-bottom:3px;" alt="전문가과정"/>
                        <div style="clear:both;"></div>
                        -->
                        <!--
                        <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__전문가_윈도우닷넷.png')" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__hot.png"/>
                            <p class="courseName dnone">윈도우 닷넷 전문가과정</p>
                            <p class="courseDescription dnone">닷넷(.NET) 기술을 이용하여 윈도우 환경에 최적화된 어플리케이션을 개발하는 전문가가 되기 위한 과정</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <!--
                        <div class="slot" style="background:url('/Images/Slots/2/MainPage_Slot__전문가_청년실업_해소펀드.png')" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
                            <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                            <p class="courseName dnone" style="color:white;">청년실업 해소펀드</p>
                            <p class="courseDescription dnone">&nbsp;</p>
                            <div class="insideSlot" style="background:url('/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        -->
                        <div style="clear:both;"></div>
                    </div>
                    <!--//국비지원무료과정2 -->


                    <!-- 고급과정 -->
                    <div id="Content" style="display:none;">
                        <img src="${pageContext.request.contextPath}/assets/Images/Titles/MainPage_Title__고급과정.png" style="float:left; margin-bottom:-2px;" alt="고급과정"/>
                        <div style="clear:both;"></div>

                        <div class="slot first" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__고급_Iot.png')" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__hot.png"/>--%>
                            <p class="courseName dnone">IoT 고급과정</p>
                            <p class="courseDescription dnone">폭발적으로 성장하고 있는 사물인터넷(Internet of Things)을 구현하여 나만의 장치를 만들어 보는 과정</p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__고급_임베디드.png')" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__hot.png"/>--%>
                            <p class="courseName dnone long">임베디드 시스템 고급과정</p>
                            <p class="courseDescription dnone">ARM어셈블리, 리눅스커널, 디바이스드라이버 등을 배워 본격적인 임베디드 시스템을 만들어 보는 과정</p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__고급_윈도우닷넷.png')" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                            <p class="courseName dnone long">윈도우 닷넷 고급과정</p>
                            <p class="courseDescription dnone">닷넷(.NET) 플랫폼의 강력한 기술을 이용하여 윈도우에 최적화된 다양한 응용 프로그램을 만들어 보는 과정</p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__고급_빅데이터사이언티스트.png')" href="javascript:alert('준비중입니다. 문의(02-3486-3456)');">
                            <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__new.png"/>--%>
                            <p class="courseName dnone long">빅데이터 사이언티스트 과정</p>
                            <p class="courseDescription dnone">스프링 프레임워크 기반으로 서버를 구축하고 빅데이터를 수집/처리/분석/시각화를 위한 프로그래밍을 배우는 과정 </p>
                            <div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <!--//고급과정-->

                    <!-- 신입사원채용교육Line#1 -->
                    <div id="Content" class="dnone">
                        <div style="float:left;">
                            <img src="${pageContext.request.contextPath}/assets/Images/Titles/MainPage_Title__신입사원채용교육.png" style="float:left; margin-bottom:2px;" alt="신입사원채용교육"/>
                            <div style="clear:both;"></div>

                            <style>
                                .companyLogo { width:70%; }
                                .companyName { font-size:18px; letter-spacing:-1px; font-weight:600; line-height:18px; text-align:center;}
                                .companyDetail { text-align:center; }
                                .divCompanyEmploy { border:1px solid #a9a9a9; height:188px; }

                                .conImg a img { width:90% !important; }
                                .conImg { height:80px; }

                                /* BELOW : for 4 boxes in one row: */
                                .myConList { border:1px solid #d1d1d1; float:left; width:23.7%; height:204px; margin-left:5px; margin-bottom:6px; background-color:#f9f9f9; }
                                .conImg { height:100px; }
                                .companyName { font-size:18px; letter-spacing:-1px; font-weight:600; line-height:18px; }
                                .companyCnt { min-height:60px; letter-spacing:-1.5px; }
                                .divName { height:40px; overflow-y:hidden; }

                                .blueTxt {
                                    color:#1b499b !important;
                                } /* Override */
                            </style>
                            <!--
                            <div class="slot first" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_Douzone.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="/Images/Content/Employ/img_LOGO_Douzone.jpg" style="height:50px; margin-top:16px; margin-left:36px; margin-bottom:-10px;">
                                    <p class="companyName"><span>㈜더존비즈온</span></p>
                                    <p class="companyDetail" style="height:60px;">
                                        <span class="blueTxt">ERP 개발</span><br/><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>
                            -->
                            <div class="slot first" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_ITtelecom.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Company_Logo/img_LOGO_ITtelecom.jpg" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
                                    <p class="companyName"><span>㈜아이티텔레콤</span></p>
                                    <p class="companyDetail" style="height:60px;">
                                        <span class="blueTxt">Embedded S/W, F/W <br/>개발</span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                            <div class="slot " style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_BAinfra.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Company_Logo/img_LOGO_BAinfra.png" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
                                    <p class="companyName"><span>㈜비에이인프라</span></p>
                                    <p class="companyDetail" style="height:60px;">
                                        <span class="blueTxt">백업소프트웨어 연구개발</span><br/><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                            <div class="slot" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_Ivis.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Main/img_logo_05.jpg" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
                                    <p class="companyName"><span>㈜아이비스</span></p>
                                    <p class="companyDetail" style="height:60px;">
                                        <span class="blueTxt">차량용 SW 개발<br/>및 컨설팅</span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                            <div class="slot" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_AurosTech.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_AurosTech.png" style="height:40px; margin-bottom:0px; margin-top:15px; margin-left:35px;">
                                    <p class="companyName"><span>㈜오로스테크놀로지</span></p>
                                    <p class="companyDetail" style="height:82px;">
                                        <span class="blueTxt">반도체 Overlay 장비 SW<br/>개발 업무</span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>


                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <!--//신입사원채용교육Line#1-->

                    <!-- 신입사원채용교육Line#2 -->
                    <div id="Content" class="dnone">
                        <div style="float:left; margin-top:-15px; ">
                            <div class="slot first" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_BizTechPartners.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_BizTechPartners.png" style="height:60px; margin-top:4px; margin-left:34px; margin-bottom:-9px;">
                                    <p class="companyName"><span>㈜비즈테크파트너스</span></p>
                                    <p class="companyDetail" style="height:80px;">
                                        <span class="blueTxt">웹개발 / 모바일 앱 및 서버<br/>개발</span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                            <div class="slot " style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_PSK.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_PSK.png" style="width:40%; margin-top:5px; margin-left:70px; margin-bottom:-8px;">
                                    <p class="companyName"><span>㈜피에스케이</span></p>
                                    <p class="companyDetail" style="height:80px;">
                                        <span class="blueTxt">윈도우 닷넷 개발<br/></span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                            <div class="slot " style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_BitComputer.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Main/img_logo_BITCOM.png" style="margin-top:18px; margin-left:38px; margin-bottom:8px;">
                                    <p class="companyName"><span>㈜비트컴퓨터</span></p>
                                    <p class="companyDetail" style="height:80px;">
                                        <span class="blueTxt">JAVA 솔루션 개발<br/></span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                            <div class="slot" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
                                <div class="divCompanyEmploy">
                                    <img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_TaehaMechatronics.png" style="margin-top:22px; margin-left:33px; margin-bottom:11px;">
                                    <p class="companyName"><span>㈜태하메카트로닉스</span></p>
                                    <p class="companyDetail" style="height:80px;">
                                        <span class="blueTxt">Embedded System 개발<br/></span><br/><br/>
                                        <span style="font-weight:900; color:#ff0000;">모집중</span>
                                    </p>
                                </div>
                                <%--<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>--%>
                                <p class="courseName dnone">-</p>
                                <p class="courseDescription dnone">-</p>
                                <div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
                            </div>

                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <!-- //신입사원채용교육Line#2 -->

                    <!-- 신입사원채용교육Line#3 -->
                    <div id="Content" style="DISPLAY:NONE;">

                    </div>
                    <!-- //신입사원채용교육Line#3 -->
                </div>
    </div>


    <!-- Footer -->
    <!-- #include virtual="/Include/FooterHTML1709.asp" -->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer -->
</div>
</body>
</html>