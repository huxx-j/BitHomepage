<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
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

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");				// �����Ⱓ�����������
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");		// �����Ⱓ�����������
			$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(2).addClass("on");  // ��������̸� Ȱ���� IoT ���� ����η� �缺����
		});
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_EmbeddedLinux_2017.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	.moveTop { width:175px !important; background:#17538e url('/WEB-INF/views/course/kukka/kukkaImages/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����Ⱓ�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>IoT�� Ȱ���� �ڹ� ��&amp;���� ����η� �缺����
						</p>
						<h4 style="float:left; letter-spacing:0px;" >IoT�� Ȱ���� �ڹ� ��&amp;�����<br/>����η� �缺����</h4>
						<!-- ������ûbtn -->
						<a href="/Register/Request/register_kukka1.asp" title="�����ϱ�" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							�����ϱ�
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>

					<section>
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_RD.inc" -->
											</td>
											<th>���ǽð�</th>
											<td>
												<%
												'//<!-- # i n c  lude virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" -->
												%>
												09:00 ~ 18:00 (8�ð�/��960�ð�)
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>����</td>
											<th>����������</th>
											<td>��������</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>25��</td>
											<th>����</th>
											<td>02-3486-3456<br/>(acidstar@bit.kr)</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>

						<div class="con_wrap1709">
							<img src="Images/DetailPage_RaspberryPiIoTService1.jpg" style="width:720px"/>
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5> </h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<!--
									<thead>
										<tr>
											<th scope="col" class="c">������</th>
											<th scope="col" class="c">���γ���</th>
										</tr>
									</thead>
									-->
									
									<tbody>
										<tr>
											<td scope="row" class="darker c">
�繰 ���ͳ� ���� �� �÷����� ���� ����	
											</td>
											<td>
	�繰 ���ͳ��� ���� �� ���� ����<br/>
	�繰���ͳݵ���̽����� �� ���뼭�� ��ʿ���<br/>
	�繰���ͳ� �÷����� Ŭ����, ���¼ҽ� �÷���<br/>
	���¼ҽ� �ϵ��� ���� ����<br/>
	�繰���ͳݰ� �Ӻ����ý��� ����
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Linux Administration
											</td>
											<td>
���н�/������ ����� ����<br/>
������ �ý��� ����<br/>
������ ������ ��ġ �� �����ϱ�<br/>
��Ƽ�� �� ��Ƽ����<br/>
������ ��ɾ�I,II<br/>
�������� ����<br/>
������ ���Ͻý��۱���<br/>
������ ��������/���丮 ����<br/>
vi�����͵��ۿ���/��ɾ�/�ǽ�<br/>
�� ��ɰ� ����/ȯ�溯��/��ɾ�����<br/>
�� ���α׷���<br/>
������ ��������ǹ�
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Python �⺻ ���α׷���
											</td>
											<td>
���̽� �����ϱ�<br/>
���̽� �⺻������ �ڷ���<br/>
���̽� �ڷ���<br/>
��ü�� ���� �� ����ȯ<br/>
Ŭ������ ��ü�������α׷���<br/>
����<br/>
�Լ�<br/>
�ð��ٷ��<br/>
����ó��<br/>
������Ű��<br/>
�����ͺ��̽����α׷���
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Java Advanced Programming
											</td>
											<td>
OOP ���� <br/>
Java OOP Programming<br/>
Java API<br/>
Java Thread Programming<br/>
Java Network Programming
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
��������� ���α׷���

											</td>
											<td>
��������� �����ϱ�<br/>
������ ��ġ �� ��������� ����<br/>
���������GPIO�������α׷���(Python)<br/>
������ ���������� ����(Python)
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
��������� �ý��� ���α׷���

											</td>
											<td>
������ �ý��� ���α׷��� - ���� �ý���<br/>
������ �ý������α׷���-���μ���&�ñ׳�<br/>
������ �ý������α׷���<br/>
-IPC(PipeFIFO, MessageQueue, SharedMemory, Semaphore)<br/>
������ �ý������α׷���- POSIX Thread ����<br/>
ARM�����Ϸ�<br/>
Ŀ�ʼҽ� �ٿ�ε� �� ����<br/>
������α׷���<br/>
����̽� ����̹����α׷���<br/>
���������GPIO���α׷���(C) 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
����� ���� ��Ʈ��ũ ���α׷��� �� IoT�����������������

											</td>
											<td>
��Ʈ��ũ�� ��Ʈ��ŷ<br/>
OSI7������ ���ͳ�<br/>
�����������̽�<br/>
TCP/UDP�������α׷���<br/>
�������� ���� �м�<br/>
SOAP<br/>
CoAP<br/>
MQTT

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Python �� ���α׹�
											</td>
											<td>
�ö�ũ ����� �� ���� ����<br/>
�ö�ũ�����GPIOǪƮ ����͸�<br/>
�ö�ũ�����GPIO��Ʈ����<br/>
�̴� ������Ʈ

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Node.JS ����
											</td>
											<td>
Node.JS �Ұ� �� ��������� ��ġ<br/>
NPM�ǽ�<br/>
Node.JS���ʽǽ�<br/>
wiringPi�� Ȱ���� ���� �� �������� ����<br/>
����ī�޶�����<br/>
ExpressFramework���� ������<br/>
�� ����Ʈ���� ���α׷���(JQuery��jQuery Mobile, Bootstrap)<br/>
�̴�������Ʈ

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
��������� ��� ���� Android���ۼ��ϱ�

											</td>
											<td>
Android ���α׷��� I<br/>
Android���α׷���II<br/>
��������� ��� ����Restful API�����ۼ�<br/>
Android App���� ��������� �����ϱ�<br/>
��������� ķ ���� �� �ۼ�<br/>
RFID�±� ����<br/>
GCMȰ���ϱ�<br/>
�̴�������Ʈ
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
������Ʈ ����ǽ�
											</td>
											<td>
������Ʈ ���� ����<br/>
������Ʈ ��������<br/>
������Ʈ ����<br/>
������Ʈ ���� ���
											</td>
										</tr>
									</tbody>
								</table>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->

						<div class="con_wrap1709">
							<img src="Images/DetailPage_RaspberryPiIoTService2.jpg" style="width:720px"/>
							<img src="Images/DetailPage_RaspberryPiIoTService3.jpg" style="width:720px"/>
						</div>

<!--
						<div class="con_wrap1709">
							<h5>1. ���� �Ұ�</h5>
							<p>
								��� �繰�� ���ͳ��� ������� �����Ͽ� ����� �繰, �繰�� �繰���� ������ ��ȣ �����ϴ� ����� ������ �繰���ͳݿ� ���� ������ ����ǰ� �ִ�. �̿� �� ������ �繰���ͳ� �÷��� ���� ���� �� ����̽��� ���� ���İ� ���ߴɷ��� ����ϱ� ���� IoT�� ���� ���� �� ������ ���� ���� ���� �� IoT ����̽� �� ���� ���߿� ���ʰ� �Ǵ� �پ��� ���α׷��� ������ ���� �� ��, IoT ����̽��� ��ǥ���� ���¼ҽ� �ϵ���� ����� ���̿� �Ƶ��̳� ������� �ϵ��� ���� ���İ� ����̹� ���� Ŀ�� ����� �ý��� �� ��Ʈ��ũ ���α׷����� �н��ϰ� ���� �ǽ��Ѵ�. �� ��, ����̽� ���߿� ���� ����� ������ �������� IoT ���� ���߿� �ʿ��� �پ��� Ŭ���̾�Ʈ, ���� ������� �����ϰ� �ȴ�.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>2. ���� Ư��</h5>
							<ul class="pd_l5">
								<li> - ������ ���� ����</li>
								<li> - �Ʒü��� �ִ� �� 1,896,000�� ���� (������� ���� �Ʒü����� �����˴ϴ�.)</li>
								<li> - �������� �� ��� ����</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>3. ���� ���</h5>
							<ul class="pd_15">
								<li>�繰 ���ͳݿ� ���� ������ �ʿ��� �ʱ� �����Ͼ�</li>
								<li>�繰���ͳ� ����̽� �� ���� ���߿� �����ִ� ��</li>
								<li>�繰���ͳ� ���� ���� �ű� ����� ��ȹ(�غ�)�ϴ� â�� �غ���</li>
								<li>�繰���ͳ� �о߷� ���θ� ������ ����(��)�� �� �������</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>4. �����Ⱓ �� ����</h5>
							<p>������ ���� / 25��</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>5. ��û���</h5>
							<p>�¶��� ������û �� ����û<br/>��ȭ - 02-3486-3456<br/>īī���� - �÷���ģ��(��Ʈ�������� �˻�)</p>
						</div>

						<div class="con_wrap1709">
							<h5>6. �����ð�</h5>
							<p>
-->
<%							
'// < ! - -  #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" - - >
%>
								<!--08:50 ~ 18:00 (�׷콺�͵� ���� 22:00����)<br/>- �� 960�ð�(6����)-->
<!--
								</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>7. ���� �Ⱓ</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">������</th>
											<td style="letter-spacing:-0.5px;"><b>��������̸� Ȱ���� IoT ���� ����η� �缺����</b></td>
										</tr>
										<tr>
											<th scope="col">�����Ⱓ</th>
											<td style="letter-spacing:-0.5px;">
-->
<%											
'//												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_RD.inc" --> 6����(120��) ��960�ð�
%>
<!--
											</td>
										</tr>
										<tr>
											<th scope="col">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>8. �غ� ����</h5>
							<p><b>- �Ǿ��� ���Ϲ��ī�� �߱�(�ּ� 2��, �ִ� 5~6�� �ҿ�)</b></p>
							<p><b>- ���������Ű�� ���� ī��߱�(�ּ� 4�� �̻�)</b></p>
							<p><span style="margin-left:7px; background:#ffff99;">���� �Ʒû� Ư��: �Ʒ� ���� 10���� ������ �߰�  </span></p>
							<p style="margin-left:7px; font-size:1em; "><b>* ���� ī��߱��� �ּ��� ���� ��뼾�Ϳ��� �߱� �����մϴ�.</b></p>
							<p style="color:#7f7f7f; font-size:1em; line-height:13px;">�� ��, �Ʒ�������� 1���� ���� �⼮���� 80% �̻��� ��쿡�� ���޹��� �� �ֽ��ϴ�.</p>
							<p style="color:#7f7f7f; font-size:1em; line-height:13px;">�� �Ǿ��޿��� �����ô� �����̳� �����ٷλ���� �����ϰ� ��� ���ȿ��� �Ʒ�������� ���޹��� �� �����ϴ�.</p>
							<ul class="pd_l5">
								<li>
									<p class="diagram_wrap l" style="margin-top:0px;"><img src="/Images/Content/Diagram/img_course_diagram_06.PNG" style="width:100%;"></p>
								</li>
							</ul>
							<p> - ������� 2��</b><p>
						</div>
						
						<div class="con_wrap1709 last">
							<h5>9. ��������</h5>

							<style>
								.specialTable {
									width:20%;
									float:left;
								}
								.specialDiv {
									width:1%;
									padding:0 20px;
									line-height:230px;
									float:left;
								}
								.specialTable tr td {
									border-bottom:initial !important;
									border:1px solid !important;
								}
								.specialTable tr:nth-child(1) td { text-align:center; }
								.specialTable tr:nth-child(2) { height:75px; }
								.specialTable tr:nth-child(3) { height:95px; }
							</style>
							<table class="specialTable">
								<tr><td>1�ܰ�</td></tr>
								<tr><td>IoT�� ���� ���� �� ������ ���� �⺻ ���</td></tr>
								<tr><td>IoT ����, ������, Java, Python ���α׷���</td></tr>
							</table>
							<div class="specialDiv">
								��
							</div>
							<table class="specialTable">
								<tr><td>2�ܰ�</td></tr>
								<tr><td>IoT ����̽� ����</td></tr>
								<tr><td>��������̸� Ȱ���� �ý��� �� ��Ʈ��ũ ���α׷���</td></tr>
							</table>
							<div class="specialDiv">
								��
							</div>
							<table class="specialTable">
								<tr><td>3�ܰ�</td></tr>
								<tr><td>IoT ���� ����</td></tr>
								<tr><td>Pyhton ��, Node.JS, ��������� ��� ���� �ȵ���̵� �� �ۼ�</td></tr>
							</table>
							<div class="specialDiv">
								��
							</div>
							<table class="specialTable">
								<tr><td>4�ܰ�</td></tr>
								<tr><td>������Ʈ ����</td></tr>
								<tr><td>��������̸� Ȱ���� IoT ���� ������Ʈ ����</td></tr>
							</table>
							<div style="clear:both;"></div>
						</div>
						-->
					</section>
				</div>
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