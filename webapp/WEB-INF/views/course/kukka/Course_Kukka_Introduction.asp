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

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");		// �����Ⱓ����������� ON
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");	// �����Ⱓ����������� SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(0).addClass("on");  	// �����Ⱓ����������� �Ұ� ON
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_JavaBigData_2016.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

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
						<p style="letter-spacing:-1px;">
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����Ⱓ�����������
						</p>
						<h4 style="float:left; letter-spacing:0px;" >�����Ⱓ������������Ʒ� �Ұ�</h4>
						<div style="clear:both;"></div>
					</div>

					<style>
						.con_wrap1709 .box {
							border:1px solid #000;
							padding:5px;
						}
					</style>
					<section>
						<div class="con_wrap1709 first">
							<h5>1.  �����Ⱓ ����������� �Ʒ��̶�?</h5>
							<p class="box">�����Ⱓ����̳� ����������� �� �ηº��� ������ ��������� �η¼��� ���뿡 ���� ������ �η��� �缺�ϱ� ���Ͽ� ���뵿�ΰ� �ǽ��ϴ� �Ʒ����� �Դϴ�.</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>2.  ���� ���</h5>
							<ul class="pd_l5 box">
								<li>- ��뼾�� � ������û�� �� 15�� �̻� �Ǿ���</li>
								<li>- ����б� 3�г� ���л����μ� ��������� �������� �ʴ� �л�</li>
								<li>- ���б� �����г� ���л����� �������� 9�� 1�� ���� ���������� ��������</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>3.  ���� ����</h5>
							<ul class="pd_15 box">
								<li>- �Ʒú� ���� ���� (���¹߱��Ϸκ��� 1�Ⱓ �����ѵ��� �ʰ��Ͽ� ����)</li>
								<li>- �Ʒð��� ���� �� �롤â���� ����� �ش������ ��� �����ϴ� ��쿡�� �Ʒú� ��� ���� <br/>&nbsp; (�ٸ�, �Ʒ�������� �롤â���� ������ �������� ����)</li>
								<li>- ���� �� ��� ä�뿬�� �� ��� ����</li>
								<li>- ���� ���� �� ������ �̿� ����</li>
							</ul>
						</div>
						
						<style>
							table th, table td {
								text-align:center;
							}
						</style>
						<div class="con_wrap1709">
							<h5>4.  �Ʒ� ����</h5>
							<div class="divTable">
								<table>
									<tr>
										<th>����</th>
										<th>���ޱ���</th>
									</tr>
									<tr>
										<td>�Ϲ�/���л�</td>
										<td>�⼮�ϼ� �� 10õ�� (�� 20�����ѵ�)</td>
									</tr>
									<tr>
										<td>����б� 3�г�</td>
										<td>�⼮�ϼ� �� 5õ�� (�� 10�����ѵ�)</td>
									</tr>
									<tr>
										<td>���������Ű��(6����)</td>
										<td>�⼮�ϼ� �� 15õ�� (�� 30�����ѵ�)</td>
									</tr>
								</table>
							</div>
							<ul class="pd_15 mar_t10">
								<li>
									- �����Ⱓ(1����)�� �����Ʒ��ϼ��� 80% �̻��� �⼮�� ��쿡�� ���� ����<br/>
									&nbsp; &nbsp; : �� �ִ� 316,000�� �Ʒ������ ����<br/>
									&nbsp; &nbsp; (�뼺�� �̿�� �� �ִ� 416,000��)
								</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>5. ������û ���μ���</h5>
							<div class="divTable">
								<table class="padding2px">
									<colgroup>
										<col style="width:23%;">
										<col style="width:20%;">
										<col style="width:17%;">
										<col style="width:20%;">
										<col style="width:20%;">
									</colgroup>
									<tr>
										<th>�����ϱ�</th>
										<th>�Ƿ��� ��� �����ϱ�?</th>
										<th>�غ񼭷�</th>
										<th>���Ϲ��ī�� �߱�</th>
										<th>����</th>
									</tr>
									<tr>
										<td>��Ʈ�������� �¶��� ������û<br/>(www.bitacademy.com)</td>
										<td>�����׽�Ʈ ����<br/>���� ���� 10��, ���� 2��<br/>* ������ 10����</td>
										<td>
											1. ���뵿�� ��ũ��(<a href="http://work.go.kr" target="_blank">work.go.kr</a>) ������û�ϱ�<br/>
											2. �����ɷ� ��������(<a href="http://hrd.go.kr" target="_blank">hrd.go.kr</a>) ȸ������ �� �����Ⱓ������� �����Ʒ� ������ ��û
										</td>
										<td>���� ��뼾�� �湮 �� �Ǿ��ڿ� ���Ϲ��ī�� ��û<br/>(�ּ� 2��~4�� �ҿ�)</td>
										<td>ī��߱� ��<br/>�Ʒû� ��� �� ���� Ȯ��</td>
									</tr>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>6. ���� ����</h5>
							<p>��Ʈ�������� 02-3486-3456<br/>īī����(ID:��Ʈ��������)</p>
						</div>
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