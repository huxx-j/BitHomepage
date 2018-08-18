<!--#include file="Common_CSS_SNB.inc"-->
<style>
	div.banner_wrap {
		display:none;
	}
	div#Content_Wrap {
		margin-top:10px;
	}
	.moveTop {
		left:1px;
	}
</style>

<script type="text/javascript">
	function openWrap(nox) {
		if($(".newdepth3_wrap."+nox).hasClass("on") == false) {
			// close the others.
			$(".newdepth2.newwrap").not(".newdept2.newwrap."+nox).removeClass("up").addClass("down");
			$(".newdepth3_wrap").not(".newdepth3_wrap."+nox).slideUp("slow", "easeOutQuint", function() { $(".newdepth3_wrap").not(".newdepth3_wrap."+nox).removeClass("on"); });
			// open this one(nox).
			$(".newdepth2.newwrap."+nox).addClass("on").removeClass("down").addClass("up");
			$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
		} else {
			// close this one(nox).
			$(".newdepth2.newwrap."+nox).removeClass("up").addClass("down");
			$(".newdepth3_wrap."+nox).slideUp("slow", "easeOutQuint", function() { $(".newdepth3_wrap."+nox).removeClass("on"); });
		}
	}
	// no1 : C Programming
	// no2 : Java Web
	// no3 : IT PM
	// no4 : Mobile
	// no5 : SW공학
	// no6 : Database
	// no7 : Embedded
	// no8 : JAVA Programming
	// no9 : 데이터베이스 자격검정 대비

	function onclickCP() { openWrap("no1"); return false; }
	function onclickJavaWeb() { openWrap("no2"); return false; }
	function onclickITPM() { openWrap("no3"); return false; }
	function onclickMobile() { openWrap("no4"); return false; }
	function onclickSWEngineering() { openWrap("no5"); return false; }
	function onclickDatabase() { openWrap("no6"); return false; }
	function onclickEmbedded() { openWrap("no7"); return false; }
	function onclickJP() { openWrap("no8"); return false; }
	function onclickCertifiedDatabase() { openWrap("no9"); return false; }
	function onclickDataScience() { openWrap("no10"); return false; }
	
	// Uno1 : 아산캠퍼스
	// Uno2 : 군포캠퍼스
	// Uno3 : 대전캠퍼스
	// Uno4 : 부산캠퍼스
	function onclickUnivAsan() { openWrap("Uno1"); return false; }
	function onclickUnivGunpo() { openWrap("Uno2"); return false; }
	function onclickUnivDaejeon() { openWrap("Uno3"); return false; }
	function onclickUnivBusan() { openWrap("Uno4"); return false; }
	
</script>

<nav id="SNB_Wrap_1702">
	<h3><img src="/Images/Common/ico_clipboard2_128.png" style="height:32px; margin-right:3px; margin-top:-7px;"/> 과정안내 </h3>
	<ul class="snb_1702">
		<style>
			.dnone {
				DISPLAY:NONE !important;
			}
		</style>
		
		<li>
			<a href="#this" class="newdepth1 dnone" style="letter-spacing:-0.6pt;">제4차 산업혁명 선도인력<br/> 양성과정</a>
			<ul class="newdepth2_wrap no10">
				<li><a href="/Course/Industry4.0/Course_Expert_BigDataSystem.asp" class="newdepth2">빅데이터 시스템 개발 전문가과정</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">전문가과정</a>
			<ul class="newdepth2_wrap no1">
				<li><a href="/Course/Expert/Course_Expert.asp" class="newdepth2">전문가과정 소개</a></li>
				<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp" class="newdepth2">자바 전문가과정</a></li>
				<li><a href="/Course/Expert/Course_Expert_Embedded.asp" class="newdepth2">Embedded System Expert</a></li>
				<li><a href="/Course/Expert/Course_Expert_ClientServerExpert.asp" class="newdepth2">Client/Server Expert</a></li>							
				<li><a href="/Course/BITsupporters_2016.asp" class="newdepth2">SW개발자 후견인 제도</a></li>
				<li><a href="/Course/Expert/Course_Expert_BITproject.asp" class="newdepth2">비트프로젝트</a></li>
				<!--
				<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp" class="newdepth2">Java Expert</a></li>
				<li><a href="/Education/Education_swMembership.asp" class="newdepth2">삼성소프트웨어멤버쉽 안내</a></li>
				<li><a href="/Education/Education_Competition2016.asp" class="newdepth2">IT 계열 공모전 안내</a></li>
				<li><a href="/Course/Expert/Course_Expert_ClientServer.asp" class="newdepth2">Client/Server</a></li>
				<li><a href="/Course/Expert/Course_Expert_NetworkExpert.asp" class="newdepth2">Network Expert</a></li>
				<li><a href="/Course/Expert/Course_Expert_NetExpert.asp" class="newdepth2">.NET Expert</a></li>
				-->
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">신입사원 채용교육</a>
			<ul class="newdepth2_wrap no2">
				<li><a href="/Course/Employ/Course_Employ.asp" class="newdepth2">신입사원 채용교육 소개</a></li>
				<li><a href="/Course/Employ/Course_Employ_PSK.asp" class="newdepth2">㈜피에스케이 <span class="redTxt">[모집중]</span></a></li>
				<li class="long"><a href="/Course/Employ/Course_Employ_BizTechPartners.asp" class="newdepth2">㈜비즈테크파트너스 <span class="redTxt">[모집중]</span></a></li>
				<li class="long"><a href="/Course/Employ/Course_Employ_TaehaMechatronics.asp" class="newdepth2">㈜태하메카트로닉스 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_ivis.asp" class="newdepth2">㈜아이비스 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_LEETECH.asp" class="newdepth2">㈜리텍 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_voiceye.asp" class="newdepth2">㈜보이스아이 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_Semics.asp" class="newdepth2 dnone">㈜쎄믹스 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_DareInc.asp" class="newdepth2 dnone">㈜다래아이엔씨 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_QMC.asp" class="newdepth2 dnone">㈜큐엠씨 <span class="redTxt">[모집중]</span></a></li>
				<li><a href="/Course/Employ/Course_Employ_Netville.asp" class="depth2 dnone">㈜네트빌 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_ePapyrus.asp" class="depth2 dnone">㈜이파피루스 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_Obigo.asp" class="depth2 dnone">㈜오비고 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_BitComputer.asp" class="depth2 dnone">㈜비트컴퓨터 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_MarkAny.asp" class="depth2 dnone">㈜마크애니 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_CIMON.asp" class="depth2 dnone">㈜싸이몬 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_SoosanINT.asp" class="depth2 dnone">㈜수산아이앤티 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_HumanSoftware.asp" class="depth2 dnone">㈜휴먼소프트웨어 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_whiteinfocomm.asp" class="depth2 dnone">㈜화이트정보통신 [상시채용]</a></li>				
				<li><a href="/Course/Employ/Course_Employ_atec.asp" class="depth2 dnone">㈜에이텍 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_commercei.asp" class="depth2 dnone">㈜디지털에셋 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_netcruz_Java.asp" class="depth2 dnone">㈜넷크루즈(JAVA Expert)<br>[상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_netcruz_ClientServer.asp" class="depth2 dnone">㈜넷크루즈(Client/Server)<br>[상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_eujen.asp" class="depth2 dnone">㈜유진로봇 [상시채용]</a></li>
				<li><a href="/Course/Employ/Course_Employ_exicon.asp" class="depth2 dnone">㈜엑시콘 [상시채용]</a></li>
				<!--<li><a href="/Course/Employ/Course_Employ_TwoSonSoft.asp" class="newdepth2">㈜두손소프트 <span class="redTxt">[모집중]</span></a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_Hanains2017.asp" class="newdepth2">㈜하나아이앤에스 <span class="redTxt">[모집중]</span></a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_TobeSoft.asp" class="newdepth2">㈜투비소프트 <span class="redTxt">[모집중]</span></a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_KCTech.asp" class="newdepth2">㈜케이씨텍 <span class="redTxt">[모집중]</span></a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_IntekDigital.asp" class="newdepth2">㈜인텍디지탈 <span class="redTxt">[모집중]</span></a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_hanains.asp" class="depth2 dnone">㈜하나아이앤에스 [모집중]</a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_netcruz.asp" class="depth2 dnone">㈜넷크루즈 [모집중]</a></li>-->
				<!--<li><a href="/Course/Employ/Course_Employ_DIGIENCE.asp" class="newdepth2">㈜디지엔스 <span class="redTxt">[모집중]</span></a></li>-->
				<li><a href="/Course/BITsupporters_2016.asp" class="newdepth2">SW개발자 후견인 제도</a></li>
			</ul>
		</li>

		<li>
			<a href="#this" class="newdepth1">국비지원 무료과정</a>
			<ul class="newdepth2_wrap no4">
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaEnterprise2016.asp" class="newdepth2">JAVA Enterprise<br/> 고급인력 양성과정</a></li>-->
				
				<li><a href="/Course/Kukka/Course_Kukka_2017.asp" class="newdepth2">2017년 국비지원 무료과정 소개</a></li>
				<li><a href="/Course/Kukka/Course_Chung_InKyong_shortterm.asp" style="height:22px; DISPLAY:NONE;" class="newdepth2">SW입문자를 위한 App 제작과정<!--2,3학년 대상 인천, 경남 지역 국비지원 무료교육--></a></li>
				<li><a href="/Course/Kukka/Course_Chung_InKyong_longterm.asp" style="height:22px; DISPLAY:NONE;" class="newdepth2">JAVA Web &amp; Mobile 고급인력 양성과정<!--4학년 대상 인천, 경남 지역 국비지원 무료취업교육--></a></li>
				<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2017.asp" class="newdepth2">C 기반 임베디드 리눅스 시스템 고급인력 양성과정</a></li>
				<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2017.asp" class="newdepth2" style="height:50px;">JAVA 기반 빅데이터 처리를 위한 분산정보시스템 개발자 양성과정</a></li>
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebStandards_2017.asp" class="newdepth2">자바 기반 웹표준/웹프로그래밍 고급인력 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_BigDataSystem.asp" class="newdepth2">빅데이터 시스템 개발 전문가과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedIoT_2016.asp" style="height:38px;" class="newdepth2">IoT 디바이스 개발을 위한 임베디드 시스템 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaEnterprise_2016.asp" class="newdepth2">JAVA Enterprise 시스템 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaDatabase_2016.asp" class="newdepth2">JAVA 기반 Database 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2016.asp" class="newdepth2">JAVA 기반 빅데이터 처리를 위한 분산정보시스템 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebStandards_2016.asp" class="newdepth2">JAVA 기반 웹표준/웹프로그래밍 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebMobile_2016.asp" class="newdepth2">JAVA Web & Mobile 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2016.asp" class="newdepth2">C 기반 Embedded Linux 시스템 개발자 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_JavaSpringMobile_2016.asp" class="newdepth2">JAVA Spring Framework을 활용한 모바일 앱 개발자 양성과정</a></li>-->
				
			</ul>
		</li>
		<li>
			<a href="#this" class="newdepth1">프로그래밍 / 핵심역량과정</a>
			<ul class="newdepth2_wrap no5">
				<li><a href="/Course/shortCourse/Course_shortCourse_acception.asp" class="newdepth2">모집중인 과정 <img src="/Images/Common/ico_clipboard_128.png" style="height:16px; margin-left:3px; margin-top:-3px;"/></a></li>
				<li><a href="/Course/ShortCourse/Course_shortCourse_Vacation_Summer_2017.asp" class="newdepth2" >2017년 여름방학특강</a></li>
				<li style="display:none;"><a href="#" class="depth2 btn sml blue mar_l5" >2016년 겨울방학 특강 일정안내</a></li>
				<!--<li><a href="/Upload/2015_.totalCourse.pdf" class="depth2 btn sml red mar_l5" target="_blank">2015년 핵심역량 일정 다운로드</a></li>-->
				<li style="display:none;"><a href="/Upload/2016_Schedule.pdf" class="depth2 btn sml red mar_l5" target="_blank">2016년 핵심역량 일정 다운로드</a></li>
				<li><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp" class="newdepth2">고용보험환급안내 <img src="/Images/Common/ico_money_188.png" style="height:16px; margin-left:3px; margin-top:-3px;"/></a></li>
				<li style="DISPLAY:NONE;"><a href="/Course/shortCourse/DetailPage/Course_cMaster.asp" class="newdepth2">C Master (C+자료구조)</a></li>
				
				
				<!-- newwrap no1 : CP -->
				<li><a href="#" onclick="return onclickCP();" class="newdepth2 newwrap no1 down">C Programming</a></li>
				<ul class="newdepth3_wrap no1">
					<li><a href="/Course/ShortCourse/DetailPage/Course_C.asp" class="newdepth3">[주중반] C Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp" class="newdepth3">[주말반] C Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_C2.asp" class="newdepth3">자료구조 및 초급 알고리즘</a></li>
					<li class="long"><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" class="newdepth3">문제해결을 위한 중급 알고리즘</a></li>
					<li class="long"><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp" class="newdepth3">문제해결을 위한 고급 알고리즘</a></li>
				</ul>
				
				<li style="DISPLAY:NONE;"><a href="/Course/ShortCourse/DetailPage/Course_Cmaster.asp" class="newdepth2">C Master</a></li>
				<li style="DISPLAY:NONE;"><a href="/Course/ShortCourse/DetailPage/Course_C2vacation.asp" class="newdepth2">자료구조</a></li>
				
				<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp" class="newdepth2">C++ Programming</a></li>
				
				
				<!-- newwrap no8 : JP -->
				<li><a href="#" onclick="return onclickJP();" class="newdepth2 newwrap no8 down">JAVA Programming</a></li>
				<ul class="newdepth3_wrap no8">
					<li class="long"><a style="padding-right:1px;" href="/Course/ShortCourse/DetailPage/Course_java.asp" class="newdepth2">[주중반] JAVA Programming</a></li>
					<li class="long"><a style="padding-right:1px;" href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp" class="newdepth2">[주말반] JAVA Programming</a></li>
				</ul>
				
				
				<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp" class="newdepth2">Python Programming</a></li>
				<li><a href="/Course/ShortCourse/DetailPage/Course_cShap.asp" class="newdepth2">C# Programming</a></li>
				<li class="long" style="height:40px;"><a style="padding-right:1px; " href="/Course/ShortCourse/DetailPage/Course_RaspberryPi_Audio.asp" class="newdepth2">세상과 소통하는 라즈베리파이<br/>오디오 만들기 교실</a></li>
				<!--<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp" class="newdepth2">SW Visualization</a></li>-->
				
				<!-- newwrap no10 : 데이터 사이언스 과정 -->
				<li class="long"><a href="#" onclick="return onclickDataScience();" class="newdepth2 newwrap no10 down">데이터 사이언스 과정</a></li>
				<ul class="newdepth3_wrap no10">
					<li class="long" style="height:44px;"><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning.asp" class="newdepth3">R을 사용한 데이터 분석과 머신러닝 (초급)</a></li>
					<li class="long" style="height:44px;"><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_AnalysisMachineLearning2.asp" class="newdepth3">R을 사용한 데이터 분석과 머신러닝 (중급)</a></li>
					<li class="long"><a href="/Course/ShortCourse/DetailPage/Course_DSCIENCE_PracticalMachineLearningPython.asp" class="newdepth3">실용 머신러닝 초급 - Python</a></li>
				</ul>
				
				<!-- newwrap no9 : 데이터베이스 자격검정 대비 -->
				<li class="long"><a href="#" onclick="return onclickCertifiedDatabase();" class="newdepth2 newwrap no9 down">데이터베이스 자격검정 대비</a></li>
				<ul class="newdepth3_wrap no9">
					<li class="long" style="height:36px;"><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLD.asp" class="newdepth3">국가공인 SQL 개발(SQLD) 자격 검정 준비반</a></li>
					<li class="long" style="height:36px;"><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_SQLP.asp" class="newdepth3">국가공인 SQL 전문가(SQLP) 자격 검정 준비반</a></li>
					<li class="long" style="height:36px;"><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_ADsP.asp" class="newdepth3">국가공인 데이터 분석 준전문가 자격검증(ADsP) 준비반</a></li>
					<li class="long" style="height:44px;"><a href="/Course/ShortCourse/DetailPage/Course_DATABASE_DAP.asp" class="newdepth3">국가공인 데이터 아키텍처 전문가(DAP) 자격 검정 준비반</a></li>
				</ul>
				
				
				<!-- newwrap no2 : Java Web -->
				<li><a href="#" onclick="return onclickJavaWeb();" class="newdepth2 newwrap no2 down">Java Web</a></li>
				<ul class="newdepth3_wrap no2">
					<li><a href="/Course/ShortCourse/DetailPage/Course_Nodejs.asp" class="newdepth3">Node.js</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_WebPublishing.asp" class="newdepth3">웹퍼블리싱 실무</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp" class="newdepth3">오라클과 자바 데이터베이스 연동 프로그래밍</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_JSjQuery_AJAX.asp" class="newdepth3">JavaScript/jQuery & AJAX</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp" class="newdepth3">Servlet & JSP</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_spring.asp" class="newdepth3">SPRING</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_HTML5.asp" class="newdepth3">HTML5 (HTML+CSS)</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_JavaScript.asp" class="newdepth3">웹개발자를 위한 JavaScript & AJAX</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_aiojava.asp" class="newdepth3">All-in-One JAVA 어플리케이션 개발</a></li>
				</ul>
				
				
				<!-- newwrap no3 : IT PM -->
				<!--<li><a href="/Course/shortCourse/Course_shortCourse_ITPM.asp" class="newdepth2">IT PM</a></li>-->
				<li><a href="#" onclick="return onclickITPM();" class="newdepth2 newwrap no3 down">IT PM</a></li>
				<ul class="newdepth3_wrap no3">
					<li><a href="/Course/ShortCourse/DetailPage/Course_Agile4Developer.asp" class="newdepth3">개발자를 위한 애자일 소프트웨어 개발 실무</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_ArchitectureBasic.asp" class="newdepth3">개발실무자를 위한 소프트웨어 아키텍처 입문</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_ITIL.asp" class="newdepth3">ITILv3를 기반으로 한 IT Service Management</a></li>
				</ul>
				
				
				<!-- newwrap no4 : Mobile -->
				<!--<li><a href="/Course/shortCourse/Course_shortCourse_mobile.asp" class="newdepth2">Mobile</a></li>-->
				<li><a href="#" onclick="return onclickMobile();" class="newdepth2 newwrap no4 down">Mobile</a></li>
				<ul class="newdepth3_wrap no4">
					<li><a href="/Course/ShortCourse/DetailPage/Course_android.asp" class="newdepth3">안드로이드 프로그래밍</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_hybrid.asp" class="newdepth3">하이브리드 프로그래밍</a></li>
				</ul>
				
				
				<!-- newwrap no5 : SW공학 -->
				<!--<li><a href="/Course/shortCourse/Course_shortCourse_sw.asp" class="newdepth2">SW공학</a></li>-->
				<li><a href="#" onclick="return onclickSWEngineering();" class="newdepth2 newwrap no5 down">SW공학</a></li>
				<ul class="newdepth3_wrap no5">
					<li><a href="/Course/ShortCourse/DetailPage/Course_TestingAutomation.asp" class="newdepth3">SW 테스팅 기법 및 GUI 테스팅 자동화</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_javaPlan.asp" class="newdepth3">JAVA 설계과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_realUml.asp" class="newdepth3">UML 실전에서는 이것만 쓴다.</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_uml.asp" class="newdepth3">실전!분석과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_designPatten.asp" class="newdepth3">객체지향 개념과 디자인 패턴</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cordingTuning.asp" class="newdepth3">자바 성능향상을 위한 코딩습관과 튜닝</a></li>
				</ul>
	
	
				<!-- newwrap no6 : Database -->
				<!--<li><a href="/Course/shortCourse/Course_shortCourse_database.asp" class="newdepth2">Database</a></li>-->
				<li><a href="#" onclick="return onclickDatabase();" class="newdepth2 newwrap no6 down">Database</a></li>
				<ul class="newdepth3_wrap no6">
					<li><a href="/Course/ShortCourse/DetailPage/Course_SearchEngine.asp" class="newdepth3">맞춤형 검색 엔진 제작</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_dataBaseModeling.asp" class="newdepth3">프로젝트 개발 향상을 위한 데이터베이스 모델링</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_springData.asp" class="newdepth3">Spring DATA + noSQL</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_dataBase.asp" class="newdepth3">Database 성능튜닝</a></li>
				</ul>

				
				<!-- newwrap no7 : Embedded -->
				<!--<li><a href="/Course/shortCourse/Course_shortCourse_Embedded.asp" class="newdepth2"><span>Embedded</span></a></li>-->
				<li><a href="#" onclick="return onclickEmbedded();" class="newdepth2 newwrap no7 down">Embedded</a></li>
				<ul class="newdepth3_wrap no7">
					<li><a href="/Course/ShortCourse/DetailPage/Course_RaspberryPi.asp" class="newdepth3">오픈소스 라즈베리파이를 활용한 IoT 과정</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_StorageSystem_FMBased.asp" class="newdepth3">Flash Memory 기반 Storage System</a></li>
				</ul>

				<!--<li><a href="/Course/shortCourse/DetailPage/Course_OCJP.asp" class="newdepth2"><span>Java 자격증 취득</span></a></li>-->
				<!--<li><a href="/Course/shortCourse/Course_shortCourse_webDesign.asp" class="newdepth2">Web & Design</a></li>-->
			</ul>
		</li>
		<!--
		<li>
			<a href="#this" class="newdepth1">디자인과정</a>
			<ul class="newdepth2_wrap no6">
				<li><a href="/Course/BitDesign/BitDesign_intro.asp" class="newdepth2">비트디자인교육센터 소개</a></li>
				<li><a href="/Course/BitDesign/BitDesign_synthesize.asp" class="newdepth2">종합반(취업반)</a></li>
				<li><a href="/Course/BitDesign/BitDesign_shortCourse.asp" class="newdepth2">단과과정</a></li>
				<li><a href="/Course/BitDesign/BitDesign_license.asp" class="newdepth2">자격증 과정</a></li>
				<li><a href="/Course/BitDesign/BitDesign_Color.asp" class="newdepth2">컬러융합과정</a></li>
				<li><a href="/Course/BitDesign/BitDesign_creative.asp" class="newdepth2">크리에이티브과정</a></li>
			</ul>
		</li>
		-->
		<li>
			<a href="#this" class="newdepth1">대학비트교육센터</a>
			<ul class="newdepth2_wrap no7">
				<li><a href="/Course/LocalCampus/localCampus_info.asp" class="newdepth2">대학비트교육센터 소개</a></li>
				
				<!-- newwrap Uno1 : 아산캠퍼스 -->
				<!--<li><a href="/Course/LocalCampus/localCampus_asan.asp" class="newdepth2">아산캠퍼스</a></li>-->
				<li><a href="#" onclick="return onclickUnivAsan();" class="newdepth2 newwrap Uno1 down">아산캠퍼스</a></li>
				<ul class="newdepth3_wrap Uno1">
					<li><a href="/Course/LocalCampus/localCampus_asan.asp" class="newdepth2">아산캠퍼스 소개</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_asan_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_asan_cPlus.asp" class="newdepth2">C++ Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_asan_c2.asp" class="newdepth2">자료구조/알고리즘</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_asan_windowNet.asp" class="newdepth2">Windows .NET 고급과정</a></li>
				</ul>
				
				<!-- newwrap Uno2 : 군포캠퍼스 -->
				<!--<li><a href="/Course/LocalCampus/localCampus_gunpo.asp" class="newdepth2">군포캠퍼스</a></li>-->
				<li><a href="#" onclick="return onclickUnivGunpo();" class="newdepth2 newwrap Uno2 down">군포캠퍼스</a></li>
				<ul class="newdepth3_wrap Uno2">
					<li><a href="/Course/LocalCampus/localCampus_gunpo.asp" class="newdepth2">군포캠퍼스 소개</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_cPlus.asp" class="newdepth2">C++ Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c2.asp" class="newdepth2">자료구조/알고리즘</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_gunpo_windowNet.asp" class="newdepth2">Windows .NET 고급과정</a></li>
				</ul>
				
				<!-- newwrap Uno3 : 군포캠퍼스 -->
				<!--<li><a href="/Course/LocalCampus/localCampus_deajeon.asp" class="newdepth2">대전캠퍼스</a></li>-->
				<li><a href="#" onclick="return onclickUnivDaejeon();" class="newdepth2 newwrap Uno3 down">대전캠퍼스</a></li>
				<ul class="newdepth3_wrap Uno3">
					<li><a href="/Course/LocalCampus/localCampus_deajeon.asp" class="newdepth2">대전캠퍼스 소개</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_cPlus.asp" class="newdepth2">C++ Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_java.asp" class="newdepth2">JAVA Programming</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_deajeon_windowNet.asp" class="newdepth2">Windows .NET 고급과정</a></li>
				</ul>
				
				<!-- newwrap Uno4 : 부산캠퍼스 -->
				<!--<li><a href="/Course/LocalCampus/localCampus_busan.asp" class="newdepth2">부산캠퍼스</a></li>-->
				<li><a href="#" onclick="return onclickUnivBusan();" class="newdepth2 newwrap Uno4 down">부산캠퍼스</a></li>
				<ul class="newdepth3_wrap Uno4">
					<li><a href="/Course/LocalCampus/localCampus_busan.asp" class="newdepth2">부산캠퍼스 소개</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_busan_java.asp" class="newdepth2">JAVA Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c2.asp" class="newdepth2">자료구조/알고리즘</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_busan_javaHigh.asp" class="newdepth2">JAVA 고급과정</a></li>
				</ul>
				
				<li><a href="/Course/LocalCampus/localCampus_vacation.asp" class="newdepth2">대학 방학특강</a></li>
			</ul>
		</li>
		<!--
		<li>
			<a href="#this" class="newdepth1">청년취업아카데미</a>
			<ul class="newdepth2_wrap no8">
				<li><a href="/Course/JopAcademy/JopAcademy_info.asp" class="newdepth2">청년취업아카데미소개</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_soonChun_windowNet.asp" class="newdepth2">Windows .NET (순천향대)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_soonChun_javaWeb.asp" class="newdepth2">JAVA Web&amp;Mobile(순천향대)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_polytechnic_javaWeb.asp" class="newdepth2">JAVA Web&amp;Mobile(산기대)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_seokyeong_javaWeb.asp" class="newdepth2">JAVA Web&amp;Mobile(서경대)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_sangmyung_javaMobile.asp" class="newdepth2">JAVA Mobile(상명대)</a></li>
			</ul>
		</li>
		-->
		<li>
			<a href="#this" class="newdepth1" style="letter-spacing:-1.3px;">소프트웨어 전문교원양성과정</a>
			<ul class="newdepth2_wrap no8">
				<li><a href="/Course/Teachers/Course_Teachers.asp" class="newdepth2">전문교원양성과정 소개</a></li>
				<li><a href="/Course/Teachers/Course_RaspberryPi_iFrame.asp" class="newdepth2">라즈베리파이를 이용한 오디오 만들기</a></li>
				<!--
				<li><a href="/Course/Teachers/Course_C.asp" class="newdepth2">C Programming</a></li>
				<li style="display:none;"><a href="/Course/Teachers/Course_DS.asp" class="newdepth2">자료구조 (C 기반)</a></li>
				<li><a href="/Course/Teachers/Course_CPP.asp" class="newdepth2">C++ Programming</a></li>
				<li><a href="/Course/Teachers/Course_Java.asp" class="newdepth2">JAVA Programming</a></li>
				<li style="display:none;"><a href="/Course/Teachers/Course_CapstoneDesign.asp" class="newdepth2">캡스톤 디자인 <br/>과제 수행 방법론과 관리</a></li>
				-->
			</ul>
		</li>
		<!--
		<li>
			<a href="/Course/Qolt/Qolt_info.asp" class="newdepth1">장애인 SW인력양성 무료과정</a>
		</li>
		-->
		<li class="last">
			<a href="#this" class="newdepth1">비트 SW 자격증</a>
			<ul class="newdepth2_wrap no9">
				<li><a href="/Course/License/Course_License_Expert.asp" class="newdepth2">비트 SW Expert 자격증</a></li>
				<li class="long"><a href="/Course/License/Course_Licenses.asp" class="newdepth2">BSPM(BIT Software Programming Master)자격증</a></li>
			</ul>
		</li>
		<!--
		<li style="display:none;">
			<a href="#this" class="newdepth1">개발자과정</a>
			<ul class="newdepth2_wrap no3">
				<li><a href="/Course/Develop/Course_Develop.asp" class="newdepth2">개발자과정 소개</a></li>
				<li><a href="/Course/Develop/Course_Develop_Windows_2017.asp" class="newdepth2">윈도우 개발자과정</a></li>
				<li><a href="/Course/Develop/Course_Develop_Web_2017.asp" class="newdepth2">웹표준 개발자과정</a></li>
				<li><a href="/Course/Develop/Course_Develop_Android_2017.asp" class="newdepth2">안드로이드 개발자과정</a></li>
				<li><a href="/Course/Develop/Course_Develop_Project_2017.asp" class="newdepth2">실무프로젝트 개발자과정</a></li>								
			</ul>
		</li>
		-->
	</ul>
	<!--<p class="mar_t10"><img src="/Images/Content/img_snb_cacaoInfo.jpg" alt="비트교육센터에서 카카오톡 계정을 만들었습니다. 친구추가해주세요~. 카카오톡ID : 비트교육센터 - QR코드로도 친구추가 가능 합니다."></p>-->
</nav>