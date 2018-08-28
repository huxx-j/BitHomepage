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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720.css" >
	<style>
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			/* <!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"--> 
			<c:import url="/WEB-INF/views/course/shortcourse/detailPage/Common_eventHandlers_SNB.jsp"/>*/
			ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp');
			$(".snb_1702 .newdepth1").eq(1).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(1).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");

			var str = location.toString();
			if( str.substr( str.search('go=')+3) == 'interview') {
				// scroll 1165px.
				$('html, body').animate({ scrollTop : 1165 }, 450);	
			}
			
			$('.myBlurAll').on('click', function() {
				$('.myPopup').css('display','none');
				$('.myPopup2').css('display','none');
				$('.myBlurAll').css('display','none');
				$('body').css('overflow','auto');
			});

			$(document).on('click', '#aClose1', function(e) {
				e.preventDefault();
				
				$('.myPopup').css('display','none');
				$('.myPopup2').css('display','none');
				$('.myBlurAll').css('display','none');			
				$('body').css('overflow','auto');
			});
			
			//$('#myBox1').bind('mousewheel', function(e) {
			//	e.stopPropagation();
			//});

		});
		
		function openPopup(strSrc,strArg2) {
			//alert("strSrc : " + strSrc);
			if(strArg2 == '') {
				strStyle = 'width:1500px;';
			} else {
				strStyle = strArg2;
			}
			
			var strInjection = "<div style='margin-left:60px; font-size:13pt; '><a id='aClose1' href='#'>[닫기]</a></div>" 
								+ "<img src='" + strSrc + "' style='" + strStyle + "' />";
			
			$('#myBox1').html(strInjection);
			
			$('.myBlurAll').css('display','block');
			$('#myBox1').css('display','block');
			$('body').css('overflow','hidden');
		}
		
		function showAllCompanies() {
			$(".myCompaniesTop").css('display','none');
			$("#btnShowAllCompanies").hide();
			$("#btnShowTopCompanies").show();
			
			$(".myCompanies").css('opacity','1.0');
			$(".myCompanies").css('display','');
			$(".myCompanies").css('height','10');
			$(".myCompanies").animate({ height: 1799 },1000);
			
		}
		
		function showTopCompanies() {
			$("#btnShowTopCompanies").hide();
			$("#btnShowAllCompanies").show();
			
			//$(".myCompanies").css('height','10');
			$(".myCompanies").animate({ opacity: 0.5 },800);
			$(".myCompanies").animate({ height: 181 },500);			
			setTimeout( function() { 
				$(".myCompanies").css('display','none');
				$(".myCompanies").css('opacity','1.0');
				$(".myCompaniesTop").css('display','');
			}, 300 );
			
		}
		
		function showAllInterviewees() {
			$(".myIntervieweesTop").css('display','none');
			$("#btnShowAllInterviewees").hide();
			$("#btnShowTopInterviewees").show();
			
			$(".myInterviewees").css('opacity','1.0');
			$(".myInterviewees").css('display','');
			//$(".myInterviewees").css('height','790');
			$(".myInterviewees").css('height','50');
			$(".myInterviewees").animate({ height: 790 },1000);
			
		}
		
		function showTopInterviewees() {
			$("#btnShowTopInterviewees").hide();
			$("#btnShowAllInterviewees").show();
			
			//$(".myInterviewees").css('height','10');
			$(".myInterviewees").animate({ opacity: 0.5 },800);
			$(".myInterviewees").animate({ height: 181 },500);			
			setTimeout( function() { 
				$(".myInterviewees").css('display','none');
				$(".myInterviewees").css('opacity','1.0');
				$(".myIntervieweesTop").css('display','');
			}, 300 );
			
		}
		

	</script>
	<style>
		div.myCompanies div {
			width:182px;
			float:left;
			
			animation-timing-function: ease;
		}
		div.myCompaniesTop div {
			width:182px;
			float:left;
		}
		div.myInterviewees div {
			width:182px;
			float:left;
			
			animation-timing-function: ease;
		}
		div.myIntervieweesTop div {
			width:182px;
			float:left;
		}
		
		#btnShowAllCompanies, #btnShowTopCompanies  {
			color: #ffffff;
			background-color: #73ad21;
			box-shadow: 0 1px 1px rgba(0,0,0,0.12),0 1px 1px rgba(0,0,0,0.24);
			border:none;
			
			height:20px; 
			width:60px; 
			font-size:8pt; 
			font-family:'Nanum Gothic Bold';
			border-radius:3px;
		}
		#btnShowAllInterviewees, #btnShowTopInterviewees  {
			color: #ffffff;
			background-color: #73ad21;
			box-shadow: 0 1px 1px rgba(0,0,0,0.12),0 1px 1px rgba(0,0,0,0.24);
			border:none;
			
			height:20px; 
			width:60px; 
			font-size:8pt; 
			font-family:'Nanum Gothic Bold';
			border-radius:3px;
		}
		.myPopup {
			position:fixed; 
			left:10%; 
			top:2%; 
			
			opacity:1; 
			z-index:1000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			/*width:615px; */
			width:80%;
			height:90%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 280px rgba(0,0,0,0.999);
			
			overflow: scroll;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.2;
			z-index:990;
			background-color:#000;
		}

	</style>
							
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<style>
	#SNB_Wrap_1702 { background:#ffffff !important; }
</style>
<body style="background:#ffffff;">
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<div class="banner_wrap">
			<div class="banner">
				<h3 class="pd_tow"><span class="courseName">전문가과정 소개</span></h3>
				<!--<h4>3개월 이론 수업 및 그룹스터디와 이를 바탕으로 한 3개월 동안의 <br>인터십 프로젝트 실무수행을 통해 전문프로그래머 양성.</h4>-->
				<h4 style="margin-top:10px;">프로그램 개발 실무에 필요한 이론과 실무 능력 배양에 필요한 프로젝트를 함께 경험할 수 있는<br/> 프로그래밍 실무 전문 인력 양성 과정</h4>
			</div>
		</div>
		<hr>
		<div id="Container_Wrap">
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>전문가과정 소개</h4>
						<p class="lineMap">
							<a href="http://www.bitacademy.com">홈</a> 
							<a href="/course/expert/Course_Expert">과정안내</a>
							<a href="/course/expert/Course_Expert" class="last on">전문가과정소개</a>
						</p>
					</div>
					<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">문의 : 02-3486-1780</span>
					<section class="section">
						<h5 class="dis_none">전문가과정 소개</h5>
						<div class="con_wrap last">
							<!--
							<div class="conVisual">
								<img src="/Images/Content/Diagram/img_course_diagram_01.png" alt="01. 3개월 이론수업, 02. 그룹스터디, 03. 3개월 프로젝트">
							</div>
							-->
							<!--
							<div class="conInfo">
								까다로운 전형과 조현정 대표이사의 면접을 통해 입학할 수 있는 전문가과정은 3개월 이론 수업 및 그룹스터디와
								이를 바탕으로 한 3개월 동안의 인터십 프로젝트 실무수행을 통해 각 과정의 전문프로그래머 양성을 주요 목표로 한다. 
							</div>
							-->
							<!--
							<div class="con_wrap last">
								<ul>
									<li>1. 비트교육센터가 배출한 <span class="blueTxt fb">"전문가과정"</span> 출신인 경우 협약 기업에 한해 채용 가산점 부여.</li>
									<li>2. 재직자 교육과정 수강 시 정부지원금 외 개인부담금 무료.</li>
									<li>3. 평생 취업보장.</li>
									<li>4. 비트학파 입단증 취득.</li>
									<li>5. 비트SW프로젝트 자격증 취득.</li>
								</ul>
							</div>
							-->
							
							<div class="con_wrap first">
								<h5>전문가과정 소개</h5>
								<!--<p>비트교육센터 전문가과정은 비트교육센터가 자랑하는 프로그래밍 실무 전문 인력 양성 과정으로 프로그램 개발 실무에 필요한 이론과 실무 능력 배양에 필요한 장기 프로젝트를 함께 경험할 수 있는 장기 교육과정입니다. 프로그래밍 언어 문법을 습득하는 수준을 넘어 자신이 원하는 프로그램을 스스로 구현할 수 있는 방법을 공부하는 데 주안점을 두고 있으며 강도 높은 이론 교육과 체계적인 그룹스터디를 통해 익히게 됩니다.  2016년 1월 현재 약 8천명의 "비트 출신"들이 비트교육센터 전문가과정을 거쳐 현업 개발자로 일하고 있으며  소프트웨어 개발 현장에서 비트 출신 특유의 프로그램 구현 능력을 인정받고 있습니다.</p>-->
								<p>입학이 긍지가되고 수료가 날개가 되는 상위 1% 전문가과정</p>
								<p class="redTxt"><b>전문가과정은 엄하게 선별하고 교육합니다.</b></p>
								<p>C 또는 Java 프로그래밍이 가능해야 하며, 팀 프로젝트 경험이 있는 지원자를 주 대상으로 실력을 테스트 후 ㈜비트컴퓨터 조현정 회장이 직접 면접을 통해 입학이 가능합니다.
								절대평가 기준으로 합격여부가 결정되며, 뚜렷한 목표의식, 일정 수준의 실력, 패기, 인성을 따져서 입학되는 전문가과정은 경쟁률이 3~5대 1 입니다.</p>
								<p class="redTxt"><b>그룹스터디, 프로젝트 중심의 실무교육과정</b></p>
								<p>우수한 강사진임에도 수준 높은 동기생들과 그룹스터디를 통해 더 많은 것을 배운다는 이들, 이들간의 인맥은 지식보다 더 큰 재산입니다.
								오전 9시부터 오후 6시까지 강행되는 수업, 그리고 저녁 10시까지 그룹스터디, 3개월간의 프로젝트 수행, 그리고 별도의 전문서적을 1주일에 1권 이상 마스터 하는 대량의 학습량과 독특한 그룹스터디를 통해 『비트출신』으로 면모를 갖춘다</p>
								<p class="redTxt"><b>기술은 나눌수록 커진다</b></p>
								<p>『비트출신』으로 인정받기 위해서는 또 하나의 관문이 있다. 제대로 된 정보를 다 같이 공유하려는 취지에서 출발한 '비트프로젝트' 단행본에 전문가과정 수강생이 3개월에 걸쳐 개발한 프로젝트가 실려야 비로소 수료가 가능하다
								입학보다 더 어려운 혹독한 교육과 '비트프로젝트'단행본 발간을 통해 정보를 공유하려는 비트만의 열린 마음을 표명한 것이다.</p>
								<p class="redTxt"><b>막강한 '휴먼 네트워크'는 또 하나의 자랑</b></p>
								<p>막강한 『비트출신』의 휴먼 네트워크가 개인의 기술보다 빛나게 하는 비트교육센터</p>
								<p>비트교육센터는 정보기술을 공유함으로써 경쟁을 유발하고 기초 지식화 시켜 보다 발전할 수 있는 계기를 사회에 부여한다.</p>
								<p>돈 잘 버는 기업보다 사회에 이익을 주고 좋은 문화를 만드는 기업의 이념으로 설립된 비트교육센터 『비트출신』은 우리나라 IT업계의 자랑스러운 일꾼이다</p>

								<p>비트교육센터 교육과정 중 최상위 클래스인 전문가과정은 약 8,700여명의 SW전문인력인 비트출신을 배출하고 있습니다.</p>
								<p>프로그램 개발 실무에 필요한 이론교육</p>
								<p>실무능력 배양에 필요한 프로젝트를 경험할 수 있는 교육과정입니다.</p>
								<p>프로젝트 주제도 세계최초거나 사용화된 제품이라도 기술이나 방법론이 다른 프로젝트를 구현해야합니다.</p>
							</div>
							
							<!--
							<div class="con_wrap">
								<h5>전문가과정 특징</h5>
								<p>장기 프로젝트(2개월)를 통해 프로그래밍 실무에 필요한 능력을 기를 수 있습니다. 체계적인 이론교육과 그룹스터디를 병행하여 소프트웨어 개발에 필요한 기술을 폭넓고 깊이 있게 습득할 수 있습니다. 교육기간 내내 온전히 프로그램 개발에 몰입하는 경험을 할 수 있습니다.</p>
							</div>
							-->
							<!--
							<div class="con_wrap">
								<h5>추천 교육대상</h5>
								<ul class="ul_dot_gray">
									<li>졸업작품을 준비하는 재학생</li>
									<li>군 복무/휴학 후 컴퓨터 전공 과목 실력을 키우고 싶은 재학생</li>
									<li>수준 높은 취업 포트폴리오 결과물을 원하는 재학생</li>
									<li>IT 업계 취업을 희망하는 비전공자</li>
								</ul>
							</div>
							-->
							<div class="con_wrap">
								<h5>비트출신(전문가과정 수료자) 특전</h5>
								<ul class="ul_dot_gray">
									<li>전문가과정 수료증 및 비트SW프로젝트 자격증(민간자격증) 취득</li>
									<li>평생취업보장(비트출신의 취업 및 이직 지원)</li>
									<li>전과정 교육비 50% DC</li>

									<div style="margin-left:0px;">
										<a href="${pageContext.request.contextPath}/assets/Images/Content/completion.pdf" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_expert_completion.jpg" style="margin-top:5px; border:1px solid #dadada; border-radius:4px;"/></a>
										<a href="${pageContext.request.contextPath}/assets/Images/Content/bit_certification.pdf" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_expert_bit_certification.jpg" style="margin-top:5px; margin-left:25px; border:1px solid #dadada; border-radius:4px;"/></a>
										<span style="float:right; margin-right:40px; margin-top:6px; width:240px;">
											<video src="${pageContext.request.contextPath}/assets/Videos/video_bitschool_20130723_400k.mp4" type="video/mp4" controls loop autoplay width="280">cannot play this video</video>
											<p style="color:gray; line-height:15px;">※ 비트스쿨은 비트교육센터로 명칭이 변경되었습니다.</p>
										</span>
										<div>
											<span style="float:left; color:gray; margin-left:5px;">전문가과정 수료증</span>
											<span style="float:left; color:gray; margin-left:65px;">비트SW프로젝트 민간자격증</span>											
										</div>
										<div style="clear:both;"></div>
									</div>
								</ul>
							</div>

							<div id="myBox1" class="myPopup" style="display:none;"></div>
							<div class="myBlurAll" style="display:none;"></div>
							
							<!-- con_wrap -->
							<div id="divInterview" class="con_wrap">
								<h5>
									<span style="float:left; margin-bottom:8px;">전문가과정 수료자 인터뷰</span>
									<span style="float:left;"><button id="btnShowAllInterviewees" onclick="showAllInterviewees();" style="font-size:8pt; font-family:'Nanum Gothic'; display:block; margin-left:10px; margin-top:4px;">전체 보기</button></span>
									<span style="float:left;"><button id="btnShowTopInterviewees" onclick="showTopInterviewees();" style="font-size:8pt; font-family:'Nanum Gothic'; display:none; margin-left:10px;">접기</button></span>
								</h5>
								
								<div style="clear:both;"></div>
															
								<div class="myIntervieweesTop">
									<table class="table_col_type1">
										<caption>전문가과정 수료자 인터뷰</caption>
										<colgroup>
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">									
										</colgroup>
										<tbody>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">355기 (Java Expert)</th>
												<td>김성래</td>
												<!--<td><a href="/Images/Content/InterviewExpert/355(Java)_1.jpg" class="btn sml blue" style="margin-left:10px;">보기</a></td>-->
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/355(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">347기 (Embedded Expert)</th>
												<td>노해윤</td>
												<!--<td><a href="/Images/Content/InterviewExpert/347(Embedded)_1.jpg" class="btn sml blue" style="margin-left:10px;">보기</a></td>-->
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/347(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">339기 (.NET Expert)</th>
												<td>송철호</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/339(.NET)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">338기 (Embedded Expert)</th>
												<td>정승호</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/338(Embedded)_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>										
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">334기 (Java Expert)</th>
												<td>제은진</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/334(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">332기 (Embedded Expert)</th>
												<td>우인구</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/332(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">324기 (Embedded Expert)</th>
												<td>이대건</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/324(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">321기 (Java Expert)</th>
												<td>김용훈</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/321(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">311기 (Embedded Expert)</th>
												<td>조원준 외 4명</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/311(Embedded)_1.jpg','width:2600px;')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">307기 (Embedded Expert)</th>
												<td>최영특</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/307(Embedded)_2.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
										</tbody>
									</table>
								
									<div style="font-size:13pt; margin-left:335px;"><b>:</b></div>
									<div style="font-size:13pt; margin-left:335px; line-height:5px;"><b>:</b></div>
									<div style="clear:both;"></div>
									<br/><br/>
								</div>
								
								<div class="myInterviewees" style="display:none;">
									<table class="table_col_type1">
										<caption>전문가과정 수료자 인터뷰</caption>
										<colgroup>
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">
											<col style="width:26%">
											<col style="width:12%">
											<col style="width:12%">									
										</colgroup>
								
										<tbody>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">355기 (Java Expert)</th>
												<td>김성래</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/355(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">347기 (Embedded Expert)</th>
												<td>노해윤</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/347(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">339기 (.NET Expert)</th>
												<td>송철호</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/339(.NET)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">338기 (Embedded Expert)</th>
												<td>정승호</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/338(Embedded)_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>										
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">334기 (Java Expert)</th>
												<td>제은진</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/334(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">332기 (Embedded Expert)</th>
												<td>우인구</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/332(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">324기 (Embedded Expert)</th>
												<td>이대건</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/324(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">321기 (Java Expert)</th>
												<td>김용훈</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/321(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">311기 (Embedded Expert)</th>
												<td>조원준 외 4명</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/311(Embedded)_1.jpg','width:2600px;')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">307기 (Embedded Expert)</th>
												<td>최영특</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/307(Embedded)_2.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">307기 (Embedded Expert)</th>
												<td>신혁</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/307(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">302기 (Client Server Expert)</th>
												<td>조성만</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/302(Client Server)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">294기 (Embedded Expert)</th>
												<td>진일환</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/294(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">290기 (Embedded Expert)</th>
												<td>이인성</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/290(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">283기 (Network Expert)</th>
												<td>최진우</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/283(Network)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">280기 (Embedded Expert)</th>
												<td>황종순</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/280_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">270기 (Embedded Expert)</th>
												<td>정규철</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/270(Embedded)_1_ssm.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">268기 (Embedded Expert)</th>
												<td>김석진</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/268(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">256기 (MS Expert)</th>
												<td>정규송</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/256(MX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">227기 (MS Expert)</th>
												<td>공형민 외 2명</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/227(MX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">197기 (Java Expert)</th>
												<td>정재은</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/197(Java)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">197기 (Java Expert)</th>
												<td>김준걸</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/197(Java)_2.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">196기 (Client Server Expert)</th>
												<td>김기성</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/196(Client Server)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">183기 (MS Expert)</th>
												<td>조현범</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/183(MX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">168기 (WIndows Networking Expert)</th>
												<td>이기탁</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/168(Windows Networking)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">160기 (Client Server Expert)</th>
												<td>정승훈</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/160(Client Server)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">159기 (Windows Networking Expert)</th>
												<td>김상범</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/159(WIndows Networking)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">150기 (Internet Network Expert)</th>
												<td>이종서 / 한민영</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/150_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">140기 (Windows Networking Expert)</th>
												<td>김진석 외 1명</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/140(Windows Networking)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">122기 (Internet Network Expert)</th>
												<td>송인수</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/122(IX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">113기 (Windows Networking Expert)</th>
												<td>신병준</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/113(Windows Networking_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">95기 (Windows Networking Expert)</th>
												<td>남용진</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/95(Windows)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">64기 (Internet Network Expert)</th>
												<td>이종</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/64(Internet Network)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">37기 (C & UNIX Expert)</th>
												<td>윤경구</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/37_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">23기 (Windows Networking Expert)</th>
												<td>윤영태</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/23(Windows)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">18기 (C & UNIX Expert)</th>
												<td>박기준</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/18(XE)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">14기 (Embedded Expert)</th>
												<td>정원혁</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/14(Embedded)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">13기 (C & UNIX Expert)</th>
												<td>김진희</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/13(XE)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
											<tr>
												<th scope="row" class="tit" style="text-align:left;">4기 (C & UNIX Expert)</th>
												<td>김오진</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/4(XE)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
												<th scope="row" class="tit" style="text-align:left;">1기 (C & UNIX Expert)</th>
												<td>심규성</td>
												<td><a href="javascript:openPopup('${pageContext.request.contextPath}/assets/Images/Content/InterviewExpert/1(C&UNIX)_1.jpg','')" class="btn sml blue" style="margin-left:10px;">보기</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								
							</div>
							<!-- //con_wrap -->
								
							<div class="con_wrap" style="display:inline-block;">
								<h5>
									<span style="float:left; margin-bottom:8px;">비트출신 진출기업</span> 
									<span style="float:left;"><button id="btnShowAllCompanies" onclick="showAllCompanies();" style="font-size:8pt; font-family:'Nanum Gothic'; display:block; margin-left:10px; margin-top:4px;">전체 보기</button></span>
									<span style="float:left;"><button id="btnShowTopCompanies" onclick="showTopCompanies();" style="font-size:8pt; font-family:'Nanum Gothic'; display:none; margin-left:10px;">접기</button></span>
								</h5>
								
								<div style="clear:both;"></div>
								
								<div class="myCompaniesTop">
									<div>나우컴</div>
									<div>네오위즈</div>
									<div>넷마블</div>
									<div>다음커뮤니케이션</div>
									<div>더존IT그룹</div>
									<div>비트컴퓨터</div>
									<div>삼성SDS</div>
									<div>삼성소프트웨어멤버쉽</div>
									<div>소프트웨어진흥원</div>
									<div>안철수연구소</div>
									<div>엔씨소프트</div>
									<div>엠게임</div>
									<div>특허청</div>
									<div>HP</div>
									<div>한화S&C </div>
									<div>LG CNS</div>
									<div>LG전자</div>
									<div>LG U+</div>
									<div>SK커뮤니케이션</div>
									<div>SKT</div>
									<div style="font-size:13pt; margin-left:335px;"><b>:</b></div>
									<div style="clear:both;"></div>
									<div style="font-size:13pt; margin-left:335px; line-height:5px;"><b>:</b></div>
									

								</div>
								<div style="clear:both;"></div>
								
								<div class="myCompanies" style="display:none;">
									<div>거원시스템</div>
									<div>경향신문사</div>
									<div>고려정보통신</div>
									<div>고속도로정보통신</div>
									<div>공영DBM</div>
									<div>교보생명</div>
									<div>교보정보통신</div>
									<div>교보증권</div>
									<div>구우정보기술</div>
									<div>국민데이타시스템</div>
									<div>국민은행</div>
									<div>굿모닝증권</div>
									<div>금융감독원</div>

									<div>나눔기술</div>
									<div>나라정보기술</div>
									<div>나래이동통신</div>
									<div>나모인터렉티브</div>
									<div>나우컴</div>
									<div>나우텍</div>
									<div>나이스채권평가</div>
									<div>나인정보기술</div>
									<div>나프정보기술</div>
									<div>남선산업</div>
									<div>네띠앙</div>
									<div>네비웍스</div>
									<div>네오뮤즈</div>
									<div>네오미디어</div>
									<div>네오엠텔</div>
									<div>네오위즈</div>
									<div>네오캐스트</div>
									<div>네이버시스템</div>
									<div>넥스젠테크놀로지</div>
									<div>넥스텍</div>
									<div>넷마블</div>
									<div>넷피아</div>
									<div>농심NDS</div>
									<div>누리텔레콤</div>
																	
									<div>다산네트웍스</div>
									<div>다음기술</div>
									<div>다음커뮤니케이션</div>
									<div>대교</div>
									<div>대림I&S </div>
									<div>대상정보기술</div>
									<div>대신증권</div>
									<div>대신투자신탁운영</div>
									<div>대우전자</div>
									<div>대우정보시스템</div>
									<div>대우증권</div>
									<div>대한생명</div>
									<div>대한통운</div>
									<div>대한투자신탁</div>
									<div>대한해운</div>
									<div>더존IT그룹</div>
									<div>더존디지탈웨어</div>
									<div>더존비즈온</div>
									<div>데이콤</div>
									<div>데이콤ST</div>
									<div>델컴퓨터</div>
									<div>동부CNI</div>
									<div>동부증권</div>
									<div>동부화재</div>
									<div>동양시스템즈</div>
									<div>동양텔레콤</div>
									<div>두리정보통신</div>
									<div>드림위즈</div>
									<div>디오텍</div>
									<div>디지털조선일보</div>

									<div>라스21</div>
									<div>라이거시스템즈</div>
									<div>라이코스코리아</div>
									<div>레인콤</div>
									<div>로커스</div>
									<div>롯데정보통신</div>
									<div>리눅스씨큐리티</div>
									<div>리눅스코리아</div>
									<div>링크뱅크</div>

									<div>마로테크</div>
									<div>맵퍼스</div>
									<div>메디코아</div>
									<div>메디페이스</div>
									<div>메리츠증권</div>
									<div>모나미</div>
									<div>모다정보통신</div>
									<div>모비스텔레콤</div>
									<div>미디어랜드</div>
									<div>미디어링크</div>
									<div>미래넷</div>
									<div>미래에셋증권</div>
									<div>미리온시스템</div>
									<div>미지리서치</div>

									<div>바스네트워크</div>
									<div>바이오넷</div>
									<div>바이오스랩코리아</div>
									<div>바이텍정보통신</div>
									<div>백병원</div>
									<div>버츄얼웨어</div>
									<div>베스테컴</div>
									<div>베스트나우</div>
									<div>보고정보시스템</div>
									<div>보라존</div>
									<div>보스소프트</div>
									<div>보안제국</div>
									<div>브이텍</div>
									<div>블루칩인터넷</div>
									<div>비씨카드</div>
									<div>비에스테크놀러지</div>
									<div>비트컴퓨터</div>

									<div>삼미정보시스템</div>
									<div>삼보정보통신</div>
									<div>삼보컴퓨터</div>
									<div>삼성SDS</div>
									<div>삼성멤버쉽</div>
									<div>삼성생명보험</div>
									<div>삼성전자</div>
									<div>삼성종합기술원</div>
									<div>삼성중공업</div>
									<div>삼성카드</div>
									<div>삼성캐피털</div>
									<div>삼성테크윈</div>
									<div>새롬아이티</div>
									<div>새롬정보시스템</div>
									<div>서울대병원</div>
									<div>서울보증보험</div>
									<div>서울아산병원</div>
									<div>서울일렉트론</div>
									<div>서울증권</div>
									<div>선마이크로시스템즈</div>
									<div>성진네텍</div>
									<div>세원텔레콤</div>
									<div>세종증권</div>
									<div>소프트그램</div>
									<div>소프트뱅크미디어</div>
									<div>소프트웨어진흥원</div>
									<div>소프트포럼</div>
									<div>쉬프트정보통신</div>
									<div>스탠더드텔레콤</div>
									<div>스톡캐스터</div>
									<div>시스윌</div>
									<div>신영증권</div>
									<div>신지소프트</div>
									<div>신텔정보통신</div>
									<div>신한은행</div>
									<div>신흥증권</div>
									<div>싸이월드</div>
									<div>쌍용정보통신</div>
									<div>썬마이크로시스템즈</div>
									<div>쓰리탐정보통신</div>
									<div>씨큐어소프트</div>
										
									<div>아이메카</div>
									<div>아이소프트</div>
									<div>아이작소프트</div>
									<div>아이티플러스</div>
									<div>안철수연구소</div>
									<div>애드라닷컴</div>
									<div>액터스네트워스</div>
									<div>야후코리아</div>
									<div>어울림정보기술</div>
									<div>어필텔레콤</div>
									<div>에스오엔코리아</div>
									<div>에이메일</div>
									<div>에이아이넷</div>
									<div>엔씨소프트</div>
									<div>엔커머스</div>
									<div>엔타즈</div>
									<div>엠게임</div>
									<div>엠쓰리모바일</div>
									<div>엣데이터</div>
									<div>오란디프</div>
									<div>오토에버시스템즈</div>
									<div>온넷테크놀러지</div>
									<div>와우티브이</div>
									<div>우리금융정보시스템</div>
									<div>웹나라</div>
									<div>웹젠</div>
									<div>웹플러스</div>
									<div>위세아이텍</div>
									<div>위즈정보기술</div>
									<div>윈스테크넷</div>
									<div>윈포넷</div>
									<div>유니보스</div>
									<div>유비케어</div>
									<div>유비퀵스</div>
									<div>유엔젤</div>
									<div>유진데이타</div>
									<div>이루온</div>
									<div>이타임즈인터넷</div>
									<div>인디시스템</div>
									<div>인성정보</div>
									<div>인스트리트</div>
									<div>인츠</div>
									<div>일은증권</div>
									
									<div>자네트시스템</div>
									<div>전자부품연구원</div>
									<div>조선일보</div>
									<div>조은시큐리티</div>
									<div>조흥은행</div>
									<div>조흥증권</div>
									<div>주성엔지니어링</div>
									<div>중앙일보</div>
									<div>증전엔지니어링</div>
									<div>지티플러스.지티원</div>
								
									<div>카티정보</div>
									<div>캐드랜드</div>
									<div>커머스아이</div>
									<div>케이비테크놀러지</div>
									<div>케이웨더</div>
									<div>코디콤</div>
									<div>코아로직</div>
									<div>코아뱅크</div>
									<div>코아정보시스템</div>
									<div>코이넬</div>
									<div>큐라이프</div>
									
									<div>타IRAM소프트</div>
									<div>터보테크</div>
									<div>테스텍</div>
									<div>테크하임텔슨전자</div>
									<div>텔슨전자</div>
									<div>토마토시스템</div>
									<div>트러스트</div>
									<div>특허청</div>
									<div>티맥스소프트</div>
									
									<div>파이언소프트</div>
									<div>파인디지털</div>
									<div>팬텍</div>
									<div>펜타소프트</div>
									<div>펜타시스템</div>
									<div>펜타시큐리티</div>
									<div>포스데이타</div>
									<div>폴리픽스</div>
									<div>퓨전소프트</div>
									<div>프리즘정보시스템</div>
									<div>필아이티</div>
									
									<div>하나로통신</div>
									<div>하나은행</div>
									<div>하우리</div>
									<div>하이닉스반도체</div>
									<div>한국IBM</div>
									<div>한국가상현실</div>
									<div>한국과학기술원</div>
									<div>한국디지탈라인</div>
									<div>한국신용평가정보</div>
									<div>한국아이오테크</div>
									<div>한국외환은행</div>
									<div>한국일보</div>
									<div>한국전력</div>
									<div>한국전자통신연구소</div>
									<div>한국정보공학</div>
									<div>한국정보컨설팅</div>
									<div>한국정보통신</div>
									<div>한국증권전산</div>
									<div>한국철도기술연구원</div>
									<div>한국컴퓨터</div>
									<div>한국통신</div>
									<div>한국투자신탁</div>
									<div>한국후지제록스</div>
									<div>한국휴렛팩커드</div>
									<div>한글과컴퓨터</div>
									<div>한독약품</div>
									<div>한빛은시스템</div>
									<div>한울I.C.I</div>
									<div>한진정보통신</div>
									<div>한컴씨큐어</div>
									<div>한화S&C한화정보</div>
									<div>핸디소프트</div>
									<div>허브테크</div>
									<div>현대오토넷</div>
									<div>현대정보기술</div>
									<div>현대증권</div>
									<div>홈캐스트</div>
									<div>효성데이타시스템</div>
									<div>휴림인터랙티브</div>
									<div>휴맥스</div>

									<div>BEA시스템즈코리</div>
									<div>Bixon Technology</div>
									<div>CJ시스템즈</div>
									<div>GE메디컬시스템코리아</div>
									<div>HP</div>
									<div>KCC정보통신</div>
									<div>KGI증권</div>
									<div>L&H Korea</div>
									<div>LG CNS</div>
									<div>LG전자</div>
									<div>LG정보통신</div>
									<div>LG텔레콤</div>
									<div>LG투자증권</div>
									<div>MBC기술연구소</div>
									<div>NHN</div>
									<div>SK C&C </div>
									<div>SK증권</div>
									<div>SK커뮤니케이션</div>
									<div>SK텔레콤</div>

								</div>
							</div>
							
							<div class="con_wrap last">
								<h5>문의</h5>
								<p>02-3486-1780 (expert@bit.kr)</p>
							</div>

						</div>
					</section>
					<!--
					<section class="section" style="DISPLAY:NONE !IMPORTANT;">
						<h5 class="dis_none">전문가과정 내용</h5>
						<div class="tap_header">
							<ul class="tapMenu">
								<li class="on"><a href="#this" title="교육과정 로드맵" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp')">교육과정</a></li>
								<li><a href="#this" title="교육일과" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_02.asp')">교육일과</a></li>
								<li><a href="#this" title="자 격" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_03.asp')">자 격</a></li>
								< ! - - <li><a href="#this" title="전형안내" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_04.asp')">전형안내</a></li> - - > 
								<li><a href="#this" title="제출서류" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_05.asp')">제출서류</a></li>
								<li><a href="#this" title="수강료" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_06.asp')">수강료</a></li>
								<li><a href="#this" title="수강료 특전" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_07.asp')">수료시 특전</a></li>
							</ul>
						</div>
						<div id="ConDetail" class="tap_content">
							
						</div>
					</section>
					-->
					<a href="#this" class="moveTop" style="z-index:3;">Top</a>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>