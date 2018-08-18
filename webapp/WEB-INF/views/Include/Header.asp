
<div id="Header_Wrap" STYLE="background: url(/Images/Common/bg_headerRESPONSIVE.png) repeat-x; height:109px; box-shadow:0px 3px 3px #6f6f6f; margin-bottom:15px;">	
	<header id="Header">
		<h1 style="color:white; font-size:10pt; letter-spacing:-1pt; line-height:34px; overflow:hidden;">
			입학이 긍지가 되고 수료가 날개가 되는 
			<span style="color:#ffe680;">상위 1% 전문가</span>를 만드는 <span style="color:#bfd98c;">비트교육센터<a href="/" style="float:right;">
				<!--<img src="/Images/Common/h2_logoRESPONSIVE.png" id="LogoSmall" style="height:26px; margin-top:4px;"></a>-->
			</span>
			<!--<img src="/Images/Common/h1_01.png" alt="입학이 긍지가 되고 수료가 날개가 되는 상위 1% 전문가를 만드는 비트교육센터">-->
			<!--<h2><a href="/"><img src="/Images/Common/h2_logo.png" alt="비트교육센터 로고"></a></h2>-->
			<div style="clear:both;"></div>
		</h1>
		<!--
		<h2 id="LogoOriginal"><a href="/"><img src="/Images/Common/h2_logoRESPONSIVE.png"/></a>
			<span style="color:white; font-size:9pt; letter-spacing:-0.5pt; vertical-align:-7px; margin-left:-1px;">"상위 1% 전문가 양성을 위한 교육"</span>
		</h2>
		-->
		<div id="LogoOriginal" style="margin-top:15px; float:left;">
			<a href="/"><img src="/Images/Common/h2_logoRESPONSIVE.png" style="cursor:pointer;"/></a>
			<span style="color:white; font-size:9pt; letter-spacing:-0.5pt; vertical-align:-7px; margin-left:-1px;">"상위 1% 전문가 양성을 위한 교육"</span>
		</div>

		<nav id="GNB_Wrap">
			<span style="float:right;">
				<a href="https://twitter.com/bit_academy" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnT.png" style="margin-top:5px;"/></a>
				<a href="https://www.facebook.com/Bitschool" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnF.png" style="margin-top:5px;"/></a>
				<a href="http://www.bitacademy.com/Support/Support_cacaoView.asp" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnC.png" style="margin-top:5px;"/></a>
				<a href="http://bitacademy.blog.me/" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnB.png" style="margin-top:5px; margin-right:15px;"/></a>
			
				<ul class="gnb">
					<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
					<li><a href="/Member/IPIN/Join_step1.asp" title="LOGIN" class="depth5">회원가입</a></li>
					<li><a href="/Member/login.asp" title="LOGIN" class="depth5">Login</a></li>
					<%	else	%>
					<li><a href="/Member/logout.asp" title="LOGOUT" class="depth6">Logout</a></li>
					<%	end if	%>
					<li><a href="/Member/siteMap.asp" title="SITEMAP" class="depth2">SiteMap</a></li>
					<li class="last"><a href="/Member/notice_list.asp" title="MEMBER" class="depth3">Member</a></li>
				</ul>
			</span>
			
				
			
		</nav>
		<nav id="LNB_Wrap">
			<ul class="lnb">
				<li class="depth1 no1"><a href="/Course/Expert/Course_Expert.asp" title="과정안내" class="depth1_1" style="margin-top:10px;">과정안내</a>
					<!--<ul class="depth2 no1">-->
					<ul class="depth2 no1" style="top:36px;">
						<!--<li class="gnbImg"></li>-->
						<!--
						<li>
							<a href="#this" style="padding-top:8px; line-height:14px;">제4차 산업혁명 <br/>선도인력 양성과정</a>
							<ul class="depth3 no1">
								<li><a href="/Course/Industry4.0/Course_Expert_BigDataSystem.asp">빅데이터 시스템 개발 전문가과정</a></li>
							</ul>
						</li>
						-->
						<li>
							<a href="/Course/Expert/Course_Expert.asp" title="전문가과정">전문가과정</a>
							<ul class="depth3 no1">
								<li><a href="/Course/Expert/Course_Expert.asp">전문가과정 소개</a></li>
								<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp">자바 전문가과정</a></li>
								<li><a href="/Course/Expert/Course_Expert_Embedded.asp">Embedded System 전문가과정</a></li>
								<li><a href="/Course/Expert/Course_Expert_ClientServerExpert.asp">Client/Server 전문가과정</a></li>
								<li><a href="/Course/BITsupporters_2016.asp">SW개발자 후견인 제도</a></li>
								<li><a href="/Course/Expert/Course_Expert_BITproject.asp">비트프로젝트</a></li>
								<li><a href="/Education/Education_swMembership.asp">삼성소프트웨어멤버쉽 안내</a></li>
								<li><a href="/Education/Education_Competition2016.asp">IT 계열 공모전 안내</a></li>
								<!--
								<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp">Java 전문가과정</a></li>
								<li><a href="/Course/Expert/Course_Expert_ClientServer.asp">Client/Server</a></li>
								<li><a href="/Course/Expert/Course_Expert_NetworkExpert.asp">Network Expert</a></li>
								<li><a href="/Course/Expert/Course_Expert_NetExpert.asp">.NET Expert</a></li>
								-->
							</ul>
						</li>
						
						<style>
							.dnone {
								DISPLAY:NONE !important;
							}
						</style>
						
						<li>
							<a href="/Course/Employ/Course_Employ.asp" title="신입채용프로그램">신입사원 채용교육</a>
							<ul class="depth3 no2">
								<li><a href="/Course/Employ/Course_Employ.asp">신입사원 채용교육 소개</a></li>
								<li><a href="/Course/Employ/Course_Employ_PSK.asp">㈜피에스케이</a></li>
								<li><a href="/Course/Employ/Course_Employ_BizTechPartners.asp">㈜비즈테크파트너스 [모집중]</a></li>
								<li><a href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">㈜태하메카트로닉스 [모집중]</a></li>
								<li><a href="/Course/Employ/Course_Employ_ivis.asp">㈜아이비스 [모집중]</a></li>
								<li><a href="/Course/Employ/Course_Employ_LEETECH.asp">㈜리텍 [모집중]</a></li>
								<li><a href="/Course/Employ/Course_Employ_voiceye.asp">㈜보이스아이 [모집중]</a></li>
								<!--<li><a href="/Course/Employ/Course_Employ_Semics.asp">㈜쎄믹스 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_DareInc.asp">㈜다래아이엔씨 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_QMC.asp">㈜큐엠씨 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_TwoSonSoft.asp">㈜두손소프트 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_Hanains2017.asp">㈜하나아이앤에스 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_TobeSoft.asp">㈜투비소프트 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_DIGIENCE.asp">㈜디지엔스 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_KCTech.asp">㈜케이씨텍 [모집중]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_IntekDigital.asp">㈜인텍디지탈 [모집중]</a></li>-->
								<!--
								<li><a href="/Course/Employ/Course_Employ_Netville.asp" class="dnone">㈜네트빌 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_ePapyrus.asp" class="dnone">㈜이파피루스 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_Obigo.asp" class="dnone">㈜오비고 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_BitComputer.asp" class="dnone">㈜비트컴퓨터 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_MarkAny.asp" class="dnone">㈜마크애니 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_CIMON.asp" class="dnone">㈜싸이몬 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_SoosanINT.asp" class="dnone">㈜수산아이앤티 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_HumanSoftware.asp" class="dnone">㈜휴먼소프트웨어 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_whiteinfocomm.asp" class="dnone">㈜화이트정보통신 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_atec.asp" class="dnone">㈜에이텍 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_commercei.asp" class="dnone">㈜디지털에셋 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_netcruz_Java.asp" class="dnone">㈜넷크루즈(JAVA Expert) [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_netcruz_ClientServer.asp" class="dnone">㈜넷크루즈(Client/Server) [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_diginc.asp " class="dnone">㈜디지엔스 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_eujen.asp" class="dnone">㈜유진로봇 [상시채용]</a></li>
								<li><a href="/Course/Employ/Course_Employ_exicon.asp" class="dnone">㈜엑시콘 [상시채용]</a></li>
								-->
								<!--<li><a href="/Course/Employ/Course_Employ_netcruz.asp" class="dnone">㈜넷크루즈 [모집중]</a></li>-->
								<li><a href="/Course/BITsupporters_2016.asp">SW개발자 후견인 제도</a></li>
							</ul>
						</li>
						<li>
							<a href="/Course/Kukka/Course_Kukka_2017.asp" title="국비지원 무료과정">국비지원 무료과정</a>
							<ul class="depth3 no3">
								<li><a href="/Course/Kukka/Course_Kukka_2017.asp">국비지원 무료과정 소개</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2017.asp">C 기반 Embedded Linux 시스템 고급인력 양성과정</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2017.asp">JAVA 기반 빅데이터 처리를 위한 분산정보시스템 개발자 양성과정</a></li>
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebStandards_2017.asp">JAVA 기반 웹표준/웹프로그래밍 고급인력 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_BigDataSystem.asp">빅데이터 시스템 개발 전문가과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Chung_InKyong_shortterm.asp">SW입문자를 위한<br/> App 제작과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Chung_InKyong_longterm.asp">JAVA Web &amp; Mobile<br/> 고급인력 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedIoT_2016.asp">IoT 디바이스 개발을 위한<br/> 임베디드 시스템 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaEnterprise_2016.asp">JAVA Enterprise 시스템 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaDatabase_2016.asp">JAVA 기반 Database 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2016.asp">JAVA 기반 빅데이터 처리를 위한 <br/>분산정보시스템 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebStandards_2016.asp">JAVA 기반 <br/>웹표준/웹프로그래밍 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebMobile_2016.asp">JAVA Web & Mobile 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2016.asp">C 기반 Embedded Linux <br/>시스템 개발자 양성과정</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaSpringMobile_2016.asp">JAVA Spring Framework을 활용한 <br/>모바일 앱 개발자 양성과정</a></li>-->
								
							</ul>
						</li>
						<li>
							<a href="/Course/shortCourse/Course_shortCourse_acception.asp" title="프로그래밍과정 / 핵심역량과정">프로그래밍 / 핵심역량과정</a>
							<ul class="depth3 no4">
								<li><a href="/Course/shortCourse/Course_shortCourse_acception.asp">모집중인 과정</a></li>
								<li><a href="/Course/ShortCourse/Course_shortCourse_Vacation_Summer_2017.asp">2017년 여름방학특강</a></li>
								<!--
								<li><a href="/Course/shortCourse/Course_shortCourse_acception.asp">모집중인 과정</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_lanuageMaster.asp">Language Master</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp">SW Visualization</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_javaWeb.asp">Java Web</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_mobile.asp">모바일</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_sw.asp">SW공학</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_dataBase.asp">DataBase</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_webDesign.asp">Web & Design</a></li>
								-->
								<li><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp">고용보험환급안내</a></li>
								<!--<li><a href="/Course/shortCourse/DetailPage/Course_cMaster.asp">C Master (C+자료구조)</a></li>-->
								<!--
								<li><a href="/Course/ShortCourse/DetailPage/Course_c.asp">C Programming (평일)</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">C Programming (주말)</a></li>
								-->
								<li><a href="/Course/ShortCourse/Courses_C.asp">C Programming</a></li>
								<!--<li><a href="/Course/ShortCourse/DetailPage/Course_Cmaster.asp" >C Master</a></li>-->
								<!--<li><a href="/Course/ShortCourse/DetailPage/Course_C2vacation.asp" >자료구조</a></li>-->
				
								<li><a href="/Course/ShortCourse/DetailPage/Course_c2.asp">자료구조 및 초급 알고리즘</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp">문제해결을 위한 중급 알고리즘</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp">문제해결을 위한 고급 알고리즘</a></li>
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">C++ Programming</a></li>
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_java.asp">[주중반] JAVA Programming</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">[주말반] JAVA Programming</a></li>
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp">Python Programming</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_cShap.asp">C# Programming</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_RaspberryPi_Audio.asp">세상과 소통하는 라즈베리파이 오디오 만들기 교실</a></li>
								
								<!--<li><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp">데이터 사이언스 과정</a></li>-->
								<li><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp" class="newdepth3">R을 사용한 데이터 분석과 머신러닝 (초급)</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning2.asp" class="newdepth3">R을 사용한 데이터 분석과 머신러닝 (중급)</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_PracticalMachineLearningPython.asp" class="newdepth3">실용 머신러닝 초급 - Python</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLD.asp">국가공인 SQL 개발(SQLD) 자격 검정 준비반</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLP.asp">국가공인 SQL 전문가(SQLP) 자격 검정 준비반</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_ADsP.asp">국가공인 데이터 분석 준전문가 자격검증(ADsP) 준비반</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_DAP.asp">국가공인 데이터 아키텍처 전문가(DAP) 자격 검정 준비반</a></li>
								
								<!--<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp">SW Visualization</a></li>-->
								<li><a href="/Course/shortCourse/DetailPage/Course_Nodejs.asp">Java Web</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_Agile4Developer.asp">IT PM</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_android.asp">Mobile</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_TestingAutomation.asp">SW공학</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_SearchEngine.asp">DataBase</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_RaspberryPi.asp">Embedded</a></li>
								<!--<li><a href="/Course/shortCourse/DetailPage/Course_OCJP.asp">Java 자격증 취득</a></li>-->
							</ul>
						</li>
						<!--
						<li>
							<a href="/Course/BitDesign/BitDesign_intro.asp" title="비트디자인과정">비트디자인과정</a>
							<ul class="depth3 no6">
								<li><a href="/Course/BitDesign/BitDesign_intro.asp">비트디자인과정 소개</a></li>
								<li><a href="/Course/BitDesign/BitDesign_synthesize.asp">종합반(취업반)</a></li>
								<li><a href="/Course/BitDesign/BitDesign_shortCourse.asp">단과과정</a></li>
								<li><a href="/Course/BitDesign/BitDesign_license.asp">자격증 과정</a></li>
								<li><a href="/Course/BitDesign/BitDesign_Color.asp">컬러융합과정</a></li>
								<li><a href="/Course/BitDesign/BitDesign_creative.asp">크리에이티브과정</a></li>
							</ul>
						</li>
						-->
						<li>
							<a href="/Course/LocalCampus/localCampus_info.asp" title="대학비트교육센터">대학비트교육센터</a>
							<ul class="depth3 no5">
								<li><a href="/Course/LocalCampus/localCampus_info.asp">대학비트교육센터 소개</a></li>
								<li><a href="/Course/LocalCampus/localCampus_asan.asp">아산캠퍼스</a></li>
								<li><a href="/Course/LocalCampus/localCampus_gunpo.asp">군포캠퍼스</a></li>
								<li><a href="/Course/LocalCampus/localCampus_deajeon.asp">대전캠퍼스</a></li>
								<li><a href="/Course/LocalCampus/localCampus_busan.asp">부산캠퍼스</a></li>
								<li><a href="/Course/LocalCampus/localCampus_vacation.asp">대학 방학특강</a></li>
							</ul>
						</li>
						<!--
						<li>
							<a href="/Course/JopAcademy/JopAcademy_info.asp" title="청년취업아카데미">청년취업 아카데미</a>
							<ul class="depth3 no7">
								<li><a href="/Course/JopAcademy/JopAcademy_info.asp">청년취업아카데미소개</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_soonChun_windowNet.asp">Windows .NET (순천향대)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_soonChun_javaWeb.asp">JAVA Web&amp;Mobile(순천향대)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_polytechnic_javaWeb.asp">JAVA Web&amp;Mobile(산기대)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_seokyeong_javaWeb.asp">JAVA Web&amp;Mobile(서경대)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_sangmyung_javaMobile.asp">JAVA Mobile(상명대)</a></li>
							</ul>
						</li>
						<li class="last"><a href="/Course/Qolt/Qolt_info.asp" title="장애인SW인력양성" class="bg_none">장애인SW인력양성</a></li>
						-->
						<li>
							<a href="/Course/Teachers/Course_Teachers.asp" title="전문교원양성과정">소프트웨어 전문교원양성과정</a>
							<ul class="depth3 no6">
								<li><a href="/Course/Teachers/Course_Teachers.asp">전문교원양성과정 소개</a></li>
								<li><a href="/Course/Teachers/Course_RaspberryPi_iFrame.asp">라즈베리파이를 이용한 오디오 만들기</a></li>
								<!--
								<li><a href="/Course/Teachers/Course_C.asp">C Programming</a></li>
								<li style="display:none;"><a href="/Course/Teachers/Course_DS.asp">자료구조 (C 기반)</a></li>
								<li><a href="/Course/Teachers/Course_CPP.asp">C++ Programming</a></li>
								<li><a href="/Course/Teachers/Course_Java.asp">Java Programming</a></li>
								<li style="display:none;"><a href="/Course/Teachers/Course_CapstoneDesign.asp">캡스톤 디자인 과제 수행 방법론과 관리</a></li>
								-->
							</ul>
						</li>
						<li>
							<a href="/Course/License/Course_Licenses.asp" title="비트 SW 자격증">비트 SW 자격증</a>
							<ul class="depth3 no7">
								<li><a href="/Course/License/Course_License_Expert.asp">비트 SW Expert 자격증</a></li>
								<li><a href="/Course/License/Course_Licenses.asp">BSPM(BIT Software Programming Master)자격증</a></li>
							</ul>
						</li>
						<li style="display:none;">
							<a href="/Course/Develop/Course_Develop.asp" title="개발자과정">개발자과정</a>
							<ul class="depth3 no8">
								<li><a href="/Course/Develop/Course_Develop.asp">개발자과정 소개</a></li>
								<li><a href="/Course/Develop/Course_Develop_Windows_2017.asp">윈도우 개발자과정</a></li>
								<li><a href="/Course/Develop/Course_Develop_Web_2017.asp">웹표준 개발자과정</a></li>
								<li><a href="/Course/Develop/Course_Develop_Android_2017.asp">안드로이드 개발자과정</a></li>
								<li><a href="/Course/Develop/Course_Develop_Project_2017.asp">실무프로젝트 개발자과정</a></li>	
							</ul>
						</li>
						
					</ul>
				</li>
				<li class="depth1 no2"><a href="/Register/Request/register_shortCourse.asp" title="수강신청" class="depth1_2" style="margin-top:10px;">수강신청</a><!--/Register/register_info.asp-->
					<ul class="depth2 no2" style="top:36px;">
						<!--<li><a href="/Register/register_info.asp" class="bg_none">온라인지원안내</a></li>-->
						<li>
							<a href="/Register/Request/register_shortCourse.asp">신규지원</a><!--/Register/register_newRequest.asp-->
							<ul class="depth3 no1">
								<!--<li><a href="/Register/Request/register_4thIR1.asp">제4차 산업혁명 선도인력 양성과정</a></li>-->
								<li><a href="/Register/Request/register_expert1.asp">전문가과정</a></li>
								<!--<li><a href="/Register/Request/register_coursePresentation.asp">교육설명회</a></li>-->
								<li><a href="/Register/Request/register_employment1.asp">신입사원 채용교육</a></li>
								<li><a href="/Register/Request/register_kukka1.asp">국비지원무료과정</a></li>
								<li><a href="/Register/Request/register_chung1.asp">청년취업아카데미</a></li>
								<!--
								<li><a href="/Register/Request/register_kukka1.asp">국가기간 전략산업 직종훈련</a></li>
								<li><a href="/Register/Request/register_embeddedHigh1.asp">임베디드 고급인력 양성과정</a></li>
								-->
								<li style="DISPLAY:NONE;"><a href="/Register/Request/register_developer.asp">개발자과정</a></li>
								<li><a href="/Register/Request/register_shortCourse.asp">프로그래밍과정</a></li>
								<!--<li><a href="/Register/Request/register_bitDesign.asp">비트디자인교육센터</a></li>-->
								<!--
								<li><a href="/Register/Request/register_university.asp">대학비트교육사업</a></li>
								<li><a href="/Register/Request/register_localCampus.asp">지방캠퍼스</a></li>
								-->
								<li><a href="/Register/Request/register_localCampus.asp">대학비트교육과정</a></li>
								<li><a href="/Register/Request/register_license1.asp">비트 SW 프로그래밍 자격증과정</a></li>
							</ul>
						</li>
						<li><a href="/Register/register_requestResult.asp" class="bg_none">지원결과</a></li>
						<li><a href="/Register/register_paymentStep.asp" class="bg_none">결제절차</a></li>
						<li><a href="/Register/card_approval.asp" class="bg_none">카드결제</a></li>
						<li class="last"><a href="/Register/register_depositCheck.asp" class="bg_none">입금확인</a></li>
					</ul>
				</li>
				<li class="depth1 no3"><a href="/Employment/employment_jobCenter.asp" title="취업센터" class="depth1_3" style="margin-top:10px;">취업센터</a>
					<ul class="depth2 no3" style="top:36px;">
						<li><a href="/Employment/employment_jobCenter.asp" class="bg_none" target="_blank">비트교육센터 취업센터</a></li>
						<li><a href="/job/WriteRecruit.asp" class="bg_none">구인의뢰 신청</a></li>
						<li><a href="/job/List.asp" class="bg_none">채용정보 확인</a></li>	
						<li><a href="/job/Interview.asp" class="bg_none">면접후기</a></li>	
						<li><a href="/Employment/employment_bitAdvantage.asp" class="bg_none">비트출신 장점</a></li>
						<li><a href="/Employment/employment_company.asp" class="bg_none">비트출신 진출기업</a></li>
						<li class="last"><a href="/Employment/employment_companyEmployment.asp" class="bg_none">신입채용교육 진행 기업</a></li>
					</ul>
				</li>
				<li class="depth1 no4"><a href="/Education/Education_info.asp" title="교육컨설팅" class="depth1_4" style="margin-top:10px;">교육컨설팅</a>
					<ul class="depth2 no4" style="top:36px;">
						<li>
							<a href="/Education/Education_info.asp">기업위탁교육 소개</a>
							<ul class="depth3 no1">
								<li><a href="/Education/Education_info.asp">기업위탁교육 소개</a></li>
								<li><a href="/Education/Education_advantage.asp">위탁교육강점</a></li>
								<li><a href="/Education/Education_process.asp">위탁교육절차</a></li>
								<li><a href="/Education/Education_performance.asp">위탁교육수행실적</a></li>
								<li><a href="/Education/Education_application.asp">상담 및 교육신청</a></li>
							</ul>
						</li>
						<li><a href="/Education/Education_swMembership.asp" class="bg_none">삼성소프트웨어멤버쉽</a></li>
						<li><a href="/Education/Education_consortium.asp" class="bg_none">국가인적자원개발컨소시엄</a></li>
						<!--<li><a href="#this" title="">국가인적자원개발소시엄</a></li>-->
					</ul>
				</li>
				<li class="depth1 no5"><a href="/Center/Center_info.asp" title="" class="depth1_5" style="margin-top:10px;">센터소개</a>
					<ul class="depth2 no5" style="top:36px;">
						<li><a href="/Center/Center_info.asp" class="bg_none">비트교육센터 소개</a></li>
						<li><a href="/Center/Center_feature.asp" class="bg_none">비트교육센터 특징</a></li>
						<li><a href="/Center/Center_history.asp" class="bg_none">비트교육센터 연혁</a></li>
						<li class="last"><a href="/Center/Center_gallery.asp" class="bg_none">교육환경</a></li>
					</ul>
				</li>

				<li class="depth1 no6"><a href="/Support/Support_consult_ask.asp" title="" class="depth1_6 bg_none" style="margin-top:10px;">지원안내</a>
					<ul class="depth2 no5" style="top:36px;">
						<li><a href="/Support/Support_online_list.asp" class="bg_none">Q&A</a></li>
						<li><a href="/Support/Support_etcRent.asp" class="bg_none">강의실 임대문의</a></li>
						<li>
							<a href="/Support/Support_faq_etc.asp">자주묻는질문</a>
							<ul class="depth3 no1">
								<!--<li><a href="/Support/Support_faq.asp">전문가과정</a></li>-->
								<li style="display:none;"><a href="/Support/Support_labor_favor.asp">노동부지원혜택</a></li>
								<li><a href="/Support/Support_tuition_info.asp">수강료안내</a></li>
								<li><a href="/Support/Support_faq_etc.asp">기타문의사항</a></li>
							</ul>
						</li>
						<li><a href="/Support/Support_consult_ask.asp" class="bg_none">상담문의</a></li>
						<li><a href="/Support/Support_certification.asp" class="bg_none">자격증 및 확인서 신청</a></li>
						<li><a href="/Support/Support_instructor.asp" class="bg_none">비트교육센터 강사모집</a></li>
						<li class="last"><a href="/Support/Support_cacaoView.asp" class="bg_none">카카오톡 친구추가 방법</a></li>
					</ul>
				</li>

			</ul>
		</nav>
		<a href="#this" class="totalCourse" title="클릭시 전체과정 오픈"><img src="/Images/Common/btn_totalMenu_open.png" alt="전체과정 오픈"></a>
		
	</header>
	
	<style>
		div.totalMenu_list {
			padding-left:10px !important;
			padding-right:10px !important;
			font-size:1.1em;
			line-height:1.8em !important;			
		}
	</style>
	<div class="totalMenu_wrap">
		<div class="totalMenu" style="height:720px; background:#fff url('/Images/Common/bg_totalCourse2.jpg') repeat-y;">
			<div class="totalMenu_list" style="height:680px;">
				<!--
				<h5><a href="/Course/Industry4.0/Course_Expert_BigDataSystem.asp" style="font-size:12pt;">제4차 산업혁명 선도인력 양성과정</a></h5>
				<ul class="depth1">
					<li><a href="/Course/Industry4.0/Course_Expert_BigDataSystem.asp">빅데이터 시스템 개발 전문가과정</a></li>
				</ul>
				
				<div style="height:40px;"></div>
				-->
				
				<h5><a href="/Course/Expert/Course_Expert.asp" style="font-size:12pt;">전문가과정</a></h5> <!--전체과정-->
				<ul class="depth1">
					<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp">자바 전문가과정</a></li>
					<li><a href="/Course/Expert/Course_Expert_Embedded.asp">Embedded System Expert</a></li>
					<li><a href="/Course/Expert/Course_Expert_ClientServerExpert.asp">Client/Server Expert</a></li>
					<!--
					<li><a href="/Course/BITsupporters_2016.asp" >SW개발자 후견인 제도</a></li>
					<li><a href="/Course/Expert/Course_Expert_BITproject.asp">비트프로젝트</a></li>
					<li><a href="/Education/Education_swMembership.asp">삼성소프트웨어멤버쉽</a></li>
					-->
					<!--
					<li><a href="/Course/Expert/Course_Expert_ClientServer.asp">Client / Server</a></li>
					<li><a href="/Course/Expert/Course_Expert_NetworkExpert.asp">Network Expert</a></li>
					<li><a href="/Course/Expert/Course_Expert_NetExpert.asp">.NET Expert</a></li>
					-->
				</ul>
			</div>
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/Employ/Course_Employ.asp" style="font-size:12pt;">신입사원 채용교육</a></h5> <!--전체과정-->
				<ul class="depth1">
					<li><a href="/Course/Employ/Course_Employ_PSK.asp">㈜피에스케이</a></li>
					<li><a href="/Course/Employ/Course_Employ_BizTechPartners.asp">㈜비즈테크파트너스</a></li>
					<li><a href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">㈜태하메카트로닉스</a></li>
					<li><a href="/Course/Employ/Course_Employ_ivis.asp">㈜아이비스</a></li>
					<li><a href="/Course/Employ/Course_Employ_LEETECH.asp">㈜리텍</a></li>
					<li><a href="/Course/Employ/Course_Employ_voiceye.asp">㈜보이스아이</a></li>
					
				</ul>
			</div>
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/Kukka/Course_Kukka.asp" style="font-size:12pt;">국비지원 무료과정</a></h5> <!--전체과정-->
				<ul class="depth1">
					<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2017.asp">C 기반 Embedded Linux 시스템 고급인력 양성과정</a></li>
					<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2017.asp">JAVA 기반 빅데이터 처리를 위한 분산정보시스템 개발자 양성과정</a></li>
				</ul>
			</div>
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/shortCourse/Course_shortCourse_acception.asp" style="font-size:12pt;">프로그래밍과정</a></h5> <!--전체과정-->
				<ul class="depth1">
					<li><a href="/Course/ShortCourse/Course_shortCourse_Vacation_Summer_2017.asp">2017년 여름방학특강</a></li>
								
					<li><a href="/Course/ShortCourse/DetailPage/Course_C.asp">[주중반] C Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">[주말반] C Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_C2.asp">자료구조 및 초급 알고리즘</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp">문제해결을 위한 중급 알고리즘</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp">문제해결을 위한 고급 알고리즘</a></li>
					
					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_Cmaster.asp" >C Master</a></li>-->
					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_C2vacation.asp" >자료구조</a></li>-->
				
					<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">C++ Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_java.asp">[주중반] JAVA Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">[주말반] JAVA Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp">Python Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cShap.asp">C# Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_RaspberryPi_Audio.asp">세상과 소통하는 라즈베리파이 오디오 만들기 교실</a></li>

					<li><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp">데이터 사이언스 과정</a></li>					
					<li><a href="/Course/ShortCourse/DetailPage/Course_android.asp">안드로이드 프로그래밍</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_WebPublishing.asp">웹퍼블리싱 실무</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_JavaScript.asp">웹개발자를 위한 JavaScript & AJAX</a></li>
					
					<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLD.asp">국가공인 SQL 개발(SQLD) 자격 검정 준비반</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLP.asp">국가공인 SQL 전문가(SQLP) 자격 검정 준비반</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_ADsP.asp">국가공인 데이터 분석 준전문가 자격검증(ADsP) 준비반</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_DAP.asp">국가공인 데이터 아키텍처 전문가(DAP) 자격 검정 준비반</a></li>
					
					<div style="height:20px;"></div>
					<li><a href="/Course/ShortCourse/Course_shortCourse_acception.asp">(핵심역량과정 전체보기)</a></li>

					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_cMaster.asp">C Master (C+자료구조)</a></li>-->
					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">C Programming (주말)</a></li>-->
					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">JAVA Programming (주말)</a></li>-->
					<!--
					<li><a href="/Course/ShortCourse/DetailPage/Course_c.asp">C Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_c2.asp">자료구조(C 기반)</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">C++ Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_java.asp">JAVA Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp">Python Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cShap.asp">C# Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp">Servlet & JSP</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_html5.asp">HTML5 (HTML+CSS)</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_WebPublishing.asp">웹퍼블리싱 실무과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp">SQL & JDBC</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_spring.asp">SPRING</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_aiojava.asp">All-in-One JAVA 어플리케이션 개발</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_JavaScript.asp">웹 개발자를 위한 HTML5 기반 <br/>JavaScript & jQuery 과정</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp">Software Visualization</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_ArchitectureBasic.asp">개발실무자를 위한 SW 아키텍처 입문</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_Agile4Developer.asp">개발자를 위한 애자일 SW 개발 실무</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_ITIL.asp">ITILv3를 기반으로 한 IT Service Management</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_android.asp">안드로이드 프로그래밍</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_hybrid.asp">하이브리드 프로그래밍</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_CapstoneDesign.asp">캡스톤 디자인 과제 수행 방법론과 관리</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_javaPlan.asp">JAVA 설계과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_realUml.asp">UML 실전에서는 이것만 쓴다.</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_uml.asp">실전!분석과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_designPatten.asp">객체지향 개념과 디자인 패턴</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cordingTuning.asp">자바 성능향상을 위한 코딩습관과 튜닝</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_dataBaseModeling.asp">Database Modeling</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_SearchEngine.asp">맞춤형 검색 엔진 제작 과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_springData.asp">Spring DATA + noSQL</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_dataBase.asp">Database 성능튜닝</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_StorageSystem_FMBased.asp">Flash Memory 기반 Storage System</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_RaspberryPi.asp">오픈소스 라즈베리 파이를 활용한 IoT 과정</a></li>
					-->
					<!--<li><a href="/Course/shortCourse/DetailPage/Course_OCJP.asp">Java 자격증 취득 과정</a></li>-->
				</ul>
			</div>

			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/LocalCampus/localCampus_info.asp" style="font-size:12pt;">대학비트교육센터</a></h5> <!--전체과정-->
				<ul class="depth1">
					<li><a href="/Course/LocalCampus/localCampus_asan.asp">아산캠퍼스</a></li>
					<li><a href="/Course/LocalCampus/localCampus_gunpo.asp">군포캠퍼스</a></li>
					<li><a href="/Course/LocalCampus/localCampus_deajeon.asp">대전캠퍼스</a></li>
					<li><a href="/Course/LocalCampus/localCampus_busan.asp">부산캠퍼스</a></li>
				</ul>
			</div>
			
			<a href="#this" class="delete_gray" style="top:680px;"></a>
		</div>
	</div>
</div>
<!--
<p class="gnbBg"></p>
-->