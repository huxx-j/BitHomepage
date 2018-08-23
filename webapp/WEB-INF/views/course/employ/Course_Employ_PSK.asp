<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="Common_getIndex.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq( getIndex("PSK") ).addClass("on");  
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Employ/M/Course_Employ_Voiceye.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	.moveTop { width:175px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
	/*
	p.lineMap { display:none; }
	.con_wrap1709 table th { word-break:keep-all; }
	*/
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���������������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���Ի�� ä�뱳��
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���ǿ�������
						</p>
						<h4 style="float:left;">��PSK ���Ի��ä�뱳��</h4>
						<!-- ������ûbtn -->
						<a href="/Register/Request/register_employment1.asp" title="�����ϱ�" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							�����ϱ�
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<a href="" class="fl btn mid green1 mar_l20" title="PSK �����ϱ�">�����ϱ�</a>-->
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">���� : 02-3486-1780</span>-->
					<section class="section">
						<div class="con_wrap1709" style="margin-top:5px;">
							<p>���Ի��ä�����α׷��� ��PSK�� �����, ������ȭ, ����Ư���� �´� ���縦 ��Ʈ�������Ϳ� �������� �����Ͽ� ���������� ä�� �� �系������ ��ȯ���� ����� ��Ʈ���������� �������� ������������ ���Ի�������� ��Ź, �ǽ��ϴ� ���α׷��Դϴ�. ���� �� ���������� ä���� Ȯ���ǹǷ� ���Ի���� ������ ������ ������� �����մϴ�. ���ݱ��� ��Ʈ���������� ���Ի��ä�����α׷��� ���� 1,000����(2018�� ����) �̻��� ���簡 SW���������ڷν� ä��Ǿ����ϴ�.</p>
						</div>
						<div class="con_wrap1709 ">
							<!--<h5 class="mar_t10 redTxt">[ ����Ư�� ]</h5>-->
							<h5 class="mar_t40 redTxt">����Ư��</h5>
							<ul>
								<li>1. ���� ������ ���� ���� ���� �� ���Ի������ ä��</li>
								<li>2. ������: ����(570����/��PSK ��������)</li>
								<li>3. �Ʒü�������</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>����Ұ�</h5>
							<!-- #include virtual="/Course/Employ/Summary1_PSK.asp"-->
							<!--
							<p class="mar_t20 mar_b20"><img src="/Images/Content/Employ/img_LOGO_PSK.png" alt="" style="max-height:80px; width:150px;"></p>
							<p>
								��PSK�� �ݵ�ü ������ �������� �ֿ� ��� �� �ϳ��� Asher ��� �����ϴ� �ݵ�ü ��� ���� ����Դϴ�. 1990�� 6�� 11�� �������� ������ ���������� ���� ���� �������� ǰ�� �� ���� ������� ���� Asher(���������ű�) �� LCD ��� ���� �߿� ������, ���� �� �ؿܿ� �Ǹ��ϰ� �ֽ��ϴ�. 1997�� 1�� �ڽ��ڿ� ���������, 1994�� 4�� �μ� �������� ������ ���Ҿ� ���Ӿ��� �������߰� ��� �������� ���� ������ �ݵ�ü ����ü��� �����ϰ� �ֽ��ϴ�. PSK�� 2004�� 490����� ������ �޼��Ͽ��� ���ش� 620����� ������ �����ϰ� ������, 2007�⿡�� ���� �� 1�� Asher Maker�� ��ǥ�� ���� �����ϰ� �ֽ��ϴ�.<br/><br/>
								2002����� �ؿ� ������ ����ȭ�Ͽ� 2003�⿡�� 500�� �޷�, 2004�⿡�� 1,500�� �޷� ���� ������ �޼��ϴ� �� �� ���⵵ ���������� �����ϰ� �ֽ��ϴ�. ���� PSK�ߴ� �ؿ� ����ó Ȯ��� ��ǰ �ٺ�ȭ�� ���� �������� �ݵ�ü/LCD ��� ����������� ������ ���� �����ϰ� �ֽ��ϴ�.<br/><br/>
							</p>
							<a href="http://www.psk-inc.com/" class="blueTxt fb" target="_blank">Ȩ������ �ּ� : http://www.psk-inc.com/ </a>
							-->
						</div>
						<div class="con_wrap1709">
							<h5>��������</h5>
							<p>
								FITNESS CENTER, ���غ���, ������ ����, �ڳ� ���ڱ� ����, ���ȸ ���б�, �系�Ĵ�, ����Ʈ�� �����, ��ȣȸ, �系 ü�� ���
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>ä�� �о� �� �����ڰ�</h5>
							<!-- #include virtual="/Course/Employ/Summary2_PSK.asp"-->
							<!--
							<div class="divTable">
								<table>
									<caption>ä��о�, �ο�, �����ڰ�</caption>
									<colgroup>
										<col style="width:25%">
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">ä��о�</th>
											<th scope="col">�ο�</th>
											<th scope="col">�����ڰ�</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">������� ���α׷� ����</td>
											<td class="c">2 ��</td>
											<td rowspan="2">
												<ul class="ul_dot_gray">
													<li>IT �����а� ������, ����������</li>
													<li>���α׷���(C/C++)�� ������ �ִ� SW���ߺо߷� �����ϰ��� �ϴ� ��<br/><span style="font-size:0.8em;">�����α׷��� �����̳� ������ �ִ� �� ���</span></li>
													<li>���� �� �Ǵ� �����ڷ� �ؿܿ��� � ��ݻ����� ���� ��</li>
													<li>��� �� ���ƴ���ڴ� ������ɿ� ���� �����</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							-->
						</div>
						
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<ul>
								<li>1. ��Ʈ��������<a href="http://www.bitacademy.com" class="blueTxt">(http://www.bitacademy.com)</a> ȸ������ ��</li>
								<li>�����ȳ� �� �ű����� �� ���Ի��ä�뱳�� �� ��PSK ����(1,2���� ���)</li>
								<li>�� �¶��� �����ڴ� ������ 1��, 2�� ������ �մϴ�. (�������� ����)</li>
								<li>�� ������ �ʱ⵵�� �� ����(�������) ����</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>�����Ⱓ</h5>
							<!--<p>~ 2016�� 9�� 23��(��) ����</p>-->
							<!-- #include virtual="/Course/Employ/Common_Date1.asp"-->
						</div>
						
						<div class="con_wrap1709">
							<h5>���� ��� �� ����</h5>
							<p class="redTxt fb">���� : <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--><!--2016�� 9�� 26��(��) ���� 10��--> - �ʱ����(C or C++)</p>
							<ul class="ul_dot_gray">
								<li>1�� ���� : �ʱ����(C ���α׷��� or C++ ���α׷���)</li>
								<li>2�� ���� : ����(PSK �ӿ���) - 1�� �հ��ڿ� ���� �˸�</li>
								<li>�� ������ ������ ���� ������ �� ������, ������ �ش��ڿ� ���Ͽ� ���� �ȳ��մϴ�.</li>
							</ul>
							<!--
							<h5>���� ��� �� ����</h5>
							<p class="redTxt fb">�������� �� �������</p>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>�������� �ȳ�</h5>
							<ul class="ul_dot_gray">
								<li>�������� : Windows .NET Expert - ��PSK �����Ź����</li>
								<!--<li>2015�� 11�� ~ 2016�� 4��(6��������)</li>-->
								<li>�� �� �� : ���� (570���� / ��PSK ��������)</li>
							</ul>
						</div>
						<!--
						<div class="con_wrap1709">
							<h5>���ǻ���</h5>
							<p>��Ʈ�������� <a href="http://www.bitacademy.com" class="blueTxt fb">(http://www.bitacademy.com)</a> / 02-3486-1055 / expert@bit.kr</p>
						</div>
						-->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:35%">
										<col style="width:65%">
									</colgroup>
									<thead>
										<tr>
											<th>�������</th>
											<th>�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">C Programming</td>
											<td>
												<ul class="ul_dot_gray">
													<li>C��� �⺻</li>
													<li>Generic & STL</li>
													<li>File I/O</li>
													<li>Data Structure</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">C++ Programming</td>
											<td>
												<ul class="ul_dot_gray">
													<li>C++��� �⺻</li>
													<li>C++ Better than C</li>
													<li>OOP & Class</li>
													<li>Generic & STL</li>
													<li>File I/O</li>
													<li>Data Structure</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Win32 API</td>
											<td>
												<ul class="ul_dot_gray">
													<li>������ �޽��� ó��</li>
													<li>GDI API�� �̿��� ȭ�� ó��</li>
													<li>���ҽ� ���α׷���</li>
													<li>������Ʈ�� ���α׷���</li>
													<li>�޽���, �ý��� ����, �޸�</li>
													<li>��Ƽ������, ����ȭ, DLL, ������ŷ</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Windows System Programming</td>
											<td>
												<ul class="ul_dot_gray">
													<li>�ü���� ���ڰ迭 ���μ��� ����</li>
													<li>������ ����</li>
													<li>���ñ��� �� ���� ������</li>
													<li>���μ��� ������ ���� �� ����</li>
													<li>�켱���� �˰���, ������ �����ٸ�</li>
													<li>Ŀ�� ����ȭ�� ��ü�� ����</li>
													<li>���� �ּ��� ����</li>
													<li>���׸�Ʈ ��ũ����</li>
													<li>ĳ���ּ� ���� ���, VACB</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">MFC Programming</td>
											<td>
												<ul class="ul_dot_gray">
													<li>MFC�� API ������ �����ڵ� ��</li>
													<li>������ �޽��� review �� MFC�� ��</li>
													<li>�޽����� MFC message map</li>
													<li>DC �� GDI �Լ� �Ұ�</li>
													<li>GDI+�� �Ұ� �� �ǽ�</li>
													<li>SDI/MDI ȯ�濡�� Document/View����</li>
													<li>Document serialize �� �ֿ� �����Լ���</li>
													<li>MFC�� ����������</li>
													<li>��ȭ�������α׷���</li>
													<li>�޴�/����/������ ó��</li>
													<li>Run- Time Class Information, Persistence, Diagnostics</li>
													<li>Dialog(DDX, DDV�м�)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Network Programming</td>
											<td>
												<ul class="ul_dot_gray">
													<li>TCP ���α׷����� Ư¡</li>
													<li>UDP ���α׷����� Ư¡</li>
													<li>�������α׷��� �Լ� �� Ư¡</li>
													<li>�񿬰� ���� ����</li>
													<li>C#���� ��� ���� ����</li>
													<li>���� ���� ��Ȳ ö��</li>
													<li>���� ���� Ŭ���� �Ұ�</li>
													<li>������ ����ϱ�</li>
													<li>�����带 �̿��� ����</li>
													<li>Ǯ�� �̿��� ����</li>
													<li>�񵿱� ����</li>
													<li>���� �ۼ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">DBMS</td>
											<td>
												<ul class="ul_dot_gray">
													<li>�������� �����ͺ��̽��� �𵨸�</li>
													<li>�����ͺ��̽� Ȱ���� ���� SQL�� ���� ���ν��� � ���� ����� Ȱ�� ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">��ü���� ����� ���� �����</td>
											<td>
												<ul class="ul_dot_gray">
													<li>��ü����� �߻�ȭ</li>
													<li>���α׷� ���� (Main ������ Application ����)</li>
													<li>OCP, LSP, DIP�� ��ü���� ���� ��Ģ</li>
													<li>GOF�� �ֿ� ������ ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">.NET Platform</td>
											<td>
												<ul class="ul_dot_gray">
													<li>.NET Framework ����</li>
													<li>.NET Framework 4.0</li>
													<li>Comparison Between j2EE and .NET</li>
													<li>CLR�� ���� �� �������</li>
													<li>���� Ŭ���� ���̺귯�� Ȱ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">C# Programming</td>
											<td>
												<ul class="ul_dot_gray">
													<li>C#����</li>
													<li>����������,����,���๮��</li>
													<li>���ӽ����̽�,�迭,����ó��</li>
													<li>������ó��, �޼���� �Ű�����</li>
													<li>��ü������ �Ҹ�</li>
													<li>�Ӽ��� �ε���</li>
													<li>�븮�ڿ� �̺�Ʈ, �÷���</li>
													<li>��Ʈ����Ʈ, �Է°����, ���� �ý���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">WinForm �� WPF</td>
											<td>
												<ul class="ul_dot_gray">
													<li>����</li>
													<li>���� ��Ʈ�Ѱ� ��ȭ����</li>
													<li>���� �̺�Ʈ</li>
													<li>���� �׸���</li>
													<li>WPF ����</li>
													<li>WPF ���̾ƿ�</li>
													<li>WPF ������ ������</li>
													<li>WPF ��Ÿ�ϰ� ���ҽ�</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="divTable">
								<table>
									<caption>����������Ʈ(3����)</caption>
									<thead>
										<tr>
											<th scope="col">����������Ʈ(3����)</th>
										</tr>
									</thead>
									<tbody>
										<tr >
											<td>
												<ul class="ul_dot_gray">
													<li>4�� ������ �ο����� ���� �����Ͽ� �ֽ��� ������Ʈ ������ �����Ͽ� 3 ���� ���� ������ ���Һд� �� ��ȣ ���� �Ͽ� ������Ʈ ����</li>
													<li>������Ʈ ������ ������� �ʿ�� �ϴ� ������ �̼� �Ŀ� �Ի� �� ������ ������ �� �ֵ��� ��</li>
													<li>���� ���� �Ŀ��� ���õ� �ڷ� ����, �ʿ��� �н�, �� Ȯ��, ���� ����, ���� ȯ�� ���� ��, ����, ���� �׽�Ʈ ���� ���� ������ �Ϸ��ϰ� ��� ���߽ǹ� ���� ���� ���� �Ͽ� ���� ����ȸ�� ������ ��</li>
													<li>������Ʈ ������ �� �������� ���ȼ�, �߰�����, �������� �� �󼼼��輭 �׽�Ʈ �ó����� �� �ʿ��� ���⹰���� �����ϵ��� �����ν� ������Ʈ ���� ����Ŭ�� �ͼ��������� ��</li>
													<li>������Ʈ ���� �������� S/W Engineering ����� ������ ���������ν� ȿ������ �ð�����, ��������, ����Ʈ���� ǰ������ � ���� ������Ʈ ���� ����� �������� ��</li>
													<!--
													<li>�̷� �������� ������ ����� Ȱ���Ͽ� ���ο� �ַ���� �����غ��� �ܰ�</li>
													<li>�� ������Ʈ�� 4~5�� ���ܷ� ����</li>
													<li>�ֽ� ������� ���� �ľ��Ͽ� ������Ʈ ���� ����</li>
													<li>����Ʈ���� ���� ����п� �԰��� �ܰ躰 �۾� ����</li>
													<li>�ٽɿ�� ����м�, �ý��ۼ���, �ý��� ����, ���� �ÿ�ȸ �� �������� ������ �ܰ�� ������ �����Ͽ� ��� �������� ��ȣ �����Ͽ� ����</li>
													-->
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>����</h5>
							<!--<p>��Ʈ��������:02-3486-1055(expert@bit.kr)</p>-->
							<p>02-3486-1780 (<a href="mailto:expert@bit.kr" class="email">expert@bit.kr</a>)</p>
						</div>
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_employment1.asp" class="btn mid green1" title="PSK �����ϱ�">�����ϱ�</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>