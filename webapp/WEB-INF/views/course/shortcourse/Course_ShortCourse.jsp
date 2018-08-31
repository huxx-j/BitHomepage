<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
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
			<c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			<c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
			/*
			$(".myConList").on("mouseenter", function() {
				//$(this).stop(true,true).animate({'backgroundColor':'#ffffea',"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).stop(true,true).animate({"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).css("cursor","pointer");
				$(this).css("box-shadow","0px 0px 5px #7f7fff")
			}).on("mouseleave", function() {
				$(this).stop(true,true).animate({'borderColor':'#d1d1d1'},1000,'easeOutElastic');
				$(this).css("box-shadow","none");
			}).on("click", function() {
				if(typeof $(this).attr("h_ref") != 'undefined') location.href = $(this).attr("h_ref"); 
			});
			*/
			
			// slots handlers
			$("#Content .slot").on("click", function() {
				//var cn = $(this).find("p").eq(0).text();
				//alert("과정 선택 : " + cn);
				var href = $(this).attr("href");
				if(href!=undefined)  location.href = href;
				
			});
			
			// insideSlots handlers
			$(".insideSlot").on("mouseenter", function() {
				//$(this).css("opacity",1);
				$(this).stop(true,true).animate({"opacity":1},400,'easeOutElastic');
			}).on("mouseleave", function() {
				//$(this).css("opacity",0);
				$(this).stop(true,true).animate({"opacity":0},200);
			});

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
		});
		
		// 단기프로그래밍_과정 선택시 캠퍼스 선택지가 보이도록.(selectCampus)
		function toggleCampusInfo(numCampus) {
			var str="";
			if(numCampus==1) {		// C프로그래밍
				str 	= "<a href='/course/shortcourse/detailPage/Course_C'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/course/localCampus/DetailPage/Daejeon_c'><div><span class='campusName'>[대전]</span> 대전캠퍼스</div></a>" +
					"<a href='/course/localCampus/DetailPage/Busan_c'><div><span class='campusName'>[부산]</span> 부산캠퍼스</div></a>";
			}
			else if(numCampus==2) {		// Java프로그래밍
				str 	= "<a href='/course/shortcourse/detailPage/Course_Java'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/course/localCampus/DetailPage/Daejeon_java'><div><span class='campusName'>[대전]</span> 대전캠퍼스</div></a>" +
					"<a href='/course/localCampus/DetailPage/Busan_java'><div><span class='campusName'>[부산]</span> 부산캠퍼스</div></a>";
			}
			else if(numCampus==3) {		// C++프로그래밍
				str 	= "<a href='/course/shortcourse/detailPage/Course_cPlus'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/course/localCampus/DetailPage/Daejeon_cPlus'><div><span class='campusName'>[대전]</span> 대전캠퍼스</div></a>";
			}
			else if(numCampus==4) {		// 자료구조/알고리즘
				str 	= "<a href='/course/shortcourse/detailPage/Course_c2'><div><span class='campusName'>[서울]</span> 비트교육센터</div></a>" +
					"<a href='/course/localCampus/DetailPage/Busan_c2'><div><span class='campusName'>[부산]</span> 부산캠퍼스</div></a>";
			}			
			if( $("div#selectCampus"+numCampus).html().length>0 )
				$("div#selectCampus"+numCampus).html("");
			else {
				$("div#selectCampus"+numCampus).html(str);
				$("div#selectCampus"+numCampus).attr("id","");
			}
		}

	</script>
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
	<style>
		#Content div.slot, #Content div.slot .insideSlot {
			float:left;
			width:234px;
			height:250px;
			margin-bottom:5px;
			position:relative;
			cursor:pointer;
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
			margin-left:4px;
		}
		#Content div.slot.first {
			margin-left:0px;
		}
		
		.slotIcon {
			display:none;
			position:absolute;
			right:0;
			top:0;
			z-index:2;
		}
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseShortCore_1709.jsp"/>
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>단기 핵심과정
						</p>
						<h4 style="float:left;">단기 핵심과정</h4>
						<div style="clear:both;"></div>
					</div>
					
					<div class="slot " style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_Python프로그래밍.png')" href="/course/shortcourse/detailPage/Course_Python">
						<p class="courseName dnone">Python 프로그래밍</p>
						<p class="courseDescription dnone">프로그래밍 입문자도 쉽게 공부할 수 있는, 세상에서 가장 쉬운 언어</p>
						<div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
					</div>
					<div class="slot " style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_C프로그래밍.png')" href="javascript:toggleCampusInfo(1);">
						<p class="courseName dnone">C 프로그래밍</p>
						<p class="courseDescription dnone">모든 프로그래밍 언어 중 가장 기본이며 많은 개발자들이 선호하는 언어</p>
						<div class="insideSlot withSelectCampus" style="top:0; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">
							<div class="selectCampus" id="selectCampus1"></div>
						</div>
					</div>
					<div class="slot " style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_DataStructure.png')" href="javascript:toggleCampusInfo(4);">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png" style="display:none;"/> --%>
						<p class="courseName dnone">자료구조/알고리즘</p>
						<p class="courseDescription dnone">주어진 문제를 해결해가는 일련의 과정을 배우는 알고리즘과 그의 일부를 이루는 자료구조</p>
						<div class="insideSlot withSelectCampus" style="top:0; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">
							<div class="selectCampus" id="selectCampus4"></div>
						</div>
					</div>
					
					<div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_JAVA프로그래밍.png')" href="javascript:toggleCampusInfo(2);">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__hot.png"/> --%>
						<p class="courseName dnone">JAVA 프로그래밍</p>
						<!--<p class="courseDescription dnone">자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하는 과정으로 JAVA의 기본 문법을 탄탄히 다질 수 있는 기초 과정</p>-->
						<p class="courseDescription dnone">웹개발의 시작이며 대규모 소프트웨어 개발에 많이 사용되는 언어로서 누구나 쉽게 시작할 수 있는 언어</p>
						<div class="insideSlot withSelectCampus" style="top:0; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">
							<div class="selectCampus" id="selectCampus2"></div>
						</div>
					</div>
					<div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기프_Cpp프로그래밍.png')"  href="javascript:toggleCampusInfo(3);">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/> --%>
						<p class="courseName dnone">C++ 프로그래밍</p>
						<!--<p class="courseDescription dnone">C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성</p>-->
						<p class="courseDescription dnone">C언어에서 발전한 언어로서 컴퓨터 하드웨어를 가장 강력하게 제어할 수 있는 언어</p>
						<div class="insideSlot withSelectCampus" style="top:0; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'">
							<div class="selectCampus" id="selectCampus3"></div>
						</div>
					</div>
					<div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_모바일_안드로이드앱개발.png')" href="/course/shortcourse/detailPage/Course_Android">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/> --%>
						<p class="courseName dnone">안드로이드 앱 개발</p>
						<p class="courseDescription dnone">Java 언어를 기반으로 안드로이드에서 구동되는 앱을 개발하는 과정</p>
						<div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
					</div>
					<div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_실용머신러닝Python.png')" href="/course/shortcourse/detailPage/Course_DSCIENCE_PracticalMachineLearningPython">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/> --%>
						<p class="courseName dnone">&nbsp;</p>
						<p class="courseDescription dnone">&nbsp;</p>
						<div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
					</div>
					<div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_R을사용한데이터분석과머신러닝초급.png')" href="/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__new.png"/> --%>
						<p class="courseName up long dnone">R을 사용한 데이터 분석과 머신러닝 (초급)</p>
						<p class="courseDescription dnone">데이터 분석과 머신러닝을 위한 통계 프로그래밍 언어 R을 사용하여 데이터 처리, 시각화, 머신러닝을 배우는 과정</p>
						<div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
					</div>
					<div class="slot" style="background:url('${pageContext.request.contextPath}/assets/Images/Slots/2/MainPage_Slot__단기핵심_퍼블리싱실무.png')" href="/course/shortcourse/detailPage/Course_WebPublishing">
						<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/> --%>
						<p class="courseName dnone">웹퍼블리싱 실무</p>
						<p class="courseDescription dnone">HTML의 기초부터 실무예제를 체계적인 학습을 통해 모바일, 데스크탑 웹 서비스를 제작할 수 있도록 하는 과정</p>
						<div class="insideSlot" style="background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
					</div>

					<div style="clear:both;"></div>

					
					
				</div>
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