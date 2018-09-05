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
			
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(1).addClass("on");  			// [����] ����ķ�۽�
			$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// [����] ����ķ�۽� SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no2 .newdepth3:eq(1)").addClass("on");		// C ���α׷��� ON 
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]����ķ�۽�
						</p>
						<h4>C ���α׷���</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Daejeon_C_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_C.inc" -->
												<!--2017.12.18(��) ~ 2018.01.10(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_C.inc" -->
												<!--09:00 ~ 13:00 (4�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 18:00 (4�ð�)</td>
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>											
											-->
										</tr>
										<!-- ����ķ�۽� C Programming -->
										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">��������</th>
											<td colspan="4">Java Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit" rowspan="3">��������</th>
											<td rowspan="3">
												<ul>
													<li>2015.07.13 ~ 2015.07.31</li>
												</ul>
											</td>
											<th scope="row" class="tit" rowspan="3">���ǽð�</th>
											<th scope="row" class="tit">������</th>
											<td>09:00 ~ 12:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">���Ĺ�</th>
											<td>14:00 ~ 17:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit" colspan="2">��������</th>
											<td> 02-3486-3456</td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p class="mar_b10">�� ������ C���� ���غ�������, ��Ȯ�� ������ ���� ��, C�� ó�� ���ô� �е��� �������, �⺻ �������� �ڵ����� ü�������� �н��ϴ� �����Դϴ�. �̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� �ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>���α׷����� ù �������� ���α׷��� �� ���� �ڽŰ� ����</li>
								<li>�ǽ��� ���� ȿ���� ���α׷��� ���� �ɷ� ���</li>
								<li>���α׷��� ��ȭ�� ���θ��� �ɷ� ����</li>
								<li>�������� ���θ� Ż���Ͽ� ������ �����Ͽ� ���α׷��� �ۼ��� �� �ִ� �ɷ¹�� (�̷�:�ǽ� = 3:7)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C�� ó�� ���� ��</li>
								<li>�������������� ���α׷��ֿ� ������ �ִ� ��</li>
								<li>C�� ������� ���������� �����Ͽ� �Ƿ� ����� �� �Ǵ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>���������� ���� �ھ絿 52-2 ���IT�������� 3��<img style="margin-top:-68px; height:100px;" src="img_qrcode_Daejeon.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption></caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:30%">
										<col style="width:40%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
											<th scope="col">�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="6">C��� �⺻����</td>
											<td>C��� ȯ��</td>
											<td>C��� Ʋ¡, �����Ϸ� ����</td>
										</tr>
										<tr>
											<td>C��� ����</td>
											<td>������ ��, ���� ����</td>
										</tr>
										<tr>
											<td>C��� �⺻����</td>
											<td>�⺻ ����� �Լ�, ������</td>
										</tr>
										<tr>
											<td>C��� �⺻����</td>
											<td>���ǹ�</td>
										</tr>
										<tr>
											<td>C��� �⺻����</td>
											<td>�ݺ���</td>
										</tr>
										<tr>
											<td>C��� �⺻����</td>
											<td>C�⺻ ������ ���� �ǽ�</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="10">�����Ϳ� �迭</td>
											<td rowspan="4">�迭</td>
											<td>1���� �迭 �̷�</td>
										</tr>
										<tr>
											<td>1���� �迭 �̷�</td>
										</tr>
										<tr>
											<td>2���� �迭 �̷�</td>
										</tr>
										<tr>
											<td>2���� �迭 �̷�</td>
										</tr>
										<tr>
											<td rowspan="2">�Լ�</td>
											<td>�Լ��� �̷�</td>
										</tr>
										<tr>
											<td>�Լ��� �������� ����</td>
										</tr>
										<tr>
											<td rowspan="4">������</td>
											<td>1���� �迭�� ������</td>
										</tr>
										<tr>
											<td>���ڿ��� ������</td>
										</tr>
										<tr>
											<td>2���� �迭�� ������</td>
										</tr>
										<tr>
											<td>�޸� ������ �����Ҵ�</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">C����� Ȯ��</td>
											<td rowspan="2">����ü</td>
											<td>����ü �̷�</td>
										</tr>
										<tr>
											<td>����ü �迭�� ������</td>
										</tr>
										<tr>
											<td>��ó����</td>
											<td>��ũ�ο� ��ó����</td>
										</tr>
										<tr>
											<td>���������</td>
											<td>��������� �̷� �� �ǽ�</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>-->
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">�����ϱ�</a>
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