<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
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

	<script type="text/javascript">
		$(document).ready(function(){
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(5).addClass("on");
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">C Programming</span></h3>
				<h4>�̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� <br>�ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</h4>
				<!--<h4></h4>-->
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">C Programming</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" class="last on">C Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td>C Programming</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<span class="blueTxt">(�� 60�ð�) </span>
												<ul class="ul_dot_gray">
													<!--<li>���� : 19:00 ~ 22:00(3�ð�)</li>-->
													<!--<li>���Ĺ� : 14:00 ~ 18:00 (4�ð� / 15��)</li>-->
													<!--<li>������ : 09:00 ~ 13:00 (4�ð� / 15��)</li>-->
													<li>����� : 19:00 ~ 22:00 (3�ð� / 20��)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<!--<li style="min-height:20px;">2015.12.02 ~ 2015.12.30</li>-->
													<!--<li>2016.02.03 ~ 2016.02.26 <span class="greenTxt">(������)</span></li>-->
													<!--<li><a href='/Course/ShortCourse/Course_shortCourse_vacation_winter_2015.asp' class='btn sml blue'>����Ư��</a> <span class="blueTxt">2016.02.03 ~ 2016.02.26 (������)</span></li>-->
													<!--<li>2016.02.01 ~ 2016.03.03 <span class="greenTxt">(�����)</span></li>-->
													<!--<li>2016.03.03 ~ 2016.03.30 <span class="greenTxt">(�����)</span></li>-->
													<li>2016.04.01 ~ 2016.04.28 <span class="greenTxt">(�����)</span></li>
													
													<!--<li><a href='/Course/ShortCourse/Course_shortCourse_vacation_winter_2015.asp' class='btn sml blue'>����Ư��</a> <span class="blueTxt">2015.12.21 ~ 2016.01.12 (���Ĺ�)</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1421</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td colspan="3">
												350,000��
											</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� / �ٿ�ó (������ : 279,980�� | �������� : 349,980��) / ����� ȯ�� : �ִ� 349,980��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳����ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
									�������Ź�Ʒ�
									<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">ȯ�޳��� �ڼ�������</a></span>
									<!--<span class="btn_wrap c"><a href="/Upload/company.zip" class="btn sml green1">�Ʒú��û�����ٿ�</a></span>-->
								</h4>
								<!-- ��뺸��ȯ�޾ȳ�-->
								<div class="refundInfo_wrap2">
									<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
								</div>
								<!-- //��뺸��ȯ�޾ȳ� -->

								<table class="table_col_type1">
									<colgroup>
										<col style="width:16%">
										<col style="width:28%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:11%">
										<col style="width:8%">
										<!--<col style="width:21%">-->
									</colgroup>
									<tbody style="text-align:center;">
										<tr>
											<th>������� �з�</th>
											<th>������</th>
											<th>������</th>
											<th>ȯ�ޱ�</th>
											<th>����δ��</th>
											<th>ȯ�޺���</th>
											<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
										</tr>
										<tr>
											<td rowspan="2">�켱���������</td>
											<td>50�� �̸�</td>
											<td rowspan="4">350,000</td>
											<td>350,000</td>
											<td class="redTxt" style="font-weight:900;">����</td>
											<td>100%</td>
											<!--<td rowspan="4"></td>-->
										</tr>
										<tr>
											<td>50�� �̻�</td>
											<!--<td>314,899</td>-->
											<td>315,000</td>
											<td>35,000</td>
											<td>90%</td>
										</tr>
										<tr>
											<td rowspan="2">�߰� �Ǵ� ����</td>
											<td>1,000�� �̸�</td>
											<td>210,000</td>
											<td>140,000</td>
											<td>60%</td>
										</tr>
										<tr>
											<td>1,000�� �̻�</td>
											<td>140,000</td>
											<td>210,000</td>
											<td>40%</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">�� �������Ź�Ʒ��� ��� ������ 350,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�</span><br/>
								
								<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
									�ٷ��� �����ɷ��������
									<span style="margin-left:607px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></span>
									<!--<span class="btn_wrap c"><a href="/Upload/employ.zip" class="btn sml green1">�Ʒú��û�����ٿ�</a></span>-->
								</h4>
								<!-- ��뺸��ȯ�޾ȳ�-->
								<div class="refundInfo_wrap">
									<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
								</div>
								<!-- //��뺸��ȯ�޾ȳ� -->

								<table class="table_col_type1">
									<colgroup>
										<!--
										<col style="width:20%">
										<col style="width:34%">
										<col style="width:8%">
										<col style="width:10%">
										<col style="width:10%">
										<col style="width:18%">-->
										<col style="width:16%">
										<col style="width:36%">
										<col style="width:8%">
										<col style="width:11%">
										<col style="width:8%">
										<!--<col style="width:21%">-->
									</colgroup>
									<tbody style="text-align:center;">
										<tr>
											<th>������� �з�</th>
											<th>���</th>
											<th>������</th>
											<th>���κδ��</th>
											<th>�ںδ����</th>
											<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
										</tr>
										<tr>
											<td rowspan="4">�켱���������</td>
											<td>��������</td>
											<td rowspan="9">350,000</td>
											<td class="redTxt" style="font-weight:900;">����</td>
											<td rowspan="3">0%</td>
											<!--<td rowspan="9"></td>-->
										</tr>
										<tr>
											<td>���� ������</td>
											<td class="redTxt" style="font-weight:900;">����</td>
										</tr>
										<tr>
											<td>���� ������</td>
											<td class="redTxt" style="font-weight:900;">����</td>
										</tr>
										<tr>
											<td>������</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
										<tr>
											<td rowspan="5">�߰� �Ǵ� ����</td>
											<td>��������</td>
											<td class="redTxt" style="font-weight:900;">����</td>
											<td>0%</td>
										</tr>
										<tr>
											<td>���� ������</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
										<tr>
											<td>���� ������</td>
											<td class="redTxt" style="font-weight:900;">����</td>
											<td>0%</td>
										</tr>
										<tr>
											<td>������(50���̻�)</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
										<tr>
											<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ��������ɷ������ �̱�����)</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">�� �ٷ��� �����ɷ��������(ī��߱� �����)�� ���κδ�� 70,000���� �����մϴ�</span><br/>
								<span class="redTxt">�� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�</span>
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<!--<p>�� ������ C���� ���غ�������, ��Ȯ�� ������ ���� ��, C�� ó�� ���ô� �е��� �������, �⺻ �������� �ڵ����� ü�������� �н��ϴ� �����Դϴ�. �̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� �ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</p>-->
							<p>C���� ���α׷����� ������ ���Ĵٵ�� �������� ����������� C++, C#, JAVA �� ���� �ļ� ����� ���°� �� ����Դϴ�. ���������� ü������ ���α׷��� ���θ� ���� ù ���α׷��� ����� ǥ������ �νĵǰ� ������ ������ ���α׷��� Ȥ�� ���� ���α׷����� ����ϴ� ���� �����ڿ��� Ư�� �߿��� ����Դϴ�. �� ���������� C����� �⺻ ������ ó������ �����ϴ� ������������ ���α׷��� �� ó�� ���ϴ� �а� ���α׷��� ����� ���ʸ� Ȯ���� �������� �ϴ� ��ǻ�� ������ ��ο��� ������ ���������Դϴ�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<!--
								<li>���α׷����� ù �������� ���α׷��� �� ���� �ڽŰ� ����</li>
								<li>�ǽ��� ���� ȿ���� ���α׷��� ���� �ɷ� ���</li>
								<li>���α׷��� ��ȭ�� ���θ��� �ɷ� ����</li>
								<li>�������� ���θ� Ż���Ͽ� ������ �����Ͽ� ���α׷��� �ۼ��� �� �ִ� �ɷ¹�� (�̷�:�ǽ� = 3:7)</li>
								-->
								<li>C����� �⺻ ������ ������ Ȱ���� �� �ִ�.</li>
								<li>���α׷����� �⺻ ������ ������ �� �ִ�.</li>
								<li>������������ Ư���� �����ϰ� �̿� ���� �ڵ带 �ۼ��� �� �ִ�.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>���α׷����� ó�� ���ô� ��</li>
								<li>�Ӻ����ý��� Ȥ�� �κ����п� ��̰� �ִ� ��</li>
								<li>������ �÷��� ����� ���α׷� ������ ����ϴ� ��</li>
								<li>���� ���α׷����� ������ �Ͻô� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!--#include virtual="/Course/ShortCourse/DetailPage/Course_c_curriculum2.asp"-->
						
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap last">
							<h5>Ŀ��ŧ��</h5>
							<div class="tap_header">
								<ul class="tapMenu">
									<li class="on"><a href="#this" title="������" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp')">������</a></li>
									<li><a href="#this" title="�����" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum2.asp')">�����</a></li>
								</ul>
							</div>
							<div id="ConDetail" class="tap_content">
							</div>
						</div>
						-->
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