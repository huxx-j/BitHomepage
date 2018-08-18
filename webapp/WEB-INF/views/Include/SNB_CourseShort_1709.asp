<!--#include file="Common_CSS_SNB_1709.inc"-->
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
	function openWrap(nox) {
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
	function onclickJP() { openWrap("no2"); return false; }
	function onclickCppP() { openWrap("no3"); return false; }
	function onclickDS() { openWrap("no4"); return false; }
	function onclickPythonP() { openWrap("no5"); return false; }
	function onclickCsharpP() { openWrap("no6"); return false; }
	
	// Uno1 : 아산캠퍼스
	// Uno2 : 군포캠퍼스
	// Uno3 : 대전캠퍼스
	// Uno4 : 부산캠퍼스
	function onclickUnivAsan() { openWrap("Uno1"); return false; }
	function onclickUnivGunpo() { openWrap("Uno2"); return false; }
	function onclickUnivDaejeon() { openWrap("Uno3"); return false; }
	function onclickUnivBusan() { openWrap("Uno4"); return false; }
	
</script>

<style>
	#Content_Wrap { border:none !important; }
</style>
- will be soon deprecated -
<nav id="SNB_Wrap_1709">
	<h3 style="line-height:30px;">단기 프로그래밍<br/>과정안내 </h3>
	<ul class="snb_1709">
		<style>
			.dnone {
				DISPLAY:NONE !important;
			}
		</style>

		<li>
			<a href="#this" class="newdepth1">[서울]비트교육센터</a>
			<ul class="newdepth2_wrap no1">
				<!-- newwrap no1 : CP -->
				<li><a href="#" onclick="return onclickCP();" class="newdepth2 newwrap no1 plus">C 프로그래밍</a></li>
				<ul class="newdepth3_wrap no1">
					<li><a href="/Course/ShortCourse/DetailPage/Course_C.asp" class="newdepth3">· 주중반</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp" class="newdepth3">· 주말반</a></li>
				</ul>
					
					
				
				<!-- newwrap no2 : JP -->
				<li><a href="#" onclick="return onclickJP();" class="newdepth2 newwrap no2 plus">JAVA 프로그래밍</a></li>
				<ul class="newdepth3_wrap no2">
					<li><a style="padding-right:1px;" href="/Course/ShortCourse/DetailPage/Course_java.asp" class="newdepth2">· 주중반</a></li>
					<li><a style="padding-right:1px;" href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp" class="newdepth2">· 주말반</a></li>
				</ul>

				<!-- newwrap no3 : C++P -->
				<li><a href="#" onclick="return onclickCppP();" class="newdepth2 newwrap no3 plus">C++ 프로그래밍</a></li>
				<ul class="newdepth3_wrap no3">
					<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp" class="newdepth3">· 주중반</a></li>
					<li><a href="javascript:alert('준비중입니다. 문의(02-3486-3456).');" class="newdepth3">· 주말반</a></li>
				</ul>
				
				<!-- newwrap no4 : 자료구조/알고리즘 -->
				<li><a href="#" onclick="return onclickDS();" class="newdepth2 newwrap no4 plus">자료구조/알고리즘</a></li>
				<ul class="newdepth3_wrap no4">
					<li><a href="/Course/ShortCourse/DetailPage/Course_C2.asp" class="newdepth3">주말/초급 자료구조</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" class="newdepth3">주말/중급 알고리즘</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp" class="newdepth3">주말/고급 알고리즘</a></li>
				</ul>
				
				<!-- newwrap no5 : Python 프로그래밍 -->
				<li><a href="#" onclick="return onclickPythonP();" class="newdepth2 newwrap no5 plus">Python 프로그래밍</a></li>
				<ul class="newdepth3_wrap no5">
					<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp" class="newdepth3">· 주중반</a></li>
					<li><a href="javascript:alert('준비중입니다. 문의(02-3486-3456).');" class="newdepth3">· 주말반</a></li>
				</ul>
				
				<!-- newwrap no6 : C# 프로그래밍 -->
				<li><a href="#" onclick="return onclickCsharpP();" class="newdepth2 newwrap no6 plus">C# 프로그래밍</a></li>
				<ul class="newdepth3_wrap no6">
					<li><a href="/Course/ShortCourse/DetailPage/Course_cSharp.asp" class="newdepth3">· 주중반</a></li>
				</ul>
			</ul>
		</li>
		<li>
			<a href="#this" class="newdepth1">[대전]우송비트캠퍼스</a>
			<ul class="newdepth2_wrap no2">
				<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_c.asp" class="newdepth2">C Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_cPlus.asp" class="newdepth2">C++ Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_java.asp" class="newdepth2">JAVA Programming</a></li>
			</ul>
		</li>
		<li>
			<a href="#this" class="newdepth1 " style="letter-spacing:-1px;">[부산]부산외대비트캠퍼스</a>
			<ul class="newdepth2_wrap no3">
				<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c.asp" class="newdepth2">C Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_busan_java.asp" class="newdepth2">JAVA Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c2.asp" class="newdepth2">자료구조/알고리즘</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1 " style="letter-spacing:-1px;">[군포]군포비트캠퍼스</a>
			<ul class="newdepth2_wrap no4">
				<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c.asp" class="newdepth2">C Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_cPlus.asp" class="newdepth2">C++ Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c2.asp" class="newdepth2">자료구조/알고리즘</a></li>
			</ul>
		</li>
		
		<li style="display:none;">
			<a href="#this" class="newdepth1">프로그래밍 / 핵심역량과정</a>
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
		
		<li style="display:none;">
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
		<li style="display:none;">
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
		<li class="last" style="display:none;">
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
