<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(getIndex("MILEAGE")).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">���ϸ��� ���� �ȳ�</span></h3>
				<h4>12�� ������������ ��  �������� 5%�� ����</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">���ϸ��� ���� �ȳ�</h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">�ܱ� / �ٽɿ�������</a>
							<a href="#this" class="last on">���ϸ��� ���� �ȳ�</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap pd_t10">
							<img src="/Images/Content/img_mileage_01.jpg" alt="">
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap type1">
							<div class="txtBox">
								<p>��Ʈ�������Ϳ����� 12�� ������������ <span class="redTxt">�� �������� 5%�� ����</span>�Ͽ� �ִ� ���ϸ��� ���������� �����մϴ�! <br>
								������ ���� ��ü�� ���� ���� �� ����� ���ϸ��� ������ ������ �� �ֽ��ϴ�.<br>

								������ ������ ���� ���� �����ÿ� �������� ��� �����ϸ� �絵�Ͽ� ��뵵 �� �� ������, ���� �̿� �ٶ��ϴ�.
								</p>
							</div>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap type1">
							<h5>1.	���ϸ��� ���� ���� �ݾ�</h5>
							<div class="txtBox">
								<p>- �����Ͻ� ������ ������ ���� �� 5% ����</p>
								<p>Ex) C Programming Master  I ���� ���� : 40���� �����ϰ� ���� ���� �� 2���� ���� ����</p>
								<p>- ������ �����ϰ� ���� ���� �� �⼮�� 80% �̻� �޼��Ͽ��� �ϸ�, ���� ���� ������ ����</p>
							</div>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap type1">
							<h5>2.	���ϸ��� ���� ���� ���</h5>
							<div class="txtBox">
								<p>- ������ ���� ��ü�� ���� ������ ������ ��� ������, ����� ������ ��� ����� ������ ������ �� �ֽ��ϴ�.</p>
								<ul class="ul_dot_gray">
									<li>����� ���� ������ �ش� ��� �����ڰ� �����ÿ� ����� �� �ֽ��ϴ�.</li>
									<li>��� ���� �� ��Ź ������ �ش��մϴ�.</li>
									<li>���������� ������ ������ �δ��� ��� ���ϸ��� ������ ���ο��� �����մϴ�.</li>
									<li>��� ��� ���� ������� ä���� ����� �δ� 5������ �����ϰ� ���� ����� �� �ֽ��ϴ�</li>
								</ul>
							</div>
						</div>
						<!-- //con_wrap -->
						<div class="con_wrap type1">
							<h5>3.	���ϸ��� ���� ���</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>���� ���� ���� �� ���ϸ��� ���� �ݾ��� ���� �ݾ׸� �����ϰ� �����Ͻø� �˴ϴ�.</li>
									<li>���ϸ��� ���� �ݾ��� ����Ͽ� ������ ������ ���� �� �������� 5% �ش��ϴ� ���ϸ��� ������ �����մϴ�.</li>
									<li>������ �߱��Ϸκ��� 1�� �̳��� ����ϼž� �ϸ�, ��ȿ�Ⱓ ���� �����Ǵ� ������ ���� �� �� ����� �� �ֽ��ϴ�.</li>
									<li>���ϸ��� ������ ���� �湮�Ͽ� �����Ͽ��� �ϰ�, ���� ��Ʈ������ ����� �����մϴ�(������Ʈ, ��ۺ�Ʈ, �Ѽ���Ʈ, �Ǿ��Ʈ, �λ��Ʈ)</li>
									<li>����� ������ Ÿ�ο��� �絵�� �� ������, ���� �ŷ��� �Ұ��մϴ�.</li>
									<li>���� �� �߻��� ���ϸ��� ���׿� ���ؼ��� �������� �ٽ� �����Ͽ� �帳�ϴ�.</li>
									<li>���ϸ��� ������ ����Ͽ� ���� �� �� ȯ�� �ÿ� ���� �� ī�� ���� �� �ݾ׸�ŭ�� ȯ�� ������ ���� ó�� �Ǹ�, ���� ������ ȯ�ҵ��� �ʽ��ϴ�.</li>
								</ul>
							</div>
						</div>
						<!-- con_wrap -->

						<!-- //con_wrap -->
						<div class="con_wrap type1">
							<h5>4.	���ϸ��� ���� ���� �ش� ����</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>12�� ������ �������� �ش�˴ϴ�</li>
								</ul>
							</div>
						</div>
						
						<p>���ϸ��� ������ �����Ͽ� �ñ��Ͻ� ���� �����ø�,<br>
						Ȩ������ Q&A �Խ����̳� ��ȭ <span class="redTxt">02-3486-3456</span> ���� �����ּ���
						<p>
						<!--
						<div class="btn_wrap c">
							<a href="/Support/Support_online_list.asp"></a>
						</div>
						-->
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>