<div id="Header_Wrap" STYLE="background: url(/Images/Common/bg_headerRESPONSIVE.png) repeat-x; height:109px; box-shadow:0px 3px 3px #6f6f6f;">	
	<header id="Header" style="padding-left:10px; ">
		<h1 style="color:white; font-size:10pt; letter-spacing:-1pt; line-height:34px; overflow:hidden;">
			������ ������ �ǰ� ���ᰡ ������ �Ǵ� 
			<span style="color:#ffe680;">���� 1% ������</span>�� ����� <span style="color:#bfd98c;">��Ʈ��������</span>
			<!--<img src="/Images/Common/h1_01.png" alt="������ ������ �ǰ� ���ᰡ ������ �Ǵ� ���� 1% �������� ����� ��Ʈ��������">-->
			<!--<h2><a href="/"><img src="/Images/Common/h2_logo.png" alt="��Ʈ�������� �ΰ�"></a></h2>-->
			<div style="clear:both;"></div>
		</h1>
		<!--<a href="/" style="float:right; margin-right:10px;"><img src="/Images/Common/h2_logoRESPONSIVE.png" id="LogoSmall" style="height:26px; margin-top:4px;"></a>-->
		<a href="/" ><img src="/Images/Common/h2_logoRESPONSIVE.png" id="LogoSmall" style="height:26px; margin-top:8px; float:left;"></a>
		<h2 id="LogoOriginal" style="height:37px; overflow:hidden;"><a href="/"><img src="/Images/Common/h2_logoRESPONSIVE.png" style="margin-top:-5px;"/></a>
			<span style="color:white; font-size:8pt; letter-spacing:-0.5pt; vertical-align:-6px; margin-left:3px;">"���� 1% ������ �缺�� ���� ����"</span>
		</h2>
		<nav id="GNB_Wrap">
			<!--
			<span id="SNSbtns" style="DISPLAY:NONE;">
				<a href="https://twitter.com/bit_academy" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnT.png" style="margin-top:5px;"/></a>
				<a href="https://www.facebook.com/Bitschool" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnF.png" style="margin-top:5px;"/></a>
				<a href="http://www.bitacademy.com/Support/Support_cacaoView.asp" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnC.png" style="margin-top:5px;"/></a>
				<a href="http://bitacademy.blog.me/" target="_blank" style="border-radius:7px;"><img src="/Images/logo/SNSbtnB.png" style="margin-top:5px; margin-right:15px;"/></a>
			</span>
			-->
			
			<ul class="gnb">
				<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid")))	then	%>
				<li><a href="/Member/IPIN/Join_step1.asp" title="LOGIN" class="depth5">ȸ������</a></li>
				<li><a href="/Member/login.asp" title="LOGIN" class="depth5">Login</a></li>
				<%	else	%>
				<li><a href="/Member/logout.asp" title="LOGOUT" class="depth6">Logout</a></li>
				<%	end if	%>
				<li><a href="/Member/siteMap.asp" title="SITEMAP" class="depth2">SiteMap</a></li>
				<li class="last"><a href="/Member/notice_list.asp" title="MEMBER" class="depth3">Member</a></li>
			</ul>
		</nav>
		<nav id="LNB_Wrap">
			<ul class="lnb">
				<li class="depth1 no1"><a href="/Course/Expert/Course_Expert.asp" title="�����ȳ�" class="depth1_1" style="margin-top:10px;">�����ȳ�</a>
					<!--<ul class="depth2 no1">-->
					<ul class="depth2 no1" style="top:47px;">
						<!--<li class="gnbImg"></li>-->
						<li>
							<a href="/Course/Expert/Course_Expert.asp" title="����������">����������</a>
							<ul class="depth3 no1">
								<li><a href="/Course/Expert/Course_Expert.asp">���������� �Ұ�</a></li>
								<li><a href="/Course/Expert/Course_Expert_BigDataSystem.asp">������ �ý��� ���� ����������</a></li>
								<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp">Java ����������</a></li>
								<li><a href="/Course/Expert/Course_Expert_Embedded.asp">Embedded System ����������</a></li>
								<li><a href="/Course/Expert/Course_Expert_ClientServerExpert.asp">Client/Server ����������</a></li>
								<li><a href="/Course/BITsupporters_2016.asp">SW������ �İ��� ����</a></li>
								<li><a href="/Course/Expert/Course_Expert_BITproject.asp">��Ʈ������Ʈ</a></li>
								<li><a href="/Education/Education_swMembership.asp">�Ｚ����Ʈ�������� �ȳ�</a></li>
								<li><a href="/Education/Education_Competition2016.asp">IT �迭 ������ �ȳ�</a></li>
								<!--
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
							<a href="/Course/Employ/Course_Employ.asp" title="����ä�����α׷�">���Ի�� ä�뱳��</a>
							<ul class="depth3 no2">
								<li><a href="/Course/Employ/Course_Employ.asp">���Ի�� ä�뱳�� �Ұ�</a></li>
								<li><a href="/Course/Employ/Course_Employ_TwoSonSoft.asp">�ߵμռ���Ʈ [������]</a></li>
								<li><a href="/Course/Employ/Course_Employ_Semics.asp">�߽�ͽ� [������]</a></li>
								<li><a href="/Course/Employ/Course_Employ_DareInc.asp">�ߴٷ����̿��� [������]</a></li>
								<li><a href="/Course/Employ/Course_Employ_voiceye.asp">�ߺ��̽����� [������]</a></li>
								<li><a href="/Course/Employ/Course_Employ_QMC.asp">��ť���� [������]</a></li>
								<!--<li><a href="/Course/Employ/Course_Employ_ivis.asp">�߾��̺� [������]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_DIGIENCE.asp">�ߵ������� [������]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_KCTech.asp">�����̾��� [������]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_LEETECH.asp">�߸��� [������]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_BnEpartners.asp">�ߺ�����ũ��Ʈ�ʽ� [������]</a></li>-->
								<!--<li><a href="/Course/Employ/Course_Employ_IntekDigital.asp">�����ص���Ż [������]</a></li>-->
								<!--
								<li><a href="/Course/Employ/Course_Employ_Netville.asp" class="dnone">�߳�Ʈ�� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_ePapyrus.asp" class="dnone">�������Ƿ罺 [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_Obigo.asp" class="dnone">�߿���� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_BitComputer.asp" class="dnone">�ߺ�Ʈ��ǻ�� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_MarkAny.asp" class="dnone">�߸�ũ�ִ� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_CIMON.asp" class="dnone">�߽��̸� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_SoosanINT.asp" class="dnone">�߼�����̾�Ƽ [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_HumanSoftware.asp" class="dnone">���޸ռ���Ʈ���� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_whiteinfocomm.asp" class="dnone">��ȭ��Ʈ������� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_atec.asp" class="dnone">�߿����� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_commercei.asp" class="dnone">�ߵ����п��� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_netcruz_Java.asp" class="dnone">�߳�ũ����(JAVA Expert) [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_netcruz_ClientServer.asp" class="dnone">�߳�ũ����(Client/Server) [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_diginc.asp " class="dnone">�ߵ������� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_eujen.asp" class="dnone">�������κ� [���ä��]</a></li>
								<li><a href="/Course/Employ/Course_Employ_exicon.asp" class="dnone">�߿����� [���ä��]</a></li>
								-->
								<!--<li><a href="/Course/Employ/Course_Employ_netcruz.asp" class="dnone">�߳�ũ���� [������]</a></li>-->
								<li><a href="/Course/BITsupporters_2016.asp">SW������ �İ��� ����</a></li>
							</ul>
						</li>
						<li>
							<a href="/Course/Kukka/Course_Kukka_2016.asp" title="�������� �������">�������� �������</a>
							<ul class="depth3 no3">
								<li><a href="/Course/Kukka/Course_Kukka_2016.asp">�������� ������� �Ұ�</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_EmbeddedIoT_2016.asp">IoT ����̽� ������ ����<br/> �Ӻ���� �ý��� ������ �缺����</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_JavaEnterprise_2016.asp">JAVA Enterprise �ý��� ������ �缺����</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_JavaDatabase_2016.asp">JAVA ��� Database ������ �缺����</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_JavaWebStandards_2017.asp">JAVA ��� ��ǥ��/�����α׷��� ����η� �缺����</a></li>
								<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2017.asp">C ��� Embedded Linux �ý��� ����η� �缺����</a></li>
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2016.asp">JAVA ��� ������ ó���� ���� <br/>�л������ý��� ������ �缺����</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebStandards_2016.asp">JAVA ��� <br/>��ǥ��/�����α׷��� ������ �缺����</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaWebMobile_2016.asp">JAVA Web & Mobile ������ �缺����</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedLinux_2016.asp">C ��� Embedded Linux <br/>�ý��� ������ �缺����</a></li>-->
								<!--<li><a href="/Course/Kukka/Course_Kukka_JavaSpringMobile_2016.asp">JAVA Spring Framework�� Ȱ���� <br/>����� �� ������ �缺����</a></li>-->
								
							</ul>
						</li>
						<li>
							<a href="/Course/shortCourse/Course_shortCourse_acception.asp" title="���α׷��ְ��� / �ٽɿ�������">���α׷��� / �ٽɿ�������</a>
							<ul class="depth3 no4">
								<li><a href="/Course/shortCourse/Course_shortCourse_acception.asp">�������� ����</a></li>
								<li style="DISPLAY:NONE;"><a href="/Course/shortCourse/Course_shortCourse_Vacation_Winter_2016.asp">2016�� �ܿ���� Ư��</a></li>
								<!--
								<li><a href="/Course/shortCourse/Course_shortCourse_acception.asp">�������� ����</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_lanuageMaster.asp">Language Master</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp">SW Visualization</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_javaWeb.asp">Java Web</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_mobile.asp">�����</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_sw.asp">SW����</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_dataBase.asp">DataBase</a></li>
								<li><a href="/Course/shortCourse/Course_shortCourse_webDesign.asp">Web & Design</a></li>
								-->
								<li><a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp">��뺸��ȯ�޾ȳ�</a></li>
								<!--<li><a href="/Course/shortCourse/DetailPage/Course_cMaster.asp">C Master (C+�ڷᱸ��)</a></li>-->
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_c.asp">C Programming (����)</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">C Programming (�ָ�)</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_c2.asp">�ڷᱸ�� �� �ʱ� �˰���</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp">�����ذ��� ���� �߱� �˰���</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp">�����ذ��� ���� ��� �˰���</a></li>
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">C++ Programming</a></li>
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_java.asp">JAVA Programming (����)</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">JAVA Programming (�ָ�)</a></li>
								
								<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp">Python Programming</a></li>
								<li><a href="/Course/ShortCourse/DetailPage/Course_cShap.asp">C# Programming</a></li>
								<!--<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp">SW Visualization</a></li>-->
								<li><a href="/Course/shortCourse/DetailPage/Course_Nodejs.asp">Java Web</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_Agile4Developer.asp">IT PM</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_android.asp">Mobile</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_TestingAutomation.asp">SW����</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_SearchEngine.asp">DataBase</a></li>
								<li><a href="/Course/shortCourse/DetailPage/Course_RaspberryPi.asp">Embedded</a></li>
								<!--<li><a href="/Course/shortCourse/DetailPage/Course_OCJP.asp">Java �ڰ��� ���</a></li>-->
							</ul>
						</li>
						<!--
						<li>
							<a href="/Course/BitDesign/BitDesign_intro.asp" title="��Ʈ�����ΰ���">��Ʈ�����ΰ���</a>
							<ul class="depth3 no6">
								<li><a href="/Course/BitDesign/BitDesign_intro.asp">��Ʈ�����ΰ��� �Ұ�</a></li>
								<li><a href="/Course/BitDesign/BitDesign_synthesize.asp">���չ�(�����)</a></li>
								<li><a href="/Course/BitDesign/BitDesign_shortCourse.asp">�ܰ�����</a></li>
								<li><a href="/Course/BitDesign/BitDesign_license.asp">�ڰ��� ����</a></li>
								<li><a href="/Course/BitDesign/BitDesign_Color.asp">�÷����հ���</a></li>
								<li><a href="/Course/BitDesign/BitDesign_creative.asp">ũ������Ƽ�����</a></li>
							</ul>
						</li>
						-->
						<li>
							<a href="/Course/LocalCampus/localCampus_info.asp" title="���к�Ʈ��������">���к�Ʈ��������</a>
							<ul class="depth3 no5">
								<li><a href="/Course/LocalCampus/localCampus_info.asp">���к�Ʈ�������� �Ұ�</a></li>
								<li><a href="/Course/LocalCampus/localCampus_asan.asp">�ƻ�ķ�۽�</a></li>
								<li><a href="/Course/LocalCampus/localCampus_gunpo.asp">����ķ�۽�</a></li>
								<li><a href="/Course/LocalCampus/localCampus_deajeon.asp">����ķ�۽�</a></li>
								<li><a href="/Course/LocalCampus/localCampus_busan.asp">�λ�ķ�۽�</a></li>
								<li><a href="/Course/LocalCampus/localCampus_vacation.asp">���� ����Ư��</a></li>
							</ul>
						</li>
						<!--
						<li>
							<a href="/Course/JopAcademy/JopAcademy_info.asp" title="û�������ī����">û����� ��ī����</a>
							<ul class="depth3 no7">
								<li><a href="/Course/JopAcademy/JopAcademy_info.asp">û�������ī���̼Ұ�</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_soonChun_windowNet.asp">Windows .NET (��õ���)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_soonChun_javaWeb.asp">JAVA Web&amp;Mobile(��õ���)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_polytechnic_javaWeb.asp">JAVA Web&amp;Mobile(����)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_seokyeong_javaWeb.asp">JAVA Web&amp;Mobile(�����)</a></li>
								<li><a href="/Course/JopAcademy/JopAcademy_sangmyung_javaMobile.asp">JAVA Mobile(����)</a></li>
							</ul>
						</li>
						<li class="last"><a href="/Course/Qolt/Qolt_info.asp" title="�����SW�η¾缺" class="bg_none">�����SW�η¾缺</a></li>
						-->
						<li>
							<a href="/Course/Teachers/Course_Teachers.asp" title="���������缺����">����Ʈ���� ���������缺����</a>
							<ul class="depth3 no6">
								<li><a href="/Course/Teachers/Course_Teachers.asp">���������缺���� �Ұ�</a></li>
								<li><a href="/Course/Teachers/Course_RaspberryPi_iFrame.asp">��������̸� �̿��� ���ͳ� ���� �����</a></li>
								<!--
								<li><a href="/Course/Teachers/Course_C.asp">C Programming</a></li>
								<li style="display:none;"><a href="/Course/Teachers/Course_DS.asp">�ڷᱸ�� (C ���)</a></li>
								<li><a href="/Course/Teachers/Course_CPP.asp">C++ Programming</a></li>
								<li><a href="/Course/Teachers/Course_Java.asp">Java Programming</a></li>
								<li style="display:none;"><a href="/Course/Teachers/Course_CapstoneDesign.asp">ĸ���� ������ ���� ���� ����а� ����</a></li>
								-->
							</ul>
						</li>
						<li>
							<a href="/Course/License/Course_Licenses.asp" title="��Ʈ SW �ڰ���">��Ʈ SW �ڰ���</a>
							<ul class="depth3 no7">
								<li><a href="/Course/License/Course_License_Expert.asp">��Ʈ SW Expert �ڰ���</a></li>
								<li><a href="/Course/License/Course_Licenses.asp">BSPM(BIT Software Programming Master)�ڰ���</a></li>
							</ul>
						</li>
						<li style="display:none;">
							<a href="/Course/Develop/Course_Develop.asp" title="�����ڰ���">�����ڰ���</a>
							<ul class="depth3 no4">
								<li><a href="/Course/Develop/Course_Develop.asp">�����ڰ��� �Ұ�</a></li>
								<li><a href="/Course/Develop/Course_Develop_Windows_2017.asp">������ �����ڰ���</a></li>
								<li><a href="/Course/Develop/Course_Develop_Web_2017.asp">��ǥ�� �����ڰ���</a></li>
								<li><a href="/Course/Develop/Course_Develop_Android_2017.asp">�ȵ���̵� �����ڰ���</a></li>
								<li><a href="/Course/Develop/Course_Develop_Project_2017.asp">�ǹ�������Ʈ �����ڰ���</a></li>	
							</ul>
						</li>
						
					</ul>
				</li>
				<li class="depth1 no2"><a href="/Register/register_info.asp" title="������û" class="depth1_2" style="margin-top:10px;">������û</a>
					<ul class="depth2 no2" style="top:47px;">
						<!--<li><a href="/Register/register_info.asp" class="bg_none">�¶��������ȳ�</a></li>-->
						<li>
							<a href="/Register/register_newRequest.asp">�ű�����</a>
							<ul class="depth3 no1">
								<li><a href="/Register/Request/register_expert1.asp">����������</a></li>
								<li><a href="/Register/Request/register_coursePresentation.asp">��������ȸ</a></li>
								<li><a href="/Register/Request/register_employment1.asp">���Ի�� ä�뱳��</a></li>
								<li><a href="/Register/Request/register_kukka1.asp">���������������</a></li>
								<li><a href="/Register/Request/register_chung1.asp">û�������ī����</a></li>
								<!--
								<li><a href="/Register/Request/register_kukka1.asp">�����Ⱓ ������� �����Ʒ�</a></li>
								<li><a href="/Register/Request/register_embeddedHigh1.asp">�Ӻ���� ����η� �缺����</a></li>
								-->
								<li style="DISPLAY:NONE;"><a href="/Register/Request/register_developer.asp">�����ڰ���</a></li>
								<li><a href="/Register/Request/register_shortCourse.asp">���α׷��ְ���</a></li>
								<!--<li><a href="/Register/Request/register_bitDesign.asp">��Ʈ�����α�������</a></li>-->
								<!--
								<li><a href="/Register/Request/register_university.asp">���к�Ʈ�������</a></li>
								<li><a href="/Register/Request/register_localCampus.asp">����ķ�۽�</a></li>
								-->
								<li><a href="/Register/Request/register_localCampus.asp">���к�Ʈ��������</a></li>
								<li><a href="/Register/Request/register_license1.asp">��Ʈ SW ���α׷��� �ڰ�������</a></li>
							</ul>
						</li>
						<li><a href="/Register/register_requestResult.asp" class="bg_none">�������</a></li>
						<li><a href="/Register/register_paymentStep.asp" class="bg_none">��������</a></li>
						<li><a href="/Register/card_approval.asp" class="bg_none">ī�����</a></li>
						<li class="last"><a href="/Register/register_depositCheck.asp" class="bg_none">�Ա�Ȯ��</a></li>
					</ul>
				</li>
				<li class="depth1 no3"><a href="/Employment/employment_jobCenter.asp" title="���" class="depth1_3" style="margin-top:10px;">���</a>
					<ul class="depth2 no3" style="top:47px;">
						<li><a href="/Employment/employment_jobCenter.asp" class="bg_none" target="_blank">��Ʈ�������� �������</a></li>
						<li><a href="/job/WriteRecruit.asp" class="bg_none">�����Ƿ� ��û�ϱ�</a></li>
						<li><a href="/job/List.asp" class="bg_none">ä������ Ȯ���ϱ�</a></li>	
						<li><a href="/job/Interview.asp" class="bg_none">�����ı�</a></li>	
						<li><a href="/Employment/employment_bitAdvantage.asp" class="bg_none">��Ʈ��� ����</a></li>
						<li><a href="/Employment/employment_company.asp" class="bg_none">��Ʈ��� ������</a></li>
						<li class="last"><a href="/Employment/employment_companyEmployment.asp" class="bg_none">����ä�뱳�� ���� ��ü</a></li>
					</ul>
				</li>
				<li class="depth1 no4"><a href="/Education/Education_info.asp" title="����������" class="depth1_4" style="margin-top:10px;">����������</a>
					<ul class="depth2 no4" style="top:47px;">
						<li>
							<a href="/Education/Education_info.asp">�����Ź���� �Ұ�</a>
							<ul class="depth3 no1">
								<li><a href="/Education/Education_info.asp">�����Ź���� �Ұ�</a></li>
								<li><a href="/Education/Education_advantage.asp">��Ź��������</a></li>
								<li><a href="/Education/Education_process.asp">��Ź��������</a></li>
								<li><a href="/Education/Education_performance.asp">��Ź�����������</a></li>
								<li><a href="/Education/Education_application.asp">��� �� ������û</a></li>
							</ul>
						</li>
						<li><a href="/Education/Education_swMembership.asp" class="bg_none">�Ｚ����Ʈ��������</a></li>
						<li><a href="/Education/Education_consortium.asp" class="bg_none">���������ڿ��������ҽþ�</a></li>
						<!--<li><a href="#this" title="">���������ڿ����߼ҽþ�</a></li>-->
					</ul>
				</li>
				<li class="depth1 no5"><a href="/Center/Center_info.asp" title="" class="depth1_5" style="margin-top:10px;">���ͼҰ�</a>
					<ul class="depth2 no5" style="top:47px;">
						<li><a href="/Center/Center_info.asp" class="bg_none">��Ʈ�������� �Ұ�</a></li>
						<li><a href="/Center/Center_feature.asp" class="bg_none">��Ʈ�������� Ư¡</a></li>
						<li><a href="/Center/Center_history.asp" class="bg_none">��Ʈ�������� ����</a></li>
						<li class="last"><a href="/Center/Center_gallery.asp" class="bg_none">����ȯ��</a></li>
					</ul>
				</li>

				<li class="depth1 no6"><a href="/Support/Support_consult_ask.asp" title="" class="depth1_6 bg_none" style="margin-top:10px;">�����ȳ�</a>
					<ul class="depth2 no5" style="top:47px;">
						<li>
							<a href="/Support/Support_faq_etc.asp">���ֹ�������</a>
							<ul class="depth3 no1">
								<!--<li><a href="/Support/Support_faq.asp">����������</a></li>-->
								<li style="display:none;"><a href="/Support/Support_labor_favor.asp">�뵿����������</a></li>
								<li><a href="/Support/Support_tuition_info.asp">������ȳ�</a></li>
								<li><a href="/Support/Support_faq_etc.asp">��Ÿ���ǻ���</a></li>
							</ul>
						</li>
						<li><a href="/Support/Support_consult_ask.asp" class="bg_none">��㹮��</a></li>
						<li><a href="/Support/Support_online_list.asp" class="bg_none">Q&A</a></li>
						<li><a href="/Support/Support_certification.asp" class="bg_none">�ڰ��� �� Ȯ�μ� ��û</a></li>
						<li><a href="/Support/Support_etcRent.asp" class="bg_none">���ǽ� �Ӵ빮��</a></li>
						<li><a href="/Support/Support_instructor.asp" class="bg_none">��Ʈ�������� �������</a></li>
						<li class="last"><a href="/Support/Support_cacaoView.asp" class="bg_none">īī���� ģ���߰� ���</a></li>
					</ul>
				</li>

			</ul>
		</nav>
		<a href="#this" class="totalCourse" title="Ŭ���� ��ü���� ����" style="DISPLAY:NONE;"><img src="/Images/Common/btn_totalMenu_open.png" alt="��ü���� ����"></a>
		
	</header>
	<div class="totalMenu_wrap" style="DISPLAY:NONE;">
		<div class="totalMenu" style="height:720px; background:#fff url('/Images/Common/bg_totalCourse2.jpg') repeat-y;">
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/Expert/Course_Expert.asp" style="font-size:12pt;">����������</a></h5>
				<ul class="depth1">
					<li><a href="/Course/Expert/Course_Expert_JavaExpert.asp">Java Expert</a></li>
					<li><a href="/Course/Expert/Course_Expert_Embedded.asp">Embedded System Expert</a></li>
					<li><a href="/Course/Expert/Course_Expert_WindowsExpert.asp">Windows Expert</a></li>
					<li><a href="/Course/BITsupporters_2016.asp" >SW������ �İ��� ����</a></li>
					<li><a href="/Course/Expert/Course_Expert_BITproject.asp">��Ʈ������Ʈ</a></li>
					<li><a href="/Education/Education_swMembership.asp">�Ｚ����Ʈ��������</a></li>
					<!--
					<li><a href="/Course/Expert/Course_Expert_ClientServer.asp">Client / Server</a></li>
					<li><a href="/Course/Expert/Course_Expert_NetworkExpert.asp">Network Expert</a></li>
					<li><a href="/Course/Expert/Course_Expert_NetExpert.asp">.NET Expert</a></li>
					-->
				</ul>
			</div>
<!--
			<div class="totalMenu_list">
				<h5><a href="/Course/Employ/Course_Employ.asp">���Ի�� ä�뱳��</a></h5>
				<ul class="depth1">
					<li><a href="/Course/Employ/Course_Employ_BitComputer.asp">�ߺ�Ʈ��ǻ��</a></li>
					<li><a href="/Course/Employ/Course_Employ_netcruz_Java.asp">�߳�ũ����(JAVA Expert)</a></li>
					<li><a href="/Course/Employ/Course_Employ_netcruz_ClientServer.asp">�߳�ũ����(Client/Server)</a></li>
					<li><a href="/Course/Employ/Course_Employ_diginc.asp">��������</a></li>
					<li><a href="/Course/Employ/Course_Employ_ivis.asp">���̺�</a></li>
					<li><a href="/Course/Employ/Course_Employ_eujen.asp">�������κ�</a></li>
					<li><a href="/Course/Employ/Course_Employ_exicon.asp">������</a></li>
				</ul>
			</div>
-->
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/Develop/Course_Develop.asp" style="font-size:12pt;">�����ڰ���</a></h5>
				<ul class="depth1">
					<li><a href="/Course/Develop/Course_Develop_webMobile.asp">��ǥ��/����� �����ڰ���</a></li>
					<li><a href="/Course/Develop/Course_Develop_window.asp">�������� �����ڰ���</a></li>
					<li><a href="/Course/Develop/Course_Develop_RaspberryPi.asp">������� �̿��� IoT ��ġ���۰���</a></li>
				</ul>
			</div>
			<!--
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/Kukka/Course_Kukka.asp" style="font-size:12pt;">�������� �����������</a></h5>
				<ul class="depth1">
					<li><a href="/Course/Kukka/Course_Kukka_JavaEnterprise2016.asp">JAVA Enterprise ����η� �缺����</a></li>
					
					<li><a href="/Course/Kukka/Course_Kukka_JavaBigData_2016.asp">JAVA ��� ������ ó���� ����<br/> �л� ���� �ý��� ������ �缺����</a></li>
					<li><a href="/Course/Kukka/Course_Kukka_IOT_2016.asp">IoT ����̽� ������ ���� <br/>�Ӻ���� ������ ������ �缺����</a></li>
					<li><a href="/Course/Kukka/Course_Kukka_DotNetCloud_2016.asp">Windows .NET Ŭ���� �÷��� HW���� <br/>������ �缺����</a></li>
					
				</ul>
			</div>
			-->
			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/shortCourse/Course_shortCourse_acception.asp" style="font-size:12pt;">���α׷��ְ���</a></h5>
				<ul class="depth1">
					<li><a href="/Course/ShortCourse/DetailPage/Course_cMaster.asp">C Master (C+�ڷᱸ��)</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_c.asp">C Programming</a></li>
					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_C_Weekend.asp">C Programming (�ָ�)</a></li>-->
					<li><a href="/Course/ShortCourse/DetailPage/Course_c2.asp">�ڷᱸ��(C ���)</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cPlus.asp">C++ Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_java.asp">JAVA Programming</a></li>
					<!--<li><a href="/Course/ShortCourse/DetailPage/Course_Java_Weekend.asp">JAVA Programming (�ָ�)</a></li>-->
					<li><a href="/Course/ShortCourse/DetailPage/Course_Python.asp">Python Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cShap.asp">C# Programming</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp">Servlet & JSP</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_html5.asp">HTML5 (HTML+CSS)</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_WebPublishing.asp">���ۺ��� �ǹ�����</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp">SQL & JDBC</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_spring.asp">SPRING</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_aiojava.asp">All-in-One JAVA ���ø����̼� ����</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_JavaScript.asp">�� �����ڸ� ���� HTML5 ��� <br/>JavaScript & jQuery ����</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_swVisualization.asp">Software Visualization</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_ArchitectureBasic.asp">���߽ǹ��ڸ� ���� SW ��Ű��ó �Թ�</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_Agile4Developer.asp">�����ڸ� ���� ������ SW ���� �ǹ�</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_ITIL.asp">ITILv3�� ������� �� IT Service Management</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_android.asp">�ȵ���̵� ���α׷���</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_hybrid.asp">���̺긮�� ���α׷���</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_CapstoneDesign.asp">ĸ���� ������ ���� ���� ����а� ����</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_javaPlan.asp">JAVA �������</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_realUml.asp">UML ���������� �̰͸� ����.</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_uml.asp">����!�м�����</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_designPatten.asp">��ü���� ����� ������ ����</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_cordingTuning.asp">�ڹ� ��������� ���� �ڵ������� Ʃ��</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_dataBaseModeling.asp">Database Modeling</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_SearchEngine.asp">������ �˻� ���� ���� ����</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_springData.asp">Spring DATA + noSQL</a></li>
					<li><a href="/Course/ShortCourse/DetailPage/Course_dataBase.asp">Database ����Ʃ��</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_StorageSystem_FMBased.asp">Flash Memory ��� Storage System</a></li>
					<li><a href="/Course/shortCourse/DetailPage/Course_RaspberryPi.asp">���¼ҽ� ����� ���̸� Ȱ���� IoT ����</a></li>
					<!--<li><a href="/Course/shortCourse/DetailPage/Course_OCJP.asp">Java �ڰ��� ��� ����</a></li>-->
				</ul>
			</div>
			<!--
			<div class="totalMenu_list">
				<h5><a href="/Course/LocalCampus/localCampus_info.asp">�����ΰ���</a></h5>
				<ul class="depth1">
					<li><a href="/Course/BitDesign/detailPage/BitDesign_synthesize_visualDesign.asp">�ð� ������ ������</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_synthesize_webDesign.asp">�� ������ ������</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_shortCourse_photoshop.asp">Adobe Photoshop</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_shortCourse_illustrator.asp">Illustrator</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_shortCourse_inDesign.asp">Indesign (����)</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_shortCourse_inDeisgnMobile.asp">Indesign(�����)</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_shortCourse_flash.asp">�÷��� ���۰���</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_shortCourse_dreamwearber.asp">�帲���� �÷��� HTML+CSS ��ũ��</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_license_gtqPhotoshop.asp">GTQ Photoshop �ڰ��� ����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_license_gtqillustrator.asp">GTQ Illustrator �ڰ��� ����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_license_gtqFlash.asp">GTQ �÷��� �ڰ��� ����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_Color_colorMatching.asp">�÷���Ī�ڽ� ����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_Color_colorCoummunication.asp">����Ͻ��� ���� �÷�Ŀ�´����̼� ����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_Color_colorCoordinator.asp">�÷��ڵ������ ������ �⺻����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_Color_colorTherapy.asp">�÷��׶��� ����</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_creative_digitalArt.asp">ũ������Ƽ�� ������ ��Ʈ�� ��ũ�� </a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_creative_characterDesign.asp">ĳ���� ����׿��� �����α���</a></li>
					<li><a href="/Course/BitDesign/detailPage/BitDesign_creative_ideaArtWork.asp">â���� �߻�� ��Ʈ��</a></li>
				</ul>
			</div>
			-->

			<div class="totalMenu_list" style="height:680px;">
				<h5><a href="/Course/LocalCampus/localCampus_info.asp" style="font-size:12pt;">���к�Ʈ��������</a></h5>
				<ul class="depth1">
					<li><a href="/Course/LocalCampus/localCampus_asan.asp">�ƻ�ķ�۽�</a></li>
					<li><a href="/Course/LocalCampus/localCampus_gunpo.asp">����ķ�۽�</a></li>
					<li><a href="/Course/LocalCampus/localCampus_deajeon.asp">����ķ�۽�</a></li>
					<li><a href="/Course/LocalCampus/localCampus_busan.asp">�λ�ķ�۽�</a></li>
				</ul>
			</div>
			
			<a href="#this" class="delete_gray" style="top:680px;"></a>
		</div>
	</div>
</div>
<!--
<p class="gnbBg"></p>
-->