<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
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
	<script src="DetailPage/Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			<c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			<c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			$(".conCntDynamic").on("mouseenter", function() {
						//$(this).css("opacity", "0.8");
						//$(this).css("border", "1px solid #2f2fff");
						//$(this).animate({'borderWidth':'1px', 'borderColor':'#2f2fff', 'opacity':"1.0"},500);
						//$(this).css("background-color","#ffffff");
						//$(this).stop(true,true).animate({'backgroundColor':'#ffffea','borderColor':'#1f1fff'},400);
						//$(".roadmapBox").animate({'opacity':opacityLow},1800,'easeInOutCubic',function() { });
				$(this).stop(true,true).animate({'backgroundColor':'#fffffc',"borderColor":"#2f2fff"},400,'easeOutElastic');
				$(this).css("cursor","pointer");
				$(this).css("box-shadow","0px 0px 5px #7f7fff")
			}).on("mouseleave", function() {
						//$(this).css("border", "1px solid #d1d1d1");
						//$(this).css("background-color","#fafafa");
				$(this).stop(true,true).animate({'borderColor':'#d1d1d1','backgroundColor':'#ffffff'},1000,'easeOutElastic');
				$(this).css("box-shadow","none");
			}).on("click", function() {
				if(typeof $(this).attr("h_ref") != 'undefined') location.href = $(this).attr("h_ref"); 
			});
			
		
			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1").addClass("on").css('display','block');	// C Master SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(0) a").addClass("on");				// 주중반 ON
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(1) a").addClass("on");				// 주말반 ON
		});
	</script>
	
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('${pageContext.request.contextPath}/assets/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	
	.width4 { width:230px; padding:0 5px; }

	#SNB_Wrap_1702 {
		width:195px !important;
	}
</style>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseShortCore_1709.jsp"/>
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					
					<style>
						.listBox { 
							float:left;
							font-size:12pt;
						}
						.listBox.first {
							margin-right:30px; 
						}
						.listBox p.courseType {
							color:#b6bab;
							font-size:20pt;
							text-shadow:1px 1px 3px #d7d7d7;
							font-family:'Nanum Gothic Bold';
						}
						.conCntDynamic { 
							border:1px solid #949494;
							width: 230px; 
						}
						.courseName {
							font-size:17pt;
							font-weight:600;
						}
						.textLarge {
							font-size:14pt;
							font-weight:600;
						}
						
						.separateLine {
							background:url("${pageContext.request.contextPath}/assets/Images/Common/ico_dotted_gray.png") 0 bottom repeat-x;
						}
					</style>
					<div style="margin:30px auto;">
						<div style="margin:35px 65px;">
							<div class="listBox first"> <!-- style="width:226px; padding:0 10px;">--> <!-- 268 -> 228 -> 211/ padding:0 10px;-->
								<p class="courseType">주중반</p><br/>
								<div class="conCnt conCntDynamic" style="min-height:145px; padding:30px 15px; " h_ref="/Course/ShortCourse/DetailPage/Course_c.asp">
									<p class="courseName" style="height:30px; line-height:15px;">
										<span style="letter-spacing:-0.5pt;"><span style="font-size:26pt; text-shadow:1px 1px 1px #cfcfcf; font-weight:700;">C</span> Master </span>
									</p>
									<br/>

									<p class="textLarge">교육기간</p>
									<p>1개월 (20일/월요일~금요일)</p>
									<br/>

									<p class="textLarge">강의시간</p>
									<p>19:00 ~ 22:00 (3시간/총60시간)</p>
									<br/>

									<p class="textLarge">※ 참고서적 제공</p>
									
								</div>
							</div>

							<div class="listBox">
								<p class="courseType">주말반</p><br/>
								<div class="conCnt conCntDynamic" style="min-height:145px; padding:30px 15px; " h_ref="/Course/ShortCourse/DetailPage/Course_c_weekend.asp">
									<p class="courseName" style="height:30px; line-height:15px;">
										<span style="letter-spacing:-0.5pt;"><span style="font-size:26pt; text-shadow:1px 1px 1px #cfcfcf; font-weight:700;">C</span> Master </span>
									</p>
									<br/>

									<p class="textLarge">교육기간</p>
									<p>1개월 (8일/토요일, 일요일)</p>
									<br/>

									<p class="textLarge">강의시간</p>
									<p>13:00 ~ 18:00 (5시간/총40시간)</p>
									<br/>

									<p class="textLarge">※ 참고서적 제공</p>
									
								</div>
							</div>

							<div style="clear:both;"></div>
						</div>
						
						<div class="separateLine" style="height:10px;"></div>
						<br/>
						
						<div class="con_wrap1709">
							<!-- 자격증과정 소개 -->
							<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1709.asp"-->
							<c:import url="/WEB-INF/views/course/shortcourse/detailpage/Common_IntroducingBCCPM1709.jsp"/>
							<!-- /자격증과정 소개 -->
						</div>
					</div>
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