<%
	Session.CodePage  = 949 '�ѱ�
	Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>

<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// BSPM (BIT Software Programming Master) �ڰ��� ON
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>��Ʈ SW �ڰ���
						</p>
						<h4 style="letter-spacing:-2px;">BSPM <span style="font-size:0.9em;">(BIT Software Programming Master)</span> �ڰ���</h4>
					</div>
					
					<section class="section" >
						<div class="con_wrap1709">
							<h5>"��, ���α׷��� �� �Ѵ�!" ��� �����Ͻó���?</h5>
							<p>
								�ֱ� û��Ǿ����� ���ĸ��� ����Ͽ� 10%�� ����(<a href="http://www.index.go.kr/potal/main/EachDtlPageDetail.do?idx_cd=1495" target="_blank" style="font-size:0.9em; color:#1357a9; font-weight:600;"><u>���û������Ȱ���α����硹2017 - û���뵿��</u></a>) �ϴ� �� �Ƿ��� ����� ��������� �������� �����ϰ� �ִ� ��Ȳ����, ������� '���� ���簡 ����' �� �ϼҿ��ϸ� ���γ��� �̾߱��ϰ� �ֽ��ϴ�.
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>������ ������!</h5>
							<p>
								�Ƿ��� ������ �� �ִٸ�, �غ�� �����п��� ����� ���� �ξ� �� �о����ϴ�.
							</p>
						</div>
							<!--
							<div style="background-color:#404040; width:100%; margin:30px auto; font-family:'SandolGothicNeo2'; font-weight:600; font-size:15pt; color:white; text-align:center; padding:25px 0; box-shadow:1px 4px 4px #747474;">
								��, ���α׷��� �� �Ѵ�
							</div>
							<p style="width:70%; margin:0 auto 10px auto;">
								��� �����Ͻó���?
							</p>
							<p style="width:70%; margin:0 auto;">
								�ֱ� û��Ǿ����� ���ĸ��� ����Ͽ� 10%�� ����(<a href="http://www.index.go.kr/potal/main/EachDtlPageDetail.do?idx_cd=1495" target="_blank" style="font-size:0.9em; color:#1357a9; font-weight:600;"><u>���û������Ȱ���α����硹2016 - û���뵿��</u></a>) �ϴ� �� �ɷ��� ����� ��������� �������� �����ϰ� �ִ� ��Ȳ����, ������� '���� ���簡 ����' ��� �ϼҿ��ϸ� ���γ��� �̾߱��ϰ� �ֽ��ϴ�.
							</p>
							<div style="background-color:#5f4faf; width:100%; margin:30px auto; font-family:'SandolGothicNeo2'; font-weight:600; font-size:15pt; color:white; text-align:center; padding:25px 0px; box-shadow:1px 4px 4px #747474;">
								������ ������.<br/>
							</div>
							<p style="width:70%; margin:0 auto;">
								�Ƿ��� ������ �� �ִٸ�, �غ�� �����п��� ����� ���� �ξ� �� �о����ϴ�.
							</p>
							-->
						<div class="con_wrap1709">
							<h5>BSPM �̶� ?</h5>
							<p class="mar_b10">
								<span class="blueTxt boldTxt">BSPM</span> �̶�, 2016����� <span class="blueTxt boldTxt">��Ʈ��������</span>�� �����ϰ� �ִ� �ڰݽ��迡�� �հ��Ͻ� �е鿡�� �߱��� �帮�� <b>���α׷��� �ڰ���</b>���μ�, �ڰݱ⺻�� ��17�� ��2�׿� ���� �ֹ���ó�� �̷�â�����кο� ����ϰ� �ѱ������ɷ°��߿��� ��ϵ� �ΰ��ڰ����Դϴ�.
							</p>
							<p class="mar_b10">
								�� �ڰ����� ����Ͻô� ����, ��Ʈ�� �����ϴ� ������ ������ ���α׷��� �Ƿ��� ���߾��� ���� ���� ���� ���� ���α׷��� ������ �� ������ ���������� �����Ͻ� �� �ְ�, ��Ʈ�������Ϳ� ������ �ΰ� �ִ� �����<span style="font-size:0.8em;">(�Ʒ� ��Ʈ SW �ڰ��� ��� ������ ����)</span>�� �����Ͻ� ��� �������� ���� �޴� �� �������� ��� ������ ������ �� �ֽ��ϴ�.
							</p>
						</div>
<!--							
							<p>	
								BSPM(BIT Software Programming Master)�� �ڰݱ⺻�� �� 17�� ��2�׿� ���� �ֹ���ó�� �̷�â�����кο� ����ϰ� �ѱ������ɷ°��߿����� ������ �ΰ��ڰ����Դϴ�.<br/>
								�� ��Ʈ�� BSPM �ڰ����� ������ �ڴ� ������ ������ Language ���α׷��� �Ƿ��� ���߾���, ���� ���α׷����� ������ �� �ִ� �������� ������ �� �ֽ��ϴ�. ����� �־� �� �ڰ����� ������ �ڸ� ���� ��� �� �������� �����ϴ� ������ �����ϰ� �ֽ��ϴ�.
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
											<th scope="col">����</th>
											<th scope="col">�ѱ��ڰ��� ��Ī</th>
											<th scope="col">���� ��Ī</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="2">BSPM</td>
											<td class="darker c" >C���α׷��� ������</td>
											<td>BCCPM (BIT Certified C Programming Master)</td>
										</tr>
										<tr>
											<td class="darker c" >JAVA���α׷��� ������</td>
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
							<h5>2018�� BSPM �ڰ��� ����</h5>
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
											<th class="darkgreyTxt">16ȸ��</th>
											<th class="darkgreyTxt">17ȸ��</th>
											<th class="darkgreyTxt">18ȸ��</th>
											<th class="darkgreyTxt">19ȸ��</th>
											<th class="darkgreyTxt">20ȸ��</th>
											<th class="darkgreyTxt">21ȸ��</th>
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
											<th class="darkgreyTxt">22ȸ��</th>
											<th>23ȸ��</th>
											<th>24ȸ��</th>
											<th>25ȸ��</th>
											<th>26ȸ��</th>
											<th>27ȸ��</th>
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
								19ȸ�� : 2018.4.28(��) ���� 10:00 
								20ȸ�� : 2018.5.26(��) ���� 10:00
								21ȸ�� : 2018.6.30(��) ���� 10:00
								-->
							</p>
<%
'							<!--18ȸ�� : 2018.3.31(��) ���� 10:00-->
'							<!-- 17ȸ�� : 2018.2.24(��) ���� 10:00-->
'							<!-- 16ȸ�� : 2018.1.27(��) ���� 10:00<br/> -->
'							<!--<li>15ȸ�� : 2017.12.30(��) ���� 10:00</li>-->
'							<!--<li>14ȸ�� : 2017.11.25(��) ���� 10:00</li>-->
'							<!--<li>13ȸ�� : 2017.10.28(��) ���� 10:00</li>-->
'							<!--<li>12ȸ�� : 2017.09.30(��) ���� 10:00</li>-->
'							<!--<li>11ȸ�� : 2017.08.26(��) ���� 10:00</li>-->
'							<!--<li>10ȸ�� : 2017.07.29(��) ���� 10:00</li>-->
'							<!--<li>9ȸ�� : 2017.06.24(��) ���� 10:00</li>-->
'							<!--<li>8ȸ�� : 2017.05.27(��) ���� 10:00</li>-->
'							<!--<li>7ȸ�� : 2017.04.29(��) ���� 10:00</li>-->
'							<!--<li>6ȸ�� : 2017.03.25(��) ���� 10:00</li>-->
'							<!--<li>5ȸ�� : 2017.02.25(��) ���� 10:00</li>-->
'							<!--<li>4ȸ�� : 2017.01.21(��) ���� 10:00</li>-->
'							<!--<li>3ȸ�� : 2016.12.24(��) ���� 10:00</li>-->
'							<!--<li>2ȸ�� : 2016.11.26(��) ���� 10:00</li>-->
'							<!--<li>2016.10.29(��) ���� 10:00</li>-->
'
'							<!--
'							<h5>�������� (2018)</h5>
'							<table class="table_col_type1 tableSchedule">
'								<tr>
'									
'								</tr>
'								<tr>
'									<td>22ȸ�� : 7�� 28��(��)</td>
'									<td>23ȸ�� : 8�� 25��(��)</td>
'									<td>24ȸ�� : 9�� 29��(��)</td>
'									<td>25ȸ�� : 10�� 27��(��)</td>
'									<td>26ȸ�� : 11�� 24��(��)</td>
'									<td>27ȸ�� : 12�� 29��(��)</td>
'								</tr>
'							</table>
'							-->
%>							
						</div>
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<p>
								���� ���ʱ� ���ʴ�� 74�� ��Ʈ�� 3��, ��Ʈ��������
							</p>
						</div>

						<div class="con_wrap1709">
							
							<!-- BSPM Companies -->
							<!--#include virtual="/Course/License/Common_LicenseCompanies.inc" -->
							
							<h5>��Ʈ SW �ڰ��� ��� ������ (�� <%=countCompany%>�� ���)</h5>
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
									(��)��Ʈ��ǻ��
								</div>
								<div class="divCompany">
									<div><a href="http://m2mi.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_M2MCoding.png" style="height:30px; margin-top:5px; " /></a></div>
									(��)�������ڵ�
								</div>
								<div class="divCompany">
									<div><a href="http://www.entermate.com/" target="_blank"><img src="/Images/License/img_LOGO_Entermate.jpg" style="width:90px; margin-top:10px;" /></a></div>
									(��)���͸���Ʈ
								</div>
								<div class="divCompany">
									<div><a href="http://www.ontune.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_TeemStone.jpg" style="height:30px; margin-top:5px;" /></a></div>
									(��)������
								</div>
								<div class="divCompany">
									<div><a href="http://www.yest.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_YesT.jpg" style="width:90px;" /></a></div>
									(��)����Ƽ
								</div>
								<div class="divCompany">
									<div><a href="http://www.g-inno.com/" target="_blank"><img src="/Images/License/img_LOGO_G-innoSystems.jpg" style="width:90px; margin-top:10px;" /></a></div>
									(��)����ý���
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div style="height:46px !important;"><a href="http://adrftech.com/" target="_blank"><img src="/Images/License/img_LOGO_ADRF.png" style="height:30px; margin-top:5px;" /></a></div>
									(��)���̵�˿����ڸ���
								</div>
								<div class="divCompany">
									<div><a href="http://www.r2ware.com" target="_blank"><img src="/Images/License/img_LOGO_r2ware.png" style="height:30px; max-width:100%; margin-top:5px;" /></a></div>
									(��)��������
								</div>
								<div class="divCompany">
									<div><a href="http://ivisolution.com" target="_blank"><img src="/Images/License/img_LOGO_IVIS.png" style="height:24px; max-width:100%; margin-top:10px;" /></a></div>
									(��)���̺�
								</div>
								<div class="divCompany">
									<div><a href="http://www.digitalone.co.kr" target="_blank"><img src="/Images/License/img_LOGO_DigitalOne.png" style="height:30px; margin-top:8px;" /></a></div>
									(��)�����п�
								</div>
								<div class="divCompany">
									<div><a href="http://www.bluecost.co.kr" target="_blank"><img src="/Images/License/img_LOGO_CMX.png" style="max-width:100%; margin-top:0px;" /></a></div>
									(��)��������
								</div>
								<div class="divCompany">
									<div><a href="http://www.ssts.co.kr" target="_blank"><img src="/Images/License/img_LOGO_ShinsungTongsang.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)�ż����
								</div>
								<div class="divCompany">
									<div><a href="http://kr.humuson.com/" target="_blank"><img src="/Images/License/img_LOGO_Humuson.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)�޸ӽ���
								</div>
								<div class="divCompany">
									<div><a href="http://www.bow-tech.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_BOWTech.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)������ũ
								</div>
								<div class="divCompany">
									<div><a href="http://www.coregate.com/" target="_blank"><img src="/Images/License/img_LOGO_Coregate.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)�ھ����Ʈ
								</div>
								<div class="divCompany">
									<div><a href="http://www.goodtv.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_GOODTV.png" style="max-width:100%; margin-top:10px;" /></a></div>
									GOODTV
								</div>
								<div class="divCompany">
									<div><a href="http://www.kornicglory.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_KornicGlory.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)�ڴб۷θ�
								</div>
								<div class="divCompany">
									<div><a href="http://www.on-test.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_Ontest.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)���׽�Ʈ
								</div>
								<div class="divCompany">
									<div><a href="http://www.power-gen.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_Powergen.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)�Ŀ���
								</div>
								<div class="divCompany">
									<div><a href="http://www.gtplus.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_GTPlus.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)��Ƽ�÷���
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.fouroclockdg.com/" target="_blank"><img src="/Images/License/img_LOGO_Fouroclockdg.gif" style="height:40px; max-width:100%; " /></a></div>
									����Ŭ�������α׷�
								</div>
								<div class="divCompany">
									<div><a href="http://mcscience.com/" target="_blank"><img src="/Images/License/img_LOGO_McScience.png" style="max-width:100%; margin-top:10px;" /></a></div>
									(��)�ƻ��̾�
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.phoenixon.com/" target="_blank"><img src="/Images/License/img_LOGO_Phoenixon.png" style="height:40px; max-width:100%; " /></a></div>
									(��)�Ǵн���Ʈ�ѽ�
								</div>
								<div class="divCompany">
									<div><a href="http://www.cesco.co.kr/Cesco/default.aspx" target="_blank"><img src="/Images/License/img_LOGO_CESCO.png" style="max-width:90%; margin-top:0px;" /></a></div>
									(��)������
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.shhphone.com" target="_blank"><img src="/Images/License/img_LOGO_shhphone.png" style="height:40px; max-width:90%; margin-top:0px;" /></a></div>
									(��)�������۷��̼��ڸ���
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.etechsystem.co.kr" target="_blank"><img src="/Images/License/img_LOGO_eTechSystem.png" style="height:40px; max-width:90%; margin-top:0px;" /></a></div>
									(��)����ũ�ý���
								</div>
								<div class="divCompany">
									<div><a href="http://www.digitron.kr/" target="_blank"><img src="/Images/License/img_LOGO_Digitron.png" style="height:40px; max-width:90%; margin-top:10px;" /></a></div>
									(��)����Ʈ��
								</div>
								<div class="divCompany">
									<div><a href="http://www.feelaware.com/ " target="_blank"><img src="/Images/License/img_LOGO_Feelaware.png" style="height:40px; max-width:90%; margin-top:10px;" /></a></div>
									(��)�ʶ����
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.sycns.com/sycns/main/main.asp" target="_blank"><img src="/Images/License/img_LOGO_SeyunCNS.png" style="height:30px; max-width:90%; margin-top:5px;" /></a></div>
									(��)�������ؿ���
								</div>
								<div class="divCompany">
									<div><a href="http://www.topes.com/en/html/common/index.asp" target="_blank"><img src="/Images/License/img_LOGO_Topes.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)������
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.unimation.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_UnimationKorea.png" style="height:25px; max-width:90%; margin-top:10px;" /></a></div>
									(��)���ϸ��̼��ڸ���
								</div>
								<div class="divCompany">
									<div><a href="http://www.wisenut.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_WiseNut.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)�������
								</div>
								<div class="divCompany">
									<div><a href="http://www.nitechs.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_NITechs.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									������Ƽ(��)
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.rfxsoft.com/main/" target="_blank"><img src="/Images/License/img_LOGO_RFxSoft.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)�˿�����������Ʈ
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.siwancom.com/" target="_blank"><img src="/Images/License/img_LOGO_SiwanCom.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)�ÿ�Ŀ�´����̼���
								</div>
								<div class="divCompany">
									<div><a href="http://kovifa.com/" target="_blank"><img src="/Images/License/img_LOGO_KOVIFA.png" style="height:40px; max-width:100%; margin-top:5px;" /></a></div>
									KOVI FA
								</div>
								<div class="divCompany">
									<div><a href="http://www.kstec.co.kr/main/" target="_blank"><img src="/Images/License/img_LOGO_KSTEC.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)���Ľý���
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.bizho.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_BHSoft.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)����ġ����Ʈ
								</div>
								<div class="divCompany">
									<div><a href="http://www.woojinplaimm.com/kor/main/index.php" target="_blank"><img src="/Images/License/img_LOGO_WoojinPlaimm.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)�����ö���
								</div>
								<div class="divCompany">
									<div><a href="http://www.hbee.co.kr" target="_blank"><img src="/Images/License/img_LOGO_hbee.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)����ġ��
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.e-hcg.com" target="_blank"><img src="/Images/License/img_LOGO_HumanConsultingGroup.png" style="height:30px; max-width:90%; margin-top:10px;" /></a></div>
									(��)�޸������ñ׷�
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://clseng.co.kr/html/" target="_blank"><img src="/Images/License/img_LOGO_CLSeng.png" style="height:40px; max-width:100%; margin-top:0px;" /></a></div>
									(��)�ÿ������̿���
								</div>
								<div class="divCompany">
									<div><a href="http://www.irm.kr/" target="_blank"><img src="/Images/License/img_LOGO_IRM.png" style="height:40px; max-width:100%; margin-top:3px;" /></a></div>
									(��)���̾˿�
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.asiainfo.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_AsiaInfoComm.png" style="height:30px; max-width:100%; margin-top:10px;" /></a></div>
									(��)�ƽþ��������
								</div>
								<div class="divCompany">
									<div><a href="http://www.citech.kr/" target="_blank"><img src="/Images/License/img_LOGO_CITech.png" style="height:35px; max-width:90%; margin-top:5px;" /></a></div>
									(��)��������ũ
								</div>
								<div class="divCompany">
									<div><a href="http://www.eprime.or.kr/index.asp" target="_blank"><img src="/Images/License/img_LOGO_ePrime.png" style="height:35px; max-width:90%; margin-top:5px;" /></a></div>
									(��)��������
								</div>
								<div class="divCompany">
									<div><a href="http://www.cngone.co.kr/" target="_blank"><img src="/Images/License/img_LOGO_CNGOne.png" style="height:40px; max-width:95%; margin-top:2px;" /></a></div>
									(��)�þ�����
								</div>
								<div class="divCompany" style="line-height:12px;">
									<div><a href="http://www.redwoodk.com/" target="_blank"><img src="/Images/License/img_LOGO_RedwoodK.png" style="height:30px; max-width:90%; margin-top:5px;" /></a></div>
									(��)����������
								</div>
								-->	
								<div style="clear:both;"></div>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>�հݱ���</h5>
							<div class="tap_header">
								<ul class="tapMenu">
									<li class="on"><a href="#this" title="C���α׷��ָ�����" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/License/CProgrammingMaster_Acceptance.asp')">C���α׷��ָ�����</a></li>
									<li><a href="#this" title="Java���α׷��ָ�����" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/License/JavaProgrammingMaster_Acceptance.asp')">Java���α׷��ָ�����</a></li>
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
											<th scope="col">����ֹ���ó</th>
											<th scope="col">���</th>
											<th scope="col">��Ϲ�ȣ</th>
											<th scope="col">�ڰݸ�Ī</th>
											<th scope="col">�ڰݵ��</th>
											<th scope="col">�ڰݰ������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">�̷�â�����к�</td>
											<td class="c">�ѱ������ɷ°��߿�</td>
											<td class="c">2016-003175</td>
											<td class="c">C���α׷��ָ�����</td>
											<td class="c">���ϵ��</td>
											<td class="c">(��)��Ʈ��ǻ��</td>
										</tr>
										<tr>
											<td class="c">�̷�â�����к�</td>
											<td class="c">�ѱ������ɷ°��߿�</td>
											<td class="c">2016-003174</td>
											<td class="c">Java���α׷��ָ�����</td>
											<td class="c">���ϵ��</td>
											<td class="c">(��)��Ʈ��ǻ��</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>�ڰ� ����</h5>
							<div class="tap_header">
								<ul class="tapMenu">
									<li class="on"><a href="#this" title="C���α׷��ָ�����" onClick="javascript:ajaxLoad('#ConDetailInfo', '', '/Course/License/CProgrammingMaster_Details.asp')">C���α׷��ָ�����</a></li>
									<li><a href="#this" title="Java���α׷��ָ�����" onClick="javascript:ajaxLoad('#ConDetailInfo', '', '/Course/License/JavaProgrammingMaster_Details.asp')">Java���α׷��ָ�����</a></li>
								</ul>
							</div>
							<div id="ConDetailInfo" class="tap_content"></div>
						</div>
						
						<div class="con_wrap1709">
							<h5>�ڰ��� ����</h5>
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
							<h5><div style="width:340px; float:left; margin-right:4px;">C�ΰ��ڰݵ����</div> <div style="width:340px; float:left; ">Java�ΰ��ڰݵ����</div></h5>
							<div style="clear:both;"></div>
							-->
							<h5>�ΰ��ڰݵ����</h5>
							<div style="width:360px; float:left;">
								<a href="/Images/Content/img_CProgrammingMaster.png" target="_blank"><img class="boxShadow" src="/Images/Content/img_CProgrammingMaster.png" width="340"/></a>
							</div> 
							<div style="width:360px; float:right; ">
								<a href="/Images/Content/img_JavaProgrammingMaster.png" target="_blank"><img class="boxShadow" src="/Images/Content/img_JavaProgrammingMaster.png" width="340"/></a>
							</div>
							<div style="clear:both;"></div>
							
							<br/>
							<p>�ڰ��� ���� ���� : 02.3486.1421 / <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a></p>
							
							<div style="width:23%; margin:30px auto 50px auto;">
								<a href="/Register/Request/register_license1.asp" class="btnGreenBorder big">�����ϱ�</a>
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