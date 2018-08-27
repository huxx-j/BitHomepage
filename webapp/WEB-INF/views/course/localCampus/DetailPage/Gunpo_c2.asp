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
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(3).addClass("on");  			// [����] ����ķ�۽�
			$(".snb_1709 .newdepth3_wrap.no4").addClass("on").css('display','block');	// [����] ����ķ�۽� SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no4 .newdepth3:eq(3)").addClass("on");		// �ڷᱸ��/�˰��� ON 
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
						<h4>�ڷᱸ��/�˰���</h4>
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
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Gunpo_DS_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GP_DS.inc" -->
												<!--2018.01.30(ȭ) ~ 2018.02.14(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GP_DS.inc" -->
												<!--09:00 ~ 15:00 (5�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>
											-->
										</tr>
										<!-- ����ķ�۽� �ڷᱸ��/�˰��� -->										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit" >��������</th>
											<td> 02-3486-7588</td>
										</tr>
										
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
							<p class="mar_b10">���α׷��� ���� ������� Ȱ���� ���ϴ� �е��� ���� �����Դϴ�.<br>
							�� ���¸� ���� ������ �ùٸ��� ����ϰ� ���� �����ϴ� ��� ���α׷��� �ۼ��� �� �ֵ��� ���͵帮�� �ǽ������� ��������� ȿ������ ���α׷� �ڵ带 �ۼ��ϴ� �ɷ��� �����ѵ帳�ϴ�. </p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>���α׷��� �ۼ��ϱ� ���� ���α׷� ���� �Ƿ� ���</li>
								<li>�ڷᱸ���� ���� ȿ������ �˰��� ���� �ɷ� ��� </li>
								<li>�� 2000�� ������ �ڵ带 �ۼ��� �� �ִ� �ڽŰ� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C���α׷��� �߱��̻�</li>
								<li>�ڷᱸ�� ���� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>C Programming</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>��⵵ ������ ������ 604-5 �Ѽ����б�<img style="margin-top:-68px; height:100px;" src="img_qrcode_Gunpo.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
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
											<td>Ž��</td>
											<td>����</td>
											<td>������ �̷а� �ǽ�</td>
										</tr>
										<tr>
											<td rowspan="7">��������</td>
											<td rowspan="3">�ܼ����Ḯ��Ʈ</td>
											<td class="l">�ܼ����Ḯ��Ʈ�� ���� �� ��������</td>
										</tr>
										<tr>
											<td class="l">�ܼ����Ḯ��Ʈ�� �ǽ� �� ����</td>
										</tr>
										<tr>
											<td class="l">�ܼ����Ḯ��Ʈ�� �ǽ� �� ����</td>
										</tr>
										<tr>
											<td rowspan="2">���߿��Ḯ��Ʈ</td>
											<td class="l">���߿��Ḯ��Ʈ�� ���� �� ��������</td>
										</tr>
										<tr>
											<td class="l">���߿��Ḯ��Ʈ�� �ǽ� �� ����</td>
										</tr>
										<tr>
											<td rowspan="2">����&amp;ť</td>
											<td class="l">���ð� ť�� ���� �� ����� ��</td>
										</tr>
										<tr>
											<td class="l">���ð� ť�� �ǽ�</td>
										</tr>
										<tr>
											<td rowspan="3">��������</td>
											<td rowspan="3">Ʈ��</td>
											<td class="l">Ʈ���� ���� �� ��������</td>
										</tr>
										<tr>
											<td class="l">Ʈ���� �ǽ�</td>
										</tr>
										<tr>
											<td class="l">Ʈ���� �ǽ� �� Ȯ����������</td>
										</tr>
									</tbody>
								</table>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>
							</div>
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