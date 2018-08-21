<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
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

			//$(".snb_1702 .newdepth1").eq(0).addClass("on");
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<div id="Container_Wrap" style="min-height:250px;">
			<div id="Content_Wrap" style="min-height:250px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
						</p>
						<h4 style="float:left;">��Ʈ�������� �����������</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<p><img src="/Images/Content/img_employment_01_01.jpg" alt="��Ʈ�������� ����������� �ȳ� - ��Ʈ�������� ����������ʹ� ��Ʈ���������� ü������ ����ý����� �����Ͽ� SW���� �о߿� Ưȭ�� ���� SW��� ����Ʈ�� ���Ի��ä�����α׷���  ���� ����� ���� ��ο��� ������ ä���� �����ϰ��� �մϴ�."></p>
							<!--<p style="color:#8b6338; font-family:'Nanum Gothic'; font-weight:600;">��Ʈ�������� ����������͸� ���Ͽ� �η�ä��(���) �� ���(�����)�� �����Ͻ� �� �ֽ��ϴ�.</p>-->
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���</h5>
							<ul>
								<li>1. ����������ʹ� ��� ����� �̿� �����մϴ�.</li>
								<li>2. ����������ʹ� ��Ʈ�������Ͱ� ���� �����ϰ� �����ϴ� ���縸�� ��õ�մϴ�.</li>
								<li>3. ���� ���ߵ� ���������� ��Ʈ�������Ϳ� �����뺸�� ��, ���Ի������ ä���մϴ�.</li>
								<li>4. ����������ʹ� �Ϲ�ä�뿡 �־� ������ ����� �䱸���� �ʽ��ϴ�. (��, ���ߵ� ���翡 ���� ���Ի��ä�뱳�� ����ÿ��� �׿� ���� ������ û���˴ϴ�.)</li>
							</ul>
							<!--<p class="mar_t20"><img src="/Images/Content/img_employment_01_02.jpg" alt="1. ��������������� - www.job.bitacademy.com ȸ������ �Ǵ� �α���, 2.����˻� - ��������� ����˻� ���罺ũ�� �� ����, 3.�������� - ���翡�� ä���������� �������ο� ���� ä������, 4.ä������ - �������� �� �����ǥ ����� �¶������� ��������, 5.ä�� - �Ի� �Ǵ� ����ä�����α׷� ����"></p>-->
							<a href="/job/WriteRecruit.asp" class="btnBlueBorder big mar_t20" style="margin-left:255px; font-size:14pt !important;">�����Ƿ� ��û�ϱ�</a>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����</h5>
							<ul>
								<li>1. ����������ʹ� ��Ʈ�������� ȸ�����μ� <span class="blueTxt">���������� / ������������ / ���к�Ʈ���� ������</span>�� �̿� �����մϴ�.</li>
								<li>2. ����������ʹ� ��Ʈ�������Ͱ� ���� �����ϰ� �����ϴ� ����������� �����մϴ�.</li>
							</ul>
							<!--<p class="mar_t20"><img src="/Images/Content/img_employment_01_03.jpg" alt="1.��������������� - www.job.bitacademy.com ȸ������ �Ǵ� �α���, 3.�̷¼���� - �̷¼��˼� �� ���� ����� ��ȸ�ο�, 3.�������� �� ���� - �������� �¶��ε�� �������� �� �󼼳����뺸, 4.�������� �� �����ǥ ����� �¶��� �� �����뺸, 5.ä�� - �Ի� �Ǵ� ����ä�����α׷� ����"></p>-->
							<a href="/job/List.asp" class="btnBlueBorder big mar_t20" style="margin-left:255px; font-size:14pt !important;">ä������ Ȯ���ϱ�</a>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����ı�</h5>
							<ul>
								<li>������ �����ı⸦ �о�� �� �ֽ��ϴ�.</li>
							</ul>
							<a href="/job/Interview.asp" class="btnBlueBorder big mar_t20" style="margin-left:255px; font-size:14pt !important;">�����ı� ���캸��</a>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 last">
							<h5>��Ʈ�������� ����������� �̿빮��</h5>
							<ul class="ul_dot_gray">
								<!--<li>homepage : http://job.bitacademy.com</li>-->
								<li>Tel : 02-3486-3456 Fax : 02-3486-7890</li>
								<li>E-mail : <a href="mailto:job@bit.kr" class="email">job@bit.kr</a> </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
					</section>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>