<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- �����޴��� ���������� �ش� ������ ÷���ϱ� ���� ����ϴ� �ҽ�
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("CBASIC")).addClass("on");
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
				<h3><span class="courseName">C ����</span></h3>
				<h4>���α׷����� ó�� ���Ͻô� �е��� �δ���� �����Ͻ� �� �ִ� ����!</h4>
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
						<h4 class="fl">C ���� (�ָ���)</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" class="last on">C ����</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C ����</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">C ���� (�ָ���)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li>2015.11.7 ~ 2015.11.28<br/>(4��/���� �����)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<span class="blueTxt">1�� 8�ð� * 4��(�� 32�ð�) </span>
												<ul class="ul_dot_gray">
													<li>���� : 09:00 ~ 18:00(8�ð�)</li>
												</ul>

											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>250,000�� <!--<span class="greenTxt">���ϸ���<span class="blueTxt"> 5%</span>����(17,500��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� / �ٿ�ó (������ : 280,000�� | �������� : 350,000��) / ����� ȯ�� : �켱��������� ���� 279,980��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳����ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<p>�� ������ ���α׷��� �� ó�� ���ô� �е��� �������, �⺻ �������� �ڵ����� ü�������� �н��ϴ� �����Դϴ�. �̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� �ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>���α׷����� ù �������� ���α׷��� �� ���� �ڽŰ� ����</li>
								<li>�ǽ��� ���� ȿ���� ���α׷��� ���� �ɷ� ���</li>
								<li>���α׷��� ��ȭ�� ���θ��� �ɷ� ����</li>
								<li>�������� ���θ� Ż���Ͽ� ������ �����Ͽ� ���α׷��� �ۼ��� �� �ִ� �ɷ¹�� (�̷�:�ǽ� = 3:7)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2" style="width:60%">
								<caption>C Programming Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">����</th>
										<th scope="col">�󼼳���</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="4">1����</th>
										<td rowspan="2">������</td>
										<td>�����ϰ� �����</td>
									</tr>
									<tr>
										<td>Visual Studio ����</td>
									</tr>
									<tr>
										<td rowspan="2">�⺻����</td>
										<td>�������� ����, ������</td>
									</tr>
									<tr>
										<td>�����Լ�, ���ù�, �ݺ���</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">2����</th>
										<td rowspan="2">�Լ�</td>
										<td>�Լ��� ���� �� ����</td>
									</tr>
									<tr>
										<td>�Լ�ȣ�� �� �ǽ�</td>
									</tr>
									<tr>
										<td rowspan="2">�迭</td>
										<td>������ 1�����迭</td>
									</tr>
									<tr>
										<td>���ڿ��� ���ڿ��Լ�</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">3����</th>
										<td>�迭</td>
										<td>2�����迭</td>
									</tr>
									<tr>
										<td rowspan="3">������</td>
										<td>�̱�������</td>
									</tr>
									<tr>
										<td>����������</td>
									</tr>
									<tr>
										<td>������������</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">4����</th>
										<td rowspan="2">�����Ҵ�</td>
										<td>��ó������ ����</td>
									</tr>
									<tr>
										<td>�����Ҵ����� �� �ǽ�</td>
									</tr>
									<tr>
										<td rowspan="2">����ü</td>
										<td>���丮�� Ŭ����</td>
									</tr>
									<tr>
										<td>����ü ���� �� ���������</td>
									</tr>

								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.1423 &nbsp;(email:bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1">�����ϱ�</a>
						</div>
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