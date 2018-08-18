<%
	Session.CodePage  = 949 '한글
	Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>

<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
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
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// BSPM (BIT Software Programming Master) 자격증 ON
			
			ajaxLoad('#ConDetail', '', '/Course/License/CProgrammingMaster_Acceptance.asp');
			ajaxLoad('#ConDetailInfo', '', '/Course/License/CProgrammingMaster_Details.asp');
			
			$(".divCompany").on("mouseenter", function() {
				$(this).stop(true,true).animate({'backgroundColor':'#fefeda','borderColor':'#0f0fff'},300);
				$(this).css("cursor","pointer");
			}).on("mouseleave", function() {
				$(this).stop(true,true).animate({'borderColor':'#d1d1d1','backgroundColor':'#f9f9f9'},1000);
			}).on("click", function() {
				if(typeof $(this).attr("h_ref") != 'undefined' && $(this).attr("h_ref")!='#') window.open( $(this).attr("h_ref") , '_blank' ); 
			});

		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/License/M/Course_Licenses.asp";
		*/
	</script>
	<link rel="stylesheet" type="text/css" href="/CSS/Base2017Webfont.css"/>
	
	<style>
		.boxShadow { box-shadow:2px 2px 8px; }
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseLicense_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>비트 SW 자격증
						</p>
						<h4 style="letter-spacing:-2px;">BSPM <span style="font-size:0.9em;">(BIT Software Programming Master)</span> 자격증</h4>
					</div>
					
					<section class="section" >
						<div class="con_wrap1709">
							<h5>"나, 프로그래밍 좀 한다!" 라고 생각하시나요?</h5>
							<p>
								최근 청년실업률이 가파르게 상승하여 10%에 육박(<a href="http://www.index.go.kr/potal/main/EachDtlPageDetail.do?idx_cd=1495" target="_blank" style="font-size:0.9em; color:#1357a9; font-weight:600;"><u>통계청「경제활동인구조사」2017 - 청년고용동향</u></a>) 하는 등 실력이 충분한 사람들조차 구직난을 경험하고 있는 상황에서, 기업들은 '뽑을 인재가 없다' 고 하소연하며 구인난을 이야기하고 있습니다.
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>도전해 보세요!</h5>
							<p>
								실력을 증명할 수 있다면, 준비된 여러분에게 취업의 문은 훨씬 더 넓어집니다.
							</p>
						</div>
							<!--
							<div style="background-color:#404040; width:100%; margin:30px auto; font-family:'SandolGothicNeo2'; font-weight:600; font-size:15pt; color:white; text-align:center; padding:25px 0; box-shadow:1px 4px 4px #747474;">
								나, 프로그래밍 좀 한다
							</div>
							<p style="width:70%; margin:0 auto 10px auto;">
								라고 생각하시나요?
							</p>
							<p style="width:70%; margin:0 auto;">
								최근 청년실업률이 가파르게 상승하여 10%에 육박(<a href="http://www.index.go.kr/potal/main/EachDtlPageDetail.do?idx_cd=1495" target="_blank" style="font-size:0.9em; color:#1357a9; font-weight:600;"><u>통계청「경제활동인구조사」2016 - 청년고용동향</u></a>) 하는 등 능력이 충분한 사람들조차 구직난을 경험하고 있는 상황에서, 기업들은 '뽑을 인재가 없다' 라고 하소연하며 구인난을 이야기하고 있습니다.
							</p>
							<div style="background-color:#5f4faf; width:100%; margin:30px auto; font-family:'SandolGothicNeo2'; font-weight:600; font-size:15pt; color:white; text-align:center; padding:25px 0px; box-shadow:1px 4px 4px #747474;">
								도전해 보세요.<br/>
							</div>
							<p style="width:70%; margin:0 auto;">
								실력을 증명할 수 있다면, 준비된 여러분에게 취업의 문은 훨씬 더 넓어집니다.
							</p>
							-->
						<div class="con_wrap1709">
							<h5>BSPM 이란 ?</h5>
							<p class="mar_b10">
								<span class="blueTxt boldTxt">BSPM</span> 이란, 2016년부터 <span class="blueTxt boldTxt">비트교육센터</span>가 시행하고 있는 자격시험에서 합격하신 분들에게 발급해 드리는 <b>프로그래밍 자격증</b>으로서, 자격기본법 제17조 제2항에 따라 주무부처인 미래창조과학부에 등록하고 한국직업능력개발원에 등록된 민간자격증입니다.
							</p>
							<p class="mar_b10">
								이 자격증을 취득하시는 분은, 비트가 인정하는 전문가 레벨의 프로그래밍 실력을 갖추었고 따라서 수준 높은 응용 프로그램을 개발할 수 있음을 객관적으로 증명하실 수 있고, 비트교육센터와 협약을 맺고 있는 기업들<span style="font-size:0.8em;">(아래 비트 SW 자격증 우대 협약기업 참조)</span>에 지원하실 경우 가산점을 적용 받는 등 적극적인 우대 혜택을 받으실 수 있습니다.
							</p>
						</div>
<!--							
							<p>	
								BSPM(BIT Software Programming Master)은 자격기본법 제 17조 제2항에 따라 주무부처인 미래창조과학부에 등록하고 한국직업능력개발원에서 승인한 민간자격증입니다.<br/>
								본 비트의 BSPM 자격증을 소지한 자는 전문가 수준의 Language 프로그래밍 실력을 갖추었고, 응용 프로그래밍을 개발할 수 있는 수준임을 증명할 수 있습니다. 취업에 있어 이 자격증을 소지한 자를 적극 우대 및 가산점을 적용하는 제도를 진행하고 있습니다.
							</p>
-->					
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:20%">
										<col style="width:30%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">구분</th>
											<th scope="col">한글자격증 명칭</th>
											<th scope="col">영문 명칭</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="2">BSPM</td>
											<td class="darker c" >C프로그래밍 마스터</td>
											<td>BCCPM (BIT Certified C Programming Master)</td>
										</tr>
										<tr>
											<td class="darker c" >JAVA프로그래밍 마스터</td>
											<td>BCJPM (BIT Certified JAVA Programming Master)</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<style>
							.divCompany {
								height:70px;
								width:90px; 
								/* margin:1px 1px 0px 0px; */
								padding:5px;
								text-align:center;
								border:1px solid #afafaf;
								box-shadow:1px 1px 1px #7f7f7f;
								font-weight:600;
								float:left;
							} /* margin:5px 4px 3px 3px; box-shadow:1px 1px 3px #7f7f7f;*/
							.divCompany div {
								height:46px;
								
							}
						.darkgreyTxt { color:darkgrey !important; }
							
						</style>

						<div class="con_wrap1709">
							<h5>2018년 BSPM 자격증 일정</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:16%">
										<col style="width:16%">
										<col style="width:17%">
										<col style="width:17%">
										<col style="width:17%">
										<col style="width:17%">
									</colgroup>
									<tbody>
										<tr>
											<th class="darkgreyTxt">16회차</th>
											<th class="darkgreyTxt">17회차</th>
											<th class="darkgreyTxt">18회차</th>
											<th class="darkgreyTxt">19회차</th>
											<th class="darkgreyTxt">20회차</th>
											<th class="darkgreyTxt">21회차</th>
										</tr>
										<tr>
											<td class="darkgreyTxt c">1/27</td>
											<td class="darkgreyTxt c">2/24</td>
											<td class="darkgreyTxt c">3/31</td>
											<td class="darkgreyTxt c">4/28</td>
											<td class="darkgreyTxt c">5/26</td>
											<td class="darkgreyTxt c">6/30</td>
										</tr>
										<tr>
											<th class="darkgreyTxt">22회차</th>
											<th>23회차</th>
											<th>24회차</th>
											<th>25회차</th>
											<th>26회차</th>
											<th>27회차</th>
										</tr>
										<tr>
											<td class="darkgreyTxt c">7/28</td>
											<td class="c">8/25</td>
											<td class="c">9/29</td>
											<td class="c">10/27</td>
											<td class="c">11/24</td>
											<td class="c">12/29</td>
										</tr>
									</tbody>
								</table>
							</div>
							
							<p>
								<!-- DEPRECATED ::  # i n clude virtual="/Include/CourseDateTime/Date/Date__CP_Master(Common).inc" -->
								<!--
								19회차 : 2018.4.28(토) 오전 10:00 
								20회차 : 2018.5.26(토) 오전 10:00
								21회차 : 2018.6.30(토) 오전 10:00
								-->
							</p>
<%
'							<!--18회차 : 2018.3.31(토) 오전 10:00-->
'							<!-- 17회차 : 2018.2.24(토) 오전 10:00-->
'							<!-- 16회차 : 2018.1.27(토) 오전 10:00<br/> -->
'							<!--<li>15회차 : 2017.12.30(토) 오전 10:00</li>-->
'							<!--<li>14회차 : 2017.11.25(토) 오전 10:00</li>-->
'							<!--<li>13회차 : 2017.10.28(토) 오전 10:00</li>-->
'							<!--<li>12회차 : 2017.09.30(토) 오전 10:00</li>-->
'							<!--<li>11회차 : 2017.08.26(토) 오전 10:00</li>-->
'							<!--<li>10회차 : 2017.07.29(토) 오전 10:00</li>-->
'							<!--<li>9회차 : 2017.06.24(토) 오전 10:00</li>-->
'							<!--<li>8회차 : 2017.05.27(토) 오전 10:00</li>-->
'							<!--<li>7회차 : 2017.04.29(토) 오전 10:00</li>-->
'							<!--<li>6회차 : 2017.03.25(토) 오전 10:00</li>-->
'							<!--<li>5회차 : 2017.02.25(토) 오전 10:00</li>-->
'							<!--<li>4회차 : 2017.01.21(토) 오전 10:00</li>-->
'							<!--<li>3회차 : 2016.12.24(토) 오전 10:00</li>-->
'							<!--<li>2회차 : 2016.11.26(토) 오전 10:00</li>-->
'							<!--<li>2016.10.29(토) 오전 10:00</li>-->
'
'							<!--
'							<h5>시험일정 (2018)</h5>
'							<table class="table_col_type1 tableSchedule">
'								<tr>
'									
'								</tr>
'								<tr>
'									<td>22회차 : 7월 28일(토)</td>
'									<td>23회차 : 8월 25일(토)</td>
'									<td>24회차 : 9월 29일(토)</td>
'									<td>25회차 : 10월 27일(토)</td>
'									<td>26회차 : 11월 24일(토)</td>
'									<td>27회차 : 12월 29일(토)</td>
'								</tr>
'							</table>
'							-->
%>							
						</div>
						<div class="con_wrap1709">
							<h5>시험 장소</h5>
							<p>
								서울 서초구 서초대로 74길 비트빌 3층, 비트교육센터
							</p>
						</div>

						<div class="con_wrap1709">
							
							<!-- BSPM Companies -->
							<!--#include virtual="/Course/License/Common_LicenseCompanies.inc" -->
							
							<h5>비트 SW 자격증 우대 협약기업 (총 <%=countCompany%>개 기업)</h5>
							<div style="margin-left:0px;">
	
								<%
									For i=0 To countCompany-1 Step 1
										Response.Write "<div class='divCompany' style='" & strCompanies(i,4) & "' h_ref='" & strCompanies(i,0) & "'>"
										Response.Write "<div style=' " & strCompanies(i,5) & "'><span href='" & strCompanies(i,0) & "' target='_blank'><img src='" & strCompanies(i,1) & "' style='" & strCompanies(i,2) & "'/></span></div>" & strCompanies(i,3)
										Response.Write "</div>"
									Next
								%>
								<!--
								<div class="divCompany">
									<div><a href="https://www.bit.kr/" target="_blank"><img src="/Images/Main/img_logo_BITCOM.png" style="width:90px; margin-top:10px;"/></a></div>
									(주)비트컴퓨터
								</div>
								<div class="divCompany">
									<div><a href="http://m2mi.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_M2MCoding.png" style="height:30px; margin-top:5px; " /></a></div>
									(주)엠투엠코딩
								</div>
								<div class="divCompany">
									<div><a href="http://www.entermate.com/" target="_blank"><img src="/Images/License/img_LOGO_Entermate.jpg" style="width:90px; margin-top:10px;" /></a></div>
									(주)엔터메이트
								</div>
								<div class="divCompany">
									<div><a href="http://www.ontune.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_TeemStone.jpg" style="height:30px; margin-top:5px;" /></a></div>
									(주)팀스톤
								</div>
								<div class="divCompany">
									<div><a href="http://www.yest.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_YesT.jpg" style="width:90px;" /></a></div>
									(주)예스티
								</div>
								<div class="divCompany">
									<div><a href="http://www.g-inno.com/" target="_blank"><img src="/Images/License/img_LOGO_G-innoSystems.jpg" style="width:90px; margin-top:10px;" /></a></div>
									(주)지노시스템
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div style="height:46px !important;"><a href="http://adrftech.com/" target="_blank"><img src="/Images/License/img_LOGO_ADRF.png" style="height:30px; margin-top:5px;" /></a></div>
									(주)에이디알에프코리아
								</div>
								<div class="divCompany">
									<div><a href="http://www.r2ware.com" target="_blank"><img src="/Images/License/img_LOGO_r2ware.png" style="height:30px; max-width:100%; margin-top:5px;" /></a></div>
									(주)알투웨어
								</div>
								<div class="divCompany">
									<div><a href="http://ivisolution.com" target="_blank"><img src="/Images/License/img_LOGO_IVIS.png" style="height:24px; max-width:100%; margin-top:10px;" /></a></div>
									(주)아이비스
								</div>
								<div class="divCompany">
									<div><a href="http://www.digitalone.co.kr" target="_blank"><img src="/Images/License/img_LOGO_DigitalOne.png" style="height:30px; margin-top:8px;" /></a></div>
									(주)디지털원
								</div>
								<div class="divCompany">
									<div><a href="http://www.bluecost.co.kr" target="_blank"><img src="/Images/License/img_LOGO_CMX.png" style="max-width:100%; margin-top:0px;" /></a></div>
									(주)씨엠엑스
								</div>
								<div class="divCompany">
									<div><a href="http://www.ssts.co.kr" target="_blank"><img src="/Images/License/img_LOGO_ShinsungTongsang.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)신성통상
								</div>
								<div class="divCompany">
									<div><a href="http://kr.humuson.com/" target="_blank"><img src="/Images/License/img_LOGO_Humuson.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)휴머스온
								</div>
								<div class="divCompany">
									<div><a href="http://www.bow-tech.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_BOWTech.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)보우테크
								</div>
								<div class="divCompany">
									<div><a href="http://www.coregate.com/" target="_blank"><img src="/Images/License/img_LOGO_Coregate.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)코어게이트
								</div>
								<div class="divCompany">
									<div><a href="http://www.goodtv.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_GOODTV.png" style="max-width:100%; margin-top:10px;" /></a></div>
									GOODTV
								</div>
								<div class="divCompany">
									<div><a href="http://www.kornicglory.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_KornicGlory.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)코닉글로리
								</div>
								<div class="divCompany">
									<div><a href="http://www.on-test.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_Ontest.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)온테스트
								</div>
								<div class="divCompany">
									<div><a href="http://www.power-gen.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_Powergen.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)파워젠
								</div>
								<div class="divCompany">
									<div><a href="http://www.gtplus.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_GTPlus.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)지티플러스
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.fouroclockdg.com/" target="_blank"><img src="/Images/License/img_LOGO_Fouroclockdg.gif" style="height:40px; max-width:100%; " /></a></div>
									포어클락디자인그룹
								</div>
								<div class="divCompany">
									<div><a href="http://mcscience.com/" target="_blank"><img src="/Images/License/img_LOGO_McScience.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(주)맥사이언스
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.phoenixon.com/" target="_blank"><img src="/Images/License/img_LOGO_Phoenixon.png" style="height:40px; max-width:100%; " /></a></div>
									(주)피닉슨컨트롤스
								</div>
								<div class="divCompany">
									<div><a href="http://www.cesco.co.kr/Cesco/default.aspx" target="_blank"><img src="/Images/License/img_LOGO_CESCO.png" style="max-width:90%; margin-top:0px;" /></a></div>
									(주)세스코
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.shhphone.com" target="_blank"><img src="/Images/License/img_LOGO_shhphone.png" style="height:40px; max-width:90%; margin-top:0px;" /></a></div>
									(주)쉬폰코퍼레이션코리아
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.etechsystem.co.kr" target="_blank"><img src="/Images/License/img_LOGO_eTechSystem.png" style="height:40px; max-width:90%; margin-top:0px;" /></a></div>
									(주)이테크시스템
								</div>
								<div class="divCompany">
									<div><a href="http://www.digitron.kr/" target="_blank"><img src="/Images/License/img_LOGO_Digitron.png" style="height:40px; max-width:90%; margin-top:10px;" /></a></div>
									(주)디지트론
								</div>
								<div class="divCompany">
									<div><a href="http://www.feelaware.com/ " target="_blank"><img src="/Images/License/img_LOGO_Feelaware.png" style="height:40px; max-width:90%; margin-top:10px;" /></a></div>
									(주)필라웨어
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.sycns.com/sycns/main/main.asp" target="_blank"><img src="/Images/License/img_LOGO_SeyunCNS.png" style="height:30px; max-width:90%; margin-top:5px;" /></a></div>
									(주)세윤씨앤에스
								</div>
								<div class="divCompany">
									<div><a href="http://www.topes.com/en/html/common/index.asp" target="_blank"><img src="/Images/License/img_LOGO_Topes.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)토페즈
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.unimation.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_UnimationKorea.png" style="height:25px; max-width:90%; margin-top:10px;" /></a></div>
									(주)유니메이션코리아
								</div>
								<div class="divCompany">
									<div><a href="http://www.wisenut.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_WiseNut.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)와이즈넛
								</div>
								<div class="divCompany">
									<div><a href="http://www.nitechs.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_NITechs.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									엔아이티(주)
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.rfxsoft.com/main/" target="_blank"><img src="/Images/License/img_LOGO_RFxSoft.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)알에프엑스소프트
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.siwancom.com/" target="_blank"><img src="/Images/License/img_LOGO_SiwanCom.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)시완커뮤니케이션즈
								</div>
								<div class="divCompany">
									<div><a href="http://kovifa.com/" target="_blank"><img src="/Images/License/img_LOGO_KOVIFA.png" style="height:40px; max-width:100%; margin-top:5px;" /></a></div>
									KOVI FA
								</div>
								<div class="divCompany">
									<div><a href="http://www.kstec.co.kr/main/" target="_blank"><img src="/Images/License/img_LOGO_KSTEC.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)지식시스템
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.bizho.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_BHSoft.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)비에이치소프트
								</div>
								<div class="divCompany">
									<div><a href="http://www.woojinplaimm.com/kor/main/index.php" target="_blank"><img src="/Images/License/img_LOGO_WoojinPlaimm.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)우진플라임
								</div>
								<div class="divCompany">
									<div><a href="http://www.hbee.co.kr" target="_blank"><img src="/Images/License/img_LOGO_hbee.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)에이치비
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.e-hcg.com" target="_blank"><img src="/Images/License/img_LOGO_HumanConsultingGroup.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(주)휴먼컨설팅그룹
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://clseng.co.kr/html/" target="_blank"><img src="/Images/License/img_LOGO_CLSeng.png" style="height:40px; max-width:100%; margin-top:0px;" /></a></div>
									(주)시엘에스이엔지
								</div>
								<div class="divCompany">
									<div><a href="http://www.irm.kr/" target="_blank"><img src="/Images/License/img_LOGO_IRM.png" style="height:40px; max-width:100%; margin-top:3px;" /></a></div>
									(주)아이알엠
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.asiainfo.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_AsiaInfoComm.png" style="height:30px; max-width:100%; margin-top:10px;" /></a></div>
									(주)아시아정보통신
								</div>
								<div class="divCompany">
									<div><a href="http://www.citech.kr/" target="_blank"><img src="/Images/License/img_LOGO_CITech.png" style="height:35px; max-width:90%; margin-top:5px;" /></a></div>
									(주)씨아이테크
								</div>
								<div class="divCompany">
									<div><a href="http://www.eprime.or.kr/index.asp" target="_blank"><img src="/Images/License/img_LOGO_ePrime.png" style="height:35px; max-width:90%; margin-top:5px;" /></a></div>
									(주)이프라임
								</div>
								<div class="divCompany">
									<div><a href="http://www.cngone.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_CNGOne.png" style="height:40px; max-width:95%; margin-top:2px;" /></a></div>
									(주)시앤지원
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.redwoodk.com/" target="_blank"><img src="/Images/License/img_LOGO_RedwoodK.png" style="height:30px; max-width:90%; margin-top:5px;" /></a></div>
									(주)레드우드케이
								</div>
								-->	
								<div style="clear:both;"></div>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>합격기준</h5>
							<div class="tap_header">
								<ul class="tapMenu">
									<li class="on"><a href="#this" title="C프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/License/CProgrammingMaster_Acceptance.asp')">C프로그래밍마스터</a></li>
									<li><a href="#this" title="Java프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/License/JavaProgrammingMaster_Acceptance.asp')">Java프로그래밍마스터</a></li>
								</ul>
							</div>
							<div id="ConDetail" class="tap_content"></div>
						</div>
						
						<div class="con_wrap1709 mar_t20">
							<div class="divTable">
								<table class="padding2px">
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:15%">
										<col style="width:20%">
										<col style="width:10%">
										<col style="width:15%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">등록주무부처</th>
											<th scope="col">등록</th>
											<th scope="col">등록번호</th>
											<th scope="col">자격명칭</th>
											<th scope="col">자격등급</th>
											<th scope="col">자격관리기관</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">미래창조과학부</td>
											<td class="c">한국직업능력개발원</td>
											<td class="c">2016-003175</td>
											<td class="c">C프로그래밍마스터</td>
											<td class="c">단일등급</td>
											<td class="c">(주)비트컴퓨터</td>
										</tr>
										<tr>
											<td class="c">미래창조과학부</td>
											<td class="c">한국직업능력개발원</td>
											<td class="c">2016-003174</td>
											<td class="c">Java프로그래밍마스터</td>
											<td class="c">단일등급</td>
											<td class="c">(주)비트컴퓨터</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>자격 정보</h5>
							<div class="tap_header">
								<ul class="tapMenu">
									<li class="on"><a href="#this" title="C프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetailInfo', '', '/Course/License/CProgrammingMaster_Details.asp')">C프로그래밍마스터</a></li>
									<li><a href="#this" title="Java프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetailInfo', '', '/Course/License/JavaProgrammingMaster_Details.asp')">Java프로그래밍마스터</a></li>
								</ul>
							</div>
							<div id="ConDetailInfo" class="tap_content"></div>
						</div>
						
						<div class="con_wrap1709">
							<h5>자격증 샘플</h5>
							<div style="width:360px; float:left; ">
								<a href="/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg" target="_blank"><img class="boxShadow" src="/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg" width="340"/></a>
							</div> 
							<div style="width:360px; float:right; ">
								<a href="/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg" target="_blank"><img class="boxShadow" src="/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg" width="340"/></a>
							</div>
							<div style="clear:both;"></div>
						</div>
						
						<div class="con_wrap1709 last">							
							<!--
							<h5><div style="width:340px; float:left; margin-right:4px;">C민간자격등록증</div> <div style="width:340px; float:left; ">Java민간자격등록증</div></h5>
							<div style="clear:both;"></div>
							-->
							<h5>민간자격등록증</h5>
							<div style="width:360px; float:left;">
								<a href="/Images/Content/img_CProgrammingMaster.png" target="_blank"><img class="boxShadow" src="/Images/Content/img_CProgrammingMaster.png" width="340"/></a>
							</div> 
							<div style="width:360px; float:right; ">
								<a href="/Images/Content/img_JavaProgrammingMaster.png" target="_blank"><img class="boxShadow" src="/Images/Content/img_JavaProgrammingMaster.png" width="340"/></a>
							</div>
							<div style="clear:both;"></div>
							
							<br/>
							<p>자격증 관련 문의 : 02.3486.1421 / <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a></p>
							
							<div style="width:23%; margin:30px auto 50px auto;">
								<a href="/Register/Request/register_license1.asp" class="btnGreenBorder big">지원하기</a>
							</div>

						</div>
					</section>
				</div>
				
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>

		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>