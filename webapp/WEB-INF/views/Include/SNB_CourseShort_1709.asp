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
	// no5 : SW����
	// no6 : Database
	// no7 : Embedded
	// no8 : JAVA Programming
	// no9 : �����ͺ��̽� �ڰݰ��� ���

	function onclickCP() { openWrap("no1"); return false; }
	function onclickJP() { openWrap("no2"); return false; }
	function onclickCppP() { openWrap("no3"); return false; }
	function onclickDS() { openWrap("no4"); return false; }
	function onclickPythonP() { openWrap("no5"); return false; }
	function onclickCsharpP() { openWrap("no6"); return false; }
	
	// Uno1 : �ƻ�ķ�۽�
	// Uno2 : ����ķ�۽�
	// Uno3 : ����ķ�۽�
	// Uno4 : �λ�ķ�۽�
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
	<h3 style="line-height:30px;">�ܱ� ���α׷���<br/>�����ȳ� </h3>
	<ul class="snb_1709">
		<style>
			.dnone {
				DISPLAY:NONE !important;
			}
		</style>

		<li>
			<a href="#this" class="newdepth1">[����]��Ʈ��������</a>
			<ul class="newdepth2_wrap no1">
				<!-- newwrap no1 : CP -->
				<li><a href="#" onclick="return onclickCP();" class="newdepth2 newwrap no1 plus">C ���α׷���</a></li>
				<ul class="newdepth3_wrap no1">
					<li><a href="/Course/ShortCourse/DetailPage/Course_C.asp" class="newdepth3">�� ���߹�</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp" class="newdepth3">�� �ָ���</a></li>
				</ul>
					
					
				
				<!-- newwrap no2 : JP -->
				<li><a href="#" onclick="return onclickJP();" class="newdepth2 newwrap no2 plus">JAVA ���α׷���</a></li>
				<ul class="newdepth3_wrap no2">
					<li><a style="padding-right:1px;" href="/Course/ShortCourse/DetailPage/Course_java.asp" class="newdepth2">�� ���߹�</a></li>
					<li><a style="padding-right:1px;" href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp" class="newdepth2">�� �ָ���</a></li>
				</ul>

				<!-- newwrap no3 : C++P -->
				<li><a href="#" onclick="return onclickCppP();" class="newdepth2 newwrap no3 plus">C++ ���α׷���</a></li>
				<ul class="newdepth3_wrap no3">
					<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp" class="newdepth3">�� ���߹�</a></li>
					<li><a href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456).');" class="newdepth3">�� �ָ���</a></li>
				</ul>
				
				<!-- newwrap no4 : �ڷᱸ��/�˰��� -->
				<li><a href="#" onclick="return onclickDS();" class="newdepth2 newwrap no4 plus">�ڷᱸ��/�˰���</a></li>
				<ul class="newdepth3_wrap no4">
					<li><a href="/Course/ShortCourse/DetailPage/Course_C2.asp" class="newdepth3">�ָ�/�ʱ� �ڷᱸ��</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" class="newdepth3">�ָ�/�߱� �˰���</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp" class="newdepth3">�ָ�/��� �˰���</a></li>
				</ul>
				
				<!-- newwrap no5 : Python ���α׷��� -->
				<li><a href="#" onclick="return onclickPythonP();" class="newdepth2 newwrap no5 plus">Python ���α׷���</a></li>
				<ul class="newdepth3_wrap no5">
					<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp" class="newdepth3">�� ���߹�</a></li>
					<li><a href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456).');" class="newdepth3">�� �ָ���</a></li>
				</ul>
				
				<!-- newwrap no6 : C# ���α׷��� -->
				<li><a href="#" onclick="return onclickCsharpP();" class="newdepth2 newwrap no6 plus">C# ���α׷���</a></li>
				<ul class="newdepth3_wrap no6">
					<li><a href="/Course/ShortCourse/DetailPage/Course_cSharp.asp" class="newdepth3">�� ���߹�</a></li>
				</ul>
			</ul>
		</li>
		<li>
			<a href="#this" class="newdepth1">[����]��ۺ�Ʈķ�۽�</a>
			<ul class="newdepth2_wrap no2">
				<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_c.asp" class="newdepth2">C Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_cPlus.asp" class="newdepth2">C++ Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_java.asp" class="newdepth2">JAVA Programming</a></li>
			</ul>
		</li>
		<li>
			<a href="#this" class="newdepth1 " style="letter-spacing:-1px;">[�λ�]�λ�ܴ��Ʈķ�۽�</a>
			<ul class="newdepth2_wrap no3">
				<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c.asp" class="newdepth2">C Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_busan_java.asp" class="newdepth2">JAVA Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c2.asp" class="newdepth2">�ڷᱸ��/�˰���</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#this" class="newdepth1 " style="letter-spacing:-1px;">[����]������Ʈķ�۽�</a>
			<ul class="newdepth2_wrap no4">
				<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c.asp" class="newdepth2">C Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_cPlus.asp" class="newdepth2">C++ Programming</a></li>
				<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c2.asp" class="newdepth2">�ڷᱸ��/�˰���</a></li>
			</ul>
		</li>
		
		<li style="display:none;">
			<a href="#this" class="newdepth1">���α׷��� / �ٽɿ�������</a>
			</ul>
		</li>
		<!--
		<li>
			<a href="#this" class="newdepth1">�����ΰ���</a>
			<ul class="newdepth2_wrap no6">
				<li><a href="/Course/BitDesign/BitDesign_intro.asp" class="newdepth2">��Ʈ�����α������� �Ұ�</a></li>
				<li><a href="/Course/BitDesign/BitDesign_synthesize.asp" class="newdepth2">���չ�(�����)</a></li>
				<li><a href="/Course/BitDesign/BitDesign_shortCourse.asp" class="newdepth2">�ܰ�����</a></li>
				<li><a href="/Course/BitDesign/BitDesign_license.asp" class="newdepth2">�ڰ��� ����</a></li>
				<li><a href="/Course/BitDesign/BitDesign_Color.asp" class="newdepth2">�÷����հ���</a></li>
				<li><a href="/Course/BitDesign/BitDesign_creative.asp" class="newdepth2">ũ������Ƽ�����</a></li>
			</ul>
		</li>
		-->
		
		<li style="display:none;">
			<a href="#this" class="newdepth1">���к�Ʈ��������</a>
			<ul class="newdepth2_wrap no7">
				<li><a href="/Course/LocalCampus/localCampus_info.asp" class="newdepth2">���к�Ʈ�������� �Ұ�</a></li>
				
				<!-- newwrap Uno1 : �ƻ�ķ�۽� -->
				<!--<li><a href="/Course/LocalCampus/localCampus_asan.asp" class="newdepth2">�ƻ�ķ�۽�</a></li>-->
				<li><a href="#" onclick="return onclickUnivAsan();" class="newdepth2 newwrap Uno1 down">�ƻ�ķ�۽�</a></li>
				<ul class="newdepth3_wrap Uno1">
					<li><a href="/Course/LocalCampus/localCampus_asan.asp" class="newdepth2">�ƻ�ķ�۽� �Ұ�</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_asan_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_asan_cPlus.asp" class="newdepth2">C++ Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_asan_c2.asp" class="newdepth2">�ڷᱸ��/�˰���</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_asan_windowNet.asp" class="newdepth2">Windows .NET ��ް���</a></li>
				</ul>
				
				<!-- newwrap Uno2 : ����ķ�۽� -->
				<!--<li><a href="/Course/LocalCampus/localCampus_gunpo.asp" class="newdepth2">����ķ�۽�</a></li>-->
				<li><a href="#" onclick="return onclickUnivGunpo();" class="newdepth2 newwrap Uno2 down">����ķ�۽�</a></li>
				<ul class="newdepth3_wrap Uno2">
					<li><a href="/Course/LocalCampus/localCampus_gunpo.asp" class="newdepth2">����ķ�۽� �Ұ�</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_cPlus.asp" class="newdepth2">C++ Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_gunpo_c2.asp" class="newdepth2">�ڷᱸ��/�˰���</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_gunpo_windowNet.asp" class="newdepth2">Windows .NET ��ް���</a></li>
				</ul>
				
				<!-- newwrap Uno3 : ����ķ�۽� -->
				<!--<li><a href="/Course/LocalCampus/localCampus_deajeon.asp" class="newdepth2">����ķ�۽�</a></li>-->
				<li><a href="#" onclick="return onclickUnivDaejeon();" class="newdepth2 newwrap Uno3 down">����ķ�۽�</a></li>
				<ul class="newdepth3_wrap Uno3">
					<li><a href="/Course/LocalCampus/localCampus_deajeon.asp" class="newdepth2">����ķ�۽� �Ұ�</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_cPlus.asp" class="newdepth2">C++ Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_deajeon_java.asp" class="newdepth2">JAVA Programming</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_deajeon_windowNet.asp" class="newdepth2">Windows .NET ��ް���</a></li>
				</ul>
				
				<!-- newwrap Uno4 : �λ�ķ�۽� -->
				<!--<li><a href="/Course/LocalCampus/localCampus_busan.asp" class="newdepth2">�λ�ķ�۽�</a></li>-->
				<li><a href="#" onclick="return onclickUnivBusan();" class="newdepth2 newwrap Uno4 down">�λ�ķ�۽�</a></li>
				<ul class="newdepth3_wrap Uno4">
					<li><a href="/Course/LocalCampus/localCampus_busan.asp" class="newdepth2">�λ�ķ�۽� �Ұ�</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c.asp" class="newdepth2">C Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_busan_java.asp" class="newdepth2">JAVA Programming</a></li>
					<li><a href="/Course/localCampus/DetailPage/localCampus_busan_c2.asp" class="newdepth2">�ڷᱸ��/�˰���</a></li>
					<li class="long"><a href="/Course/localCampus/DetailPage/localCampus_busan_javaHigh.asp" class="newdepth2">JAVA ��ް���</a></li>
				</ul>
				
				<li><a href="/Course/LocalCampus/localCampus_vacation.asp" class="newdepth2">���� ����Ư��</a></li>
			</ul>
		</li>
		<!--
		<li>
			<a href="#this" class="newdepth1">û�������ī����</a>
			<ul class="newdepth2_wrap no8">
				<li><a href="/Course/JopAcademy/JopAcademy_info.asp" class="newdepth2">û�������ī���̼Ұ�</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_soonChun_windowNet.asp" class="newdepth2">Windows .NET (��õ���)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_soonChun_javaWeb.asp" class="newdepth2">JAVA Web&amp;Mobile(��õ���)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_polytechnic_javaWeb.asp" class="newdepth2">JAVA Web&amp;Mobile(����)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_seokyeong_javaWeb.asp" class="newdepth2">JAVA Web&amp;Mobile(�����)</a></li>
				<li><a href="/Course/JopAcademy/JopAcademy_sangmyung_javaMobile.asp" class="newdepth2">JAVA Mobile(����)</a></li>
			</ul>
		</li>
		-->
		<li style="display:none;">
			<a href="#this" class="newdepth1" style="letter-spacing:-1.3px;">����Ʈ���� ���������缺����</a>
			<ul class="newdepth2_wrap no8">
				<li><a href="/Course/Teachers/Course_Teachers.asp" class="newdepth2">���������缺���� �Ұ�</a></li>
				<li><a href="/Course/Teachers/Course_RaspberryPi_iFrame.asp" class="newdepth2">��������̸� �̿��� ����� �����</a></li>
				<!--
				<li><a href="/Course/Teachers/Course_C.asp" class="newdepth2">C Programming</a></li>
				<li style="display:none;"><a href="/Course/Teachers/Course_DS.asp" class="newdepth2">�ڷᱸ�� (C ���)</a></li>
				<li><a href="/Course/Teachers/Course_CPP.asp" class="newdepth2">C++ Programming</a></li>
				<li><a href="/Course/Teachers/Course_Java.asp" class="newdepth2">JAVA Programming</a></li>
				<li style="display:none;"><a href="/Course/Teachers/Course_CapstoneDesign.asp" class="newdepth2">ĸ���� ������ <br/>���� ���� ����а� ����</a></li>
				-->
			</ul>
		</li>
		<!--
		<li>
			<a href="/Course/Qolt/Qolt_info.asp" class="newdepth1">����� SW�η¾缺 �������</a>
		</li>
		-->
		<li class="last" style="display:none;">
			<a href="#this" class="newdepth1">��Ʈ SW �ڰ���</a>
			<ul class="newdepth2_wrap no9">
				<li><a href="/Course/License/Course_License_Expert.asp" class="newdepth2">��Ʈ SW Expert �ڰ���</a></li>
				<li class="long"><a href="/Course/License/Course_Licenses.asp" class="newdepth2">BSPM(BIT Software Programming Master)�ڰ���</a></li>
			</ul>
		</li>
		<!--
		<li style="display:none;">
			<a href="#this" class="newdepth1">�����ڰ���</a>
			<ul class="newdepth2_wrap no3">
				<li><a href="/Course/Develop/Course_Develop.asp" class="newdepth2">�����ڰ��� �Ұ�</a></li>
				<li><a href="/Course/Develop/Course_Develop_Windows_2017.asp" class="newdepth2">������ �����ڰ���</a></li>
				<li><a href="/Course/Develop/Course_Develop_Web_2017.asp" class="newdepth2">��ǥ�� �����ڰ���</a></li>
				<li><a href="/Course/Develop/Course_Develop_Android_2017.asp" class="newdepth2">�ȵ���̵� �����ڰ���</a></li>
				<li><a href="/Course/Develop/Course_Develop_Project_2017.asp" class="newdepth2">�ǹ�������Ʈ �����ڰ���</a></li>								
			</ul>
		</li>
		-->
	</ul>
	<!--<p class="mar_t10"><img src="/Images/Content/img_snb_cacaoInfo.jpg" alt="��Ʈ�������Ϳ��� īī���� ������ ��������ϴ�. ģ���߰����ּ���~. īī����ID : ��Ʈ�������� - QR�ڵ�ε� ģ���߰� ���� �մϴ�."></p>-->
</nav>
