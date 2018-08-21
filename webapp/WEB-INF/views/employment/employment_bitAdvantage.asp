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
			//$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1709 a.newdepth1").eq(4).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<style>
	.step_wrap {
		width:580px;
	}
	</style>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:210px;">
			<div id="Content_Wrap" style="min-height:210px;">
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
						<h4 style="float:left;">��Ʈ��� ����</h4>
						<div style="clear:both; height:10px;"></div>
					</div>

					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
							<ul>
								<li class="step_wrap">
									<p class="stepNum">Step.1</p>
									<p class="stepTit pd_t0">���ѹα� ��ó1ȣ ������ ��ǥ�� ������ �̾� �޴´�.</p>
									<p class="stepCon">���ѹα� ��ó1ȣ (��)��Ʈ��ǻ�� ������ ��ǥ�̻��� ��ó������ �̾� �޾� û��  IT������ ���� ������ ���縦 ��ٷο� �ʱ����� �� ��ǥ�̻� ������ ���� ���������ν� ��ó ������ ����� �Ѵ�.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.2</p>
									<p class="stepTit">Group Study �� Project �������� �ǹ��� ���ϴ�</p>
									<p class="stepCon">6������ '�׷콺�͵�'�� ���� '���Ͻ� ������Ʈ' ������ ���� ����ũ�� �߿伺�� ������ ���Ⱓ�� ���� �ǹ� ������ Ȯ���� ����� �ŵ쳭��.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.3</p>
									<p class="stepTit">��Ʈ������Ʈ�� ź���� �ű���� ��������� ��Ģ�� ��Ų��.</p>
									<p class="stepCon">&lt;���Ͻ� ������Ʈ&gt; ���� ����� ������Ʈ ��ǥȸ�� ���� �����ϰ� &lt;��Ʈ������Ʈ&gt; ���ົ���� �Ⱓ�� ������ �ű���� �������� ����.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.4</p>
									<p class="stepTit">��Ʈ�������� �米�� �� ����������� Ȯ���ϴ�.</p>
									<p class="stepCon">&lt;��Ʈ������&gt;�� ���� �ǹ� ���� �� ������ �߻��ϴ� &lt;��Ʈ��� &gt;�� �米������ IT������ �̷��� �ֵ��� �� �ִ� ����� ���׷��̵��Ѵ�.</p>
								</li>
								<li class="step_wrap">
									<p class="stepNum">Step.5</p>
									<p class="stepTit">��Ʈ��������� ���� ������ ���� ��õ�Ѵ�.</p>
									<p class="stepCon">&lt;��Ʈ���������&gt; Ȱ������ �̿��� ��ȸ ������ ���� ������ �� �ִ� ������ �Ծ��Ѵ�.</p>
								</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
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