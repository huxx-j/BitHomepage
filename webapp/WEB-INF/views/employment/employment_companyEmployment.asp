<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			//$(".snb_1702 .newdepth1").eq(6).addClass("on");
			$(".snb_1709 a.newdepth1").eq(6).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:210px;">
			<div id="Content_Wrap" style="min-height:210px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>홈
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>취업지원센터
						</p>
						<h4 style="float:left;">신입채용교육 진행 기업</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<style>
						.companyList div.company {
							margin:4px;
							width:166px;
							height:60px;
							box-shadow: 1px 1px 2px 2px #ccc;
						}
						.companyList img {
							margin-top:11px;
							height:37px;
						}
						.companyList div.company div.divImage {
							width:90px;
							text-align:center;
						}
						.companyList div.company div.p {
							color:blue;
							font-size:13px;
							line-height:15px;
							margin-left:2px;
							margin-top:25px;
							font-weight:600;
							width:63px;
							letter-spacing:-1px;
						}
						.companyList div.company .p.long {
							margin-top:15px;
						}
						.fl {
							float:left;
						}
					</style>
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first bg_none">
							<div class="logoList">
								<h5 class="mar_b5">JAVA 분야</h5>
								<div class="companyList">
									<div class="company fl">
										<div class="divImage fl"><img src="Images/두손소프트_x37.jpg"/></div><div class="p fl long">㈜두손소프트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/비즈테크파트너스_x37.PNG"/></div><div class="p fl long">㈜비즈테크파트너스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/뱅크웨어글로벌_x37.PNG"/></div><div class="p fl long">㈜뱅크웨어글로벌</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/아펙스인포_x37.PNG"/></div><div class="p fl long">㈜아펙스인포</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/비트컴퓨터_x37.PNG"/></div><div class="p fl long">㈜비트컴퓨터</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/이스트소프트_x37.jpg"/></div><div class="p fl long">㈜이스트소프트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/BnEPartners_x37.jpg"/></div><div class="p fl long">㈜BnE Partners</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/Obigo_x37.PNG"/></div><div class="p fl">㈜오비고</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/HumanSoftware_x37.PNG"/></div><div class= "p fl long">㈜휴먼<br/>소프트웨어</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/WhiteInfoComm_x37.jpg"/></div><div class="p fl long">㈜화이트<br/>정보통신</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/DigitalAsset_x37.PNG"/></div><div class="p fl long">㈜디지털에셋</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/넷크루즈_x37.jpg"/></div><div class="p fl">㈜넷크루즈</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/핸디소프트_x37.jpg"/></div><div class="p fl long">㈜핸디소프트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/성우시스템_x37.jpg"/></div><div class="p fl long">㈜성우시스템</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/토마토시스템_x37.jpg"/></div><div class="p fl long">㈜토마토시스템</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/티맥스소프트_x37.jpg"/></div><div class="p fl long">㈜티맥스소프트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/아이티플러스_x37.jpg"/></div><div class="p fl long">㈜아이티플러스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/코아뱅크_x37.jpg"/></div><div class="p fl">㈜코아뱅크</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/아이티엔씨_x37.jpg"/></div><div class="p fl long">㈜아이티엔씨</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/뱅크타운_x37.jpg"/></div><div class="p fl">㈜뱅크타운</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/넥스트리소프트_x37.jpg"/></div><div class="p fl long">㈜넥스트리소프트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/날리지큐브_x37.jpg"/></div><div class="p fl long">㈜날리지큐브</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/DigitalAsset_x37.jpg"/></div><div class="p fl long">㈜디지털에셋</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/지티원_x37.jpg"/></div><div class="p fl">㈜지티원</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/디리아_x37.jpg"/></div><div class="p fl">㈜디리아</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/GTPlus_x37.jpg"/></div><div class="p fl long">㈜지티플러스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/엑스소프트_x37.jpg"/></div><div class="p fl long">㈜엑스소프트</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/위세아이텍_x37.jpg"/></div><div class="p fl long">㈜위세아이텍</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/팅크웨어_x37.jpg"/></div><div class="p fl">㈜팅크웨어</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/커머스아이_x37.jpg"/></div><div class="p fl long">㈜커머스아이</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/NHN_Technology_Services_x37.jpg"/></div><div class="p fl long" style="margin-top:8px;">㈜NHN Technology<br/>Services</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/심플렉스인터넷_x37.jpg"/></div><div class="p fl long">㈜심플렉스<br/>인터넷</div><div style="clear:both;"></div>
									</div>
									<div style="clear:both;"></div>
								</div>
								
								<!--
								<ul class="java_list">
									<li><img src="/Images/Content/company_logo/Obigo_logo_142x37.PNG" alt="오비고"></li>
									<li><img src="/Images/Content/company_logo/HumanSoftware_logo_142x37.png" alt="휴먼소프트웨어"></li>
									<li><img src="/Images/Content/company_logo/java_17.jpg" alt="화이트 정보통신"></li>
									<li><img src="/Images/Content/company_logo/DigitalAsset_logo_142x37.png" alt="디지털에셋"></li>
									<li><img src="/Images/Content/company_logo/window_17.jpg" alt="넷크루즈"></li>
									<li><img src="/Images/Content/company_logo/java_01.jpg" alt="핸디소프트 로고"></li>
									<li><img src="/Images/Content/company_logo/java_02.jpg" alt="성우시스템"></li>
									<li><img src="/Images/Content/company_logo/java_03.jpg" alt="토마토시스템"></li>
									<li><img src="/Images/Content/company_logo/java_04.jpg" alt="티맥스소프트"></li>
									<li><img src="/Images/Content/company_logo/java_05.jpg" alt="아이티플러스"></li>
									<li><img src="/Images/Content/company_logo/java_06.jpg" alt="코아뱅크"></li>
									<li><img src="/Images/Content/company_logo/java_07.jpg" alt="아이티엔씨"></li>
									<li><img src="/Images/Content/company_logo/java_08.jpg" alt="뱅크타운"></li>
									<li><img src="/Images/Content/company_logo/java_09.jpg" alt="넥스트리소프트"></li>
									<li><img src="/Images/Content/company_logo/java_10.jpg" alt="날리지큐브"></li>
									<li><img src="/Images/Content/company_logo/java_11.jpg" alt="디지털에셋"></li>
									<li><img src="/Images/Content/company_logo/java_12.jpg" alt="지티원"></li>
									<li><img src="/Images/Content/company_logo/java_13.jpg" alt="다리아"></li>
									<li><img src="/Images/Content/company_logo/java_14.jpg" alt="지티플러스"></li>
									<li><img src="/Images/Content/company_logo/java_15.jpg" alt="엑스소프트"></li>
									<li><img src="/Images/Content/company_logo/java_16.jpg" alt="위세아이텍"></li>
									<li><img src="/Images/Content/company_logo/java_18.jpg" alt="팅크웨어"></li>
									<li><img src="/Images/Content/company_logo/java_19.jpg" alt="키머스아이"></li>
									<li><img src="/Images/Content/company_logo/java_20.jpg" alt="NHN Technolohy Services"></li>
									<li><img src="/Images/Content/company_logo/java_21.jpg" alt="심플렉스 인터넷"></li>
								</ul>
								-->
									
							</div>
							<div class="logoList">
								<h5 class="mar_b5">Embedded 분야</h5>
								<div class="companyList">
									<div class="company fl">
										<div class="divImage fl"><img src="Images/ATEC_x37.PNG"/></div><div class="p fl">㈜에이텍</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/IVIS_x37.PNG"/></div><div class= "p fl">㈜아이비스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/EugenRobot_x37.PNG"/></div><div class="p fl">㈜유진로봇</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/Digience_x37.PNG"/></div><div class="p fl">㈜디지엔스</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/Exicon_x37.PNG"/></div><div class="p fl">㈜엑시콘</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/HynixSemiconductor_x37.jpg"/></div><div class= "p fl long">㈜하이닉스반도체</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/다산네트웍스_x37.jpg"/></div><div class="p fl long">㈜다산네트웍스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/Humax_x37.jpg"/></div><div class="p fl">㈜휴맥스</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/IntekDigital_x37.jpg"/></div><div class="p fl long">㈜인텍디지탈</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/KaonMedia_x37.jpg"/></div><div class= "p fl long">㈜가온미디어</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/CelRun_x37.jpg"/></div><div class="p fl">㈜셀런</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/인테그라정보통신_x37.jpg"/></div><div class="p fl long">㈜인테그라정보통신</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/월게이트_x37.jpg"/></div><div class="p fl">㈜월게이트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/NetForYou_x37.jpg"/></div><div class= "p fl">㈜넷포유</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/TheMap_x37.jpg"/></div><div class="p fl">㈜더맵</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/Pixoneer_x37.jpg"/></div><div class="p fl">㈜픽소니어</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/유비코드_x37.jpg"/></div><div class="p fl">㈜유비코드</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/EZDigital_x37.jpg"/></div><div class= "p fl long">㈜이지디지털</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/라이트웍스_x37.jpg"/></div><div class="p fl long">㈜라이트웍스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/액터스네트웍스_x37.jpg"/></div><div class="p fl long">㈜액터스네트웍스</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/억셉트테크놀러지_x37.jpg"/></div><div class="p fl long">㈜억셉트테크놀러지</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/빛샘전자_x37.jpg"/></div><div class= "p fl">㈜빛샘전자</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/블루버드소프트_x37.jpg"/></div><div class="p fl long">㈜블루버드소프트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/허브테크_x37.jpg"/></div><div class="p fl">㈜허브테크</div><div style="clear:both;"></div>
									</div>
									
									<div style="clear:both;"></div>
								</div>
								
								<!--
								<ul class="java_list">
									< ! -- 쎄믹스 - - > 
									<li><img src="/Images/Content/company_logo/ATEC_logo_142x37.png" alt="에이텍"></li>
									<li><img src="/Images/Content/company_logo/IVIS_logo_142x37.png" alt="아이비스"></li>
									<li><img src="/Images/Content/company_logo/Eugen_logo_142x37.png" alt="유진로봇"></li>
									<li><img src="/Images/Content/company_logo/Digience_logo_142x37.png" alt="디지엔스"></li>
									<li><img src="/Images/Content/company_logo/Exicon_logo_142x37.png" alt="엑시콘"></li>
									<li><img src="/Images/Content/company_logo/embedded_01.jpg" alt="하이닉스반도체"></li>
									<li><img src="/Images/Content/company_logo/embedded_02.jpg" alt="다산네트워크"></li>
									<li><img src="/Images/Content/company_logo/embedded_03.jpg" alt="휴맥스"></li>
									< ! - -<li><img src="/Images/Content/company_logo/embedded_04.jpg" alt="에이텍"></li> // OLD - - >
									<li><img src="/Images/Content/company_logo/embedded_05.jpg" alt="인텍디지탈"></li>
									<li><img src="/Images/Content/company_logo/embedded_06.jpg" alt="가온미디어"></li>
									<li><img src="/Images/Content/company_logo/embedded_07.jpg" alt="셀런"></li>
									<li><img src="/Images/Content/company_logo/embedded_08.jpg" alt="인테그라정보통신"></li>
									<li><img src="/Images/Content/company_logo/embedded_09.jpg" alt="웰게이트"></li>
									<li><img src="/Images/Content/company_logo/embedded_10.jpg" alt="넷포유"></li>
									<li><img src="/Images/Content/company_logo/embedded_11.jpg" alt="더맵"></li>
									<li><img src="/Images/Content/company_logo/embedded_12.jpg" alt="픽소니어"></li>
									<li><img src="/Images/Content/company_logo/embedded_13.jpg" alt="유비코드"></li>
									<li><img src="/Images/Content/company_logo/embedded_14.jpg" alt="이지디지털"></li>
									<li><img src="/Images/Content/company_logo/embedded_15.jpg" alt="라이트윅스"></li>
									<li><img src="/Images/Content/company_logo/embedded_16.jpg" alt="맥터스네트웍스"></li>
									<li><img src="/Images/Content/company_logo/embedded_17.jpg" alt="억셉트 테크놀러지"></li>
									<li><img src="/Images/Content/company_logo/embedded_18.jpg" alt="빛샘전자"></li>
									<li><img src="/Images/Content/company_logo/embedded_19.jpg" alt="블루버드 소프트"></li>
									<li><img src="/Images/Content/company_logo/embedded_20.jpg" alt="허브테크"></li>
								</ul>
							</div>
							-->
							
							<div class="logoList">
								<h5 class="mar_b5">Client / Server 분야</h5>
								<div class="companyList">
									<div class="company fl">
										<div class="divImage fl"><img src="Images/넷크루즈_x37.jpg"/></div><div class="p fl">㈜넷크루즈</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/넷피아_x37.jpg"/></div><div class= "p fl">㈜넷피아</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/이루온_x37.jpg"/></div><div class="p fl">㈜이루온</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/엠게임_x37.jpg"/></div><div class="p fl">㈜엠게임</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/솔루션박스_x37.jpg"/></div><div class="p fl long">㈜솔루션박스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/브리지텍_x37.jpg"/></div><div class= "p fl">㈜브리지텍</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/컴스퀘어_x37.jpg"/></div><div class="p fl">㈜컴스퀘어</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/알트원_x37.jpg"/></div><div class="p fl">㈜알트원</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/넥스테크_x37.jpg"/></div><div class="p fl">㈜넥스테크</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/잉카인터넷_x37.jpg"/></div><div class= "p fl long">㈜잉카인터넷</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/한국가상현실_x37.jpg"/></div><div class="p fl long">㈜한국가상현실</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/더존IT그룹_x37.jpg"/></div><div class="p fl">㈜더존IT그룹</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/나우콤_x37.jpg"/></div><div class="p fl">㈜나우콤</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/맵퍼스_x37.jpg"/></div><div class= "p fl">㈜맵퍼스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/MarkAny_x37.jpg"/></div><div class="p fl">㈜마크애니</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/네비웍스_x37.jpg"/></div><div class="p fl">㈜네비웍스</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/한국아이오테크_x37.jpg"/></div><div class="p fl long">㈜한국아이오테크</div><div style="clear:both;"></div>
									</div>

									<div style="clear:both;"></div>
								</div>
								<!--
								<ul class="java_list">
									<li><img src="/Images/Content/company_logo/window_17.jpg" alt="넷크루즈"></li>
									<li><img src="/Images/Content/company_logo/window_01.jpg" alt="넷피아"></li>
									<li><img src="/Images/Content/company_logo/window_02.jpg" alt="이루온"></li>
									<li><img src="/Images/Content/company_logo/window_03.jpg" alt="엠게임"></li>
									<li><img src="/Images/Content/company_logo/window_04.jpg" alt="솔루션박스"></li>
									<li><img src="/Images/Content/company_logo/window_05.jpg" alt="브리지텍"></li>
									<li><img src="/Images/Content/company_logo/window_06.jpg" alt="컴스퀘어"></li>
									<li><img src="/Images/Content/company_logo/window_07.jpg" alt="알트원"></li>
									<li><img src="/Images/Content/company_logo/window_08.jpg" alt="네스테크"></li>
									<li><img src="/Images/Content/company_logo/window_09.jpg" alt="잉카인터넷"></li>
									<li><img src="/Images/Content/company_logo/window_10.jpg" alt="한국가상현실"></li>
									<li><img src="/Images/Content/company_logo/window_11.jpg" alt="더존IT그룹"></li>
									<li><img src="/Images/Content/company_logo/window_12.jpg" alt="나우콤"></li>
									<li><img src="/Images/Content/company_logo/window_13.jpg" alt="맵퍼스"></li>
									<li><img src="/Images/Content/company_logo/window_14.jpg" alt="마크애니"></li>
									<li><img src="/Images/Content/company_logo/window_15.jpg" alt="네비웍스"></li>
									<li><img src="/Images/Content/company_logo/window_16.jpg" alt="한국 아이오테크"></li>
								</ul>
							</div>
							-->
							<div class="logoList">
								<h5 class="mar_b5">.NET 분야</h5>
								<div class="companyList">
									<div class="company fl">
										<div class="divImage fl"><img src="Images/다래아이엔씨_x37.jpg"/></div><div class="p fl long">㈜다래아이엔씨</div><div style="clear:both;"></div>
									</div>

									<div class="company fl">
										<div class="divImage fl"><img src="Images/쎄믹스_x37.PNG"/></div><div class="p fl">㈜쎄믹스</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/Voiceye_x37.jpg"/></div><div class= "p fl long">㈜보이스아이</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/BitComputer_x37.jpg"/></div><div class="p fl long">㈜비트컴퓨터</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/ePapyrus_x37.PNG"/></div><div class="p fl long">㈜이파피루스</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/CIMON_x37.PNG"/></div><div class="p fl">㈜싸이몬</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/수산아이앤티_x37.PNG"/></div><div class= "p fl long">㈜수산아이앤티</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/인피니트_x37.jpg"/></div><div class="p fl">㈜인피니트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/인터데브_x37.jpg"/></div><div class="p fl">㈜인터데브</div><div style="clear:both;"></div>
									</div>
									
									<div class="company fl">
										<div class="divImage fl"><img src="Images/위세아이텍_x37.jpg"/></div><div class="p fl long">㈜위세아이텍</div><div style="clear:both;"></div>
									</div>

									<div style="clear:both;"></div>
								</div>
								<!--
								<ul class="java_list">
									<li><img src="/Images/Content/company_logo/Semics_logo_142x37.PNG" alt="쎄믹스"></li>
									<li><img src="/Images/Content/company_logo/Voiceye_logo_142x37.jpg" alt="보이스아이"></li>
									<li><img src="/Images/Content/company_logo/net_01.jpg" alt="비트컴퓨터"></li>
									<li><img src="/Images/Content/company_logo/ePapyrus_logo_142x37.png" alt="이파피루스"></li>
									<li><img src="/Images/Content/company_logo/CIMON_logo_142x37.png" alt="싸이몬"></li>
									<li><img src="/Images/Content/company_logo/SOOSAN_INT_logo_142x37.png" alt="수산아이앤티"></li>
									<li><img src="/Images/Content/company_logo/net_02.jpg" alt="인피니트"></li>
									<li><img src="/Images/Content/company_logo/net_03.jpg" alt="인터데브"></li>
									<li><img src="/Images/Content/company_logo/net_04.jpg" alt="위세아이텍"></li>
								</ul>
								-->
							</div>
							
							<div class="logoList">
								<h5 class="mar_b5">Network 분야</h5>
								<div class="companyList">
									<div class="company fl">
										<div class="divImage fl"><img src="Images/어울림정보기술_x37.jpg" style="width:90px;"/></div><div class="p fl long">㈜어울림<br/>정보기술</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/인스프리트_x37.jpg"/></div><div class= "p fl long">㈜인스프리트</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/어니언텍_x37.jpg"/></div><div class="p fl">㈜어니언텍</div><div style="clear:both;"></div>
									</div>
									<div class="company fl">
										<div class="divImage fl"><img src="Images/엠쓰리모바일_x37.jpg"/></div><div class="p fl long">㈜엠쓰리모바일</div><div style="clear:both;"></div>
									</div>
									
									<div style="clear:both;"></div>
								</div>
								
								<!--
								<ul class="java_list">
									<li><img src="/Images/Content/company_logo/network_01.jpg" alt="어울림정보기술"></li>
									<li><img src="/Images/Content/company_logo/network_02.jpg" alt="인스프리트"></li>
									<li><img src="/Images/Content/company_logo/network_03.jpg" alt="어니언텍"></li>
									<li><img src="/Images/Content/company_logo/network_04.jpg" alt="엠쓰리모바일"></li>
								</ul>
								-->
							</div>
						</div>
						<!-- //con_wrap1709 -->
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>