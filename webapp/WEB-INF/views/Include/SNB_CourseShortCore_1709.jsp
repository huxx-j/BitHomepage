<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--#include file="Common_CSS_SNB_1709.inc"-->
<c:import url="/WEB-INF/views/Include/Common_CSS_SNB_1709.jsp"/>
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
	#SNB_Wrap_1709 { 
		background:#ffffff !important; 
		width:188px !important; 
	}
</style>

<script type="text/javascript">
	// depth3까지 여는 데 사용할 함수.
	function openWrap3(nox) {
		if($(".newdepth3_wrap."+nox).hasClass("on") == false) {
			// close the others.
			$(".newdepth2.newwrap").not(".newdept2.newwrap."+nox).removeClass("minus").addClass("plus");
			$(".newdepth3_wrap").not(".newdepth3_wrap."+nox).slideUp("slow", "easeOutQuint", function() { $(".newdepth3_wrap").not(".newdepth3_wrap."+nox).removeClass("on"); });
			// open this one(nox).
			$(".newdepth2.newwrap."+nox).addClass("on").removeClass("plus").addClass("minus");
			$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
		} else {
			// close this one(nox).
			$(".newdepth2.newwrap."+nox).removeClass("minus").addClass("plus");
			$(".newdepth3_wrap."+nox).slideUp("slow", "easeOutQuint", function() { $(".newdepth3_wrap."+nox).removeClass("on"); });
		}
	}
	// no1 : Programming :: 2017-11-17-메뉴개편작업
	// no2 : Data Science
	// no3 : Blockchain
	// no4 : Java
	// no5 : JavaScript
	// no6 : Database
	// no7 : Project Manager
	// no8 : Mobile
	// no9 : SW Engineering
	// no10 : Embedded

	function onclickBC() { openWrap3("no3"); return false; }
	function onclickJ() { openWrap3("no4"); return false; }
	function onclickJS() { openWrap3("no5"); return false; }
	function onclickDB() { openWrap3("no6"); return false; }
	function onclickPM() { openWrap3("no7"); return false; }
	function onclickMo() { openWrap3("no8"); return false; }
	function onclickSWE() { openWrap3("no9"); return false; }
	function onclickE() { openWrap3("no10"); return false; }
</script>
<script type="text/javascript">
	// depth4까지 여는 데 사용할 함수.
	function openWrap4(nox) {
		if($(".newdepth4_wrap."+nox).hasClass("on") == false) {
			// close the others.
			$(".newdepth3.newwrap").not(".newdept3.newwrap."+nox).removeClass("minus").addClass("plus");
			$(".newdepth4_wrap").not(".newdepth4_wrap."+nox).slideUp("slow", "easeOutQuint", function() { $(".newdepth4_wrap").not(".newdepth4_wrap."+nox).removeClass("on"); });
			// open this one(nox).
			$(".newdepth3.newwrap."+nox).addClass("on").removeClass("plus").addClass("minus");
			$(".newdepth4_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth4_wrap."+nox).addClass("on"); });
		} else {
			// close this one(nox).
			$(".newdepth3.newwrap."+nox).removeClass("minus").addClass("plus");
			$(".newdepth4_wrap."+nox).slideUp("slow", "easeOutQuint", function() { $(".newdepth4_wrap."+nox).removeClass("on"); });
		}
	}
	// no1 : C Programming
	// no2 : Java Programming
	// no3 : C++ Programming
	// no4 : Data Structure
	// no5 : Python Programming
	// no6 : C# Programming
	
	function onclickCP() { openWrap4("no1"); return false; }
	function onclickJP() { openWrap4("no2"); return false; }
	function onclickCppP() { openWrap4("no3"); return false; }
	function onclickDS() { openWrap4("no4"); return false; }
	function onclickPythonP() { openWrap4("no5"); return false; }
	function onclickCsharpP() { openWrap4("no6"); return false; }
	
	// Uno1 : 아산캠퍼스
	// Uno2 : 군포캠퍼스
	// Uno3 : 대전캠퍼스
	// Uno4 : 부산캠퍼스
	// Uno5 : 김해캠퍼스 (2018-03 신설)
	function onclickUnivAsan() { openWrap4("Uno1"); return false; }
	function onclickUnivGunpo() { openWrap4("Uno2"); return false; }
	function onclickUnivDaejeon() { openWrap4("Uno3"); return false; }
	function onclickUnivBusan() { openWrap4("Uno4"); return false; }
	function onclickUnivGimhae() { openWrap4("Uno5"); return false; }
	
</script>

<style>
	#Content_Wrap { border:none !important; }
</style>
<nav id="SNB_Wrap_1709">
	<h3>단기핵심과정<br/>과정안내 </h3>
	<ul class="snb_1709">
		<style>
			.dnone {
				DISPLAY:NONE !important;
			}
		</style>

		<li>
			<a href="#this" class="newdepth1">Programming</a>
			<ul class="newdepth2_wrap no1">
				<!-- newwrap no1 : Programming -->
				<li>
					<a href="#this" class="newdepth2">[서울]비트교육센터</a>
					<ul class="newdepth3_wrap no1" style="min-height:290px;">
					
						
						<!-- newwrap no1 : CP -->
						<li><a href="/course/shortcourse/detailPage/Course_C" class="newdepth3">C Master</a></li>
						
						<!-- newwrap no2 : JP -->
						<li><a href="/course/shortcourse/detailPage/Course_java" class="newdepth3">JAVA 프로그래밍</a></li>
					
						<!-- newwrap no3 : C++P -->
						<li><a href="/course/shortcourse/detailPage/Course_cPlus" class="newdepth3">C++ 프로그래밍</a></li>
						
						<!-- newwrap no4 : Python 프로그래밍 -->
						<li><a href="/course/shortcourse/detailPage/Course_Python" class="newdepth3">Python 프로그래밍</a></li>
						
						<!-- newwrap no5 : C# 프로그래밍 -->
						<li><a href="/course/shortcourse/detailPage/Course_cSharp" class="newdepth3">C# 프로그래밍</a></li>
						
						<!-- no7 : Go 프로그래밍 -->
						<li><a href="/course/shortcourse/detailPage/Course_Go" class="newdepth3">Go 프로그래밍</a></li>
						
						<!-- no8 : SW 자율학습 지도 커뮤니티 -->
						<li><a href="/course/shortcourse/detailPage/Course_SelfLearning" class="newdepth3">SW 자율학습 지도 커뮤니티</a></li>
						
						
		</li>			
						
						<!-- newwrap no4 : 자료구조/알고리즘 -->
						<!-- 
						<li><a href="#" onclick="return onclickDS();" class="newdepth3 newwrap no4 plus">자료구조/알고리즘</a></li>
						 -->
						
						
						<!-- newwrap no5 : Python 프로그래밍 -->
						<!--
						<li><a href="#" onclick="return onclickPythonP();" class="newdepth3 newwrap no5 plus">Python 프로그래밍</a></li>
						<ul class="newdepth4_wrap no5">
							<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp" class="newdepth4">· 주중반</a></li>
							<li><a href="/Course/ShortCourse/DetailPage/Course_Python_Weekend.asp" class="newdepth4">· 주말반</a></li>
						</ul>
						 -->
						 
						 
					</ul>
				</li>
				<li>
					<a href="#this" class="newdepth2">[대전]대전캠퍼스</a>
					<ul class="newdepth3_wrap no2">
						<li><a href="/course/localCampus/localCampus_Daejeon_introduction" class="newdepth3">대전캠퍼스 소개</a></li>
						<li><a href="/course/localCampus/DetailPage/Daejeon_c" class="newdepth3">C Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Daejeon_cPlus" class="newdepth3">C++ Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Daejeon_java" class="newdepth3">JAVA Programming</a></li>
					</ul>
				</li>
				<li>
					<a href="#this" class="newdepth2 " style="letter-spacing:-1px;">[부산]부산캠퍼스</a>
					<ul class="newdepth3_wrap no3">
						<li><a href="/course/localCampus/localCampus_Busan_introduction?beginwith='no'" class="newdepth3">부산캠퍼스 소개</a></li>
						<li><a href="/course/localCampus/DetailPage/Busan_c" class="newdepth3">C Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Busan_java" class="newdepth3">JAVA Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Busan_c2" class="newdepth3">자료구조/알고리즘</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#this" class="newdepth2 " style="letter-spacing:-1px;">[군포]군포캠퍼스</a>
					<ul class="newdepth3_wrap no4">
						<li><a href="/course/localCampus/localCampus_Gunpo_introduction?beginwith='no'" class="newdepth3">군포캠퍼스 소개</a></li>
						<li><a href="/course/localCampus/DetailPage/Gunpo_c" class="newdepth3">C Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Gunpo_cPlus" class="newdepth3">C++ Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Gunpo_c2" class="newdepth3">자료구조/알고리즘</a></li>
					</ul>
				</li>

				<li>
					<a href="#this" class="newdepth2 " style="letter-spacing:-1px;">[김해]김해캠퍼스</a>
					<ul class="newdepth3_wrap no5">
						<li><a href="/course/localCampus/localCampus_Gimhae_introduction?beginwith='no'" class="newdepth3">김해캠퍼스 소개</a></li>
						<li><a href="/course/localCampus/DetailPage/Gimhae_c" class="newdepth3">C Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Gimhae_java" class="newdepth3">Java Programming</a></li>
						<li><a href="/course/localCampus/DetailPage/Gimhae_c2" class="newdepth3">자료구조/알고리즘</a></li>
					</ul>
				</li>

			</ul>
		</li>
		<li>
			<a href="#this" class="newdepth1">Data Science</a>
			<ul class="newdepth2_wrap no2" style="height:203px;">
				<!-- newwrap no2 : Data Science -->
				<li class="long"><a href="/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning" class="newdepth2 no1">R을 사용한 데이터 분석과 <br/>머신러닝 (초급)</a></li>
				<li class="long"><a href="/course/shortcourse/detailPage/Course_DSCIENCE_AnalysisMachineLearning2" class="newdepth2 no2">R을 사용한 데이터 분석과 <br/>머신러닝 (중급)</a></li>
				<li class="long"><a href="/course/shortcourse/detailPage/Course_DSCIENCE_PracticalMachineLearningPython" class="newdepth2 no3">Python을 활용한 실용머신러닝 - 초급</a></li>
				<li class="long"><a href="/course/shortcourse/detailPage/Course_DSCIENCE_ExcelMachineLearning" class="newdepth2 no4">즉각 활용하는 Excel을 사용한 데이터 사이언스 입문</a></li>
				<li class="long"><a href="/course/shortcourse/detailPage/Course_AWSCloudWeb2" class="newdepth2 no5">AWS를 활용한 클라우드 기반 웹 개발</a></li>
			</ul>
		</li>			
			
		<li>
			<a href="#this" class="newdepth1">Blockchain</a>
			<ul class="newdepth2_wrap no3" style="height:37px;">
				<!-- newwrap no3 : Blockchain -->
				<li class="long"><a href="/course/shortcourse/detailPage/Course_Blockchain_HyperConnected" class="newdepth2 no1">블록체인 - 초연결 기술과 규제</a></li>
			</ul>
		</li>			
			
		<li>
			<a href="#this" class="newdepth1">Java</a>
			<ul class="newdepth2_wrap no4">
				<!-- newwrap no4 : Java -->
				<li><a href="/course/shortcourse/detailPage/Course_servletJsp" class="newdepth2 no1">Servlet &amp; JSP 프로그래밍</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_spring" class="newdepth2 no2 ">Spring Framework 과정</a></li>
				<li style="height:50px;"><a href="/Course/ShortCourse/DetailPage/Course_aiojava" class="newdepth2 no3">All-in-One Java Application 개발</a></li>
			</ul>
		</li>			
			
		<li>
			<a href="#this" class="newdepth1">JavaScript</a>
			<ul class="newdepth2_wrap no5" style="min-height:306px;">
				<!-- newwrap no5 : JS -->
				<li><a href="/course/shortcourse/detailPage/Course_HTML5" class="newdepth2 no2">웹개발자를 위한 HTML5(HTML5+CSS3)</a></li>
				<li style="height:28px;"><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth2 no3">실전 jQuery</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_JavaScript" class="newdepth2 no4">웹개발자를 위한 JavaScript &amp; Ajax</a></li>
				<li style="height:28px;"><a href="/course/shortcourse/detailPage/Course_WebPublishing" class="newdepth2 no5">Web Publishing 실무</a></li>
				<li style="height:28px;"><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth2 no6">AngularJS 프로그래밍</a></li>
				<li style="height:28px;"><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth2 no7">ReactJS 프로그래밍</a></li>
				<li><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth2 no8">Front-End JavaScript Framework</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_Nodejs" class="newdepth2 no9">객체지향 JavaScript와 Node.js 프로그래밍</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">Database</a>
			<ul class="newdepth2_wrap no6" style="min-height:238px;">
				<!-- newwrap no6 : DB -->
				<li><a href="/course/shortcourse/detailPage/Course_SearchEngine" class="newdepth2 no1">맞춤형 검색엔진<!-- 과정--></a></li>
				<li><a href="/course/shortcourse/detailPage/Course_dataBaseModeling" class="newdepth2 no2">데이터베이스 모델링</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_dataBase" class="newdepth2 no3">데이터베이스 성능튜닝</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_springData" class="newdepth2 no4">Spring Data + noSQL</a></li>
				<li><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth2 no5">MySQL 최적화</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_sqlJdbc" class="newdepth2 no6">오라클과 데이터베이스 연동 프로그래밍</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">Project Management</a>
			<ul class="newdepth2_wrap no7" style="min-height:124px;">
				<!-- newwrap no7 : PM -->
				<li class="long"><a href="/course/shortcourse/detailPage/Course_Agile4Developer" class="newdepth2 no1">Agile 소프트웨어 개발 실무</a></li>
				<li class="long"><a href="/course/shortcourse/detailPage/Course_ArchitectureBasic" class="newdepth2 no2">소프트웨어 아키텍처 입문</a></li>
				<li class="long"><a href="/course/shortcourse/detailPage/Course_ITIL" class="newdepth2 no3">ITILv3 기반 IT Service Management</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">Mobile</a>
			<ul class="newdepth2_wrap no8">
				<!-- newwrap no8 : Mobile -->
				<li><a href="/course/shortcourse/detailPage/Course_Android" class="newdepth2 no1">안드로이드 앱 개발</a></li>
				<li><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth2 no2">UX/UI 제작 실무</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">SW Engineering</a>
			<ul class="newdepth2_wrap no9" style="min-height:220px;">
				<!-- newwrap no9 : SW Engineering -->
				<li style="height:28px;"><a href="/course/shortcourse/detailPage/Course_javaPlan" class="newdepth2 no1">Java 설계과정</a></li>
				<li style="height:38px;"><a href="/course/shortcourse/detailPage/Course_realUml" class="newdepth2 no2">UML 실전에서는 이것만 쓴다</a></li>
				<li style="height:28px;"><a href="/course/shortcourse/detailPage/Course_uml" class="newdepth2 no3">실전! 분석과정</a></li>
				<li style="height:38px;"><a href="/course/shortcourse/detailPage/Course_designPattern" class="newdepth2 no4">객체지향 개념과 <br/>디자인 패턴</a></li>
				<li style="height:38px;" class="long"><a href="/course/shortcourse/detailPage/Course_codingTuning" class="newdepth2 no5">Java JDBC 기반의 SQL <br/>성능튜닝</a></li>
				<li style="height:38px;" class="long"><a href="/course/shortcourse/detailPage/Course_OptimizationAlgorithms" class="newdepth2 no6">최적화 알고리즘을 통한 <br/>SW개발 역량 강화</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1">Embedded</a>
			<ul class="newdepth2_wrap no10" style="min-height:86px;">
				<!-- newwrap no10 : Embedded -->
				<li><a href="/course/shortcourse/detailPage/Course_RaspberryPi" class="newdepth2 no1">오픈소스 라즈베리파이를 활용한 IoT 과정</a></li>
				<li><a href="/course/shortcourse/detailPage/Course_StorageSystem_FMBased" class="newdepth2 no2">Flash Memory기반 Storage System</a></li>
			</ul>
		</li>
		
	</ul>
</nav>
