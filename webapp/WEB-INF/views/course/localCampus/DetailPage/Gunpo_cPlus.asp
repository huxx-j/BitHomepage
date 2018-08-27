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
			$(".snb_1709 .newdepth3_wrap.no4 .newdepth3:eq(2)").addClass("on");		// C++ ���α׷��� ON 
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
						<h4>C++ ���α׷���</h4>
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
										<!-- # i n clude virtual="/Include/CourseDateTime/LocalCampus_Gunpo_Cpp_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GP_Cpp.inc" -->
												<!--2018.01.12(��) ~ 2018.01.29(��)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GP_Cpp.inc" -->
												<!--09:00 ~ 15:00 (5�ð�)-->
											</td>
											<!--
											<th scope="row" class="tit">�����</th>
											<td>19:00 ~ 22:00 (3�ð�)</td>					
											-->
										</tr>
										<!-- ����ķ�۽� C++ Programming -->										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
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
							<p class="mar_b10">�� ������ ����Ʈ���� ���� ���� �� ��ü ���� ���� ������� �����Ͽ�, C++�� ���� ��ü���� ���α׷��� ����� ������, Ŭ���� ���̺귯�� ���� �� ��ü ���� ����Ʈ��� �ۼ��� �� �ֵ��� �����Ͽ� C++ ���α׷��ְ� UML�� Ȱ���� �ǽ� ������ ������ ���� �ǹ� ������Ʈ�� ���� �������� ����ų �� �ֵ��� �����Ǿ� �ֽ��ϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>C++ ���α׷����� �������� �帧 �ľ�</li>
								<li>��ü���� ���α׷��� �ɷ� �Ծ�</li>
								<li>���α׷��� ���� ������ ���� �� Ȱ�� �ɷ� �Ծ�</li>
								<li>������ ������ �ǹ� ������Ʈ ������ ���</li>
								<li>�ó������� ���� �� ���� �������� �ؾ� �� �ϵ��� �����̰� ��� �� ������ �ϴ����� �ǽ� ������ ���Ƿ� ���� (�̷� : �ǽ� = 3 : 7)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>C����, C�⺻����</li>
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
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="col" colspan="2">���� ��� �� �ǽ� �ó����� �Ұ�</td>
										</tr>
										<tr>
											<td rowspan="2">C���� �ٸ� C++ ���� �� ��ü����</td>
											<td>�����, �Լ� �����ε�, ���۷���</td>
										</tr>
										<tr>
											<td>new, delete ������ ��</td>
										</tr>
										<tr>
											<td rowspan="2">��ü����� Ŭ���� �� ���α׷� �ǽ�</td>
											<td>��ü, �������̽�, �ν��Ͻ�, const �Լ�</td>
										</tr>
										<tr>
											<td>������, �Ҹ���, this, static �Լ�, friend �Լ�</td>
										</tr>
										<tr>
											<td rowspan="2">��Ӱ� ������ �� ���α׷� �ǽ�</td>
											<td>�����Լ�, �θ� Ŭ����, �ڽ� Ŭ����</td>
										</tr>
										<tr>
											<td>�߻� Ŭ����, ���� �����Լ�</td>
										</tr>
										<tr>
											<td>������ �ߺ��� ���� ó��, ����ȯ �� ���α׷� �ǽ�</td>
											<td>- [], +=, == ��, try, catch, throw ��</td>
										</tr>
										<tr>
											<td rowspan="2">Template�� STL �� ���α׷� �ǽ�</td>
											<td>Ŭ���� ���ø�, �Լ����ø�, �����̳�</td>
										</tr>
										<tr>
											<td>�ݺ���, �Լ� ��ü, �˰���</td>
										</tr>
										<tr>
											<td colspan="2">���� ���� �� �� �������� �ؾ� �� �ϰ� ���⹰ </td>
										</tr>
										<tr>
											<td rowspan="2">�䱸 �м� �� ���� �ܰ�</td>
											<td>�䱸 �м����� �ؾ� �� �ϵ�</td>
										</tr>
										<tr>
											<td>�������̽� ���̾�׷�</td>
										</tr>
										<tr>
											<td rowspan="6">���� �ܰ�</td>
											<td>Ŭ���� ����</td>
										</tr>
										<tr>
											<td>Ŭ���� ���̾�׷�</td>
										</tr>
										<tr>
											<td>������ ���̾�׷�</td>
										</tr>
										<tr>
											<td>����ü ����</td>
										</tr>
										<tr>
											<td>Ŭ���� ���̾�׷��� ������Ʈ�� �ݿ�</td>
										</tr>
										<tr>
											<td>������ ���̾�׷��� ������Ʈ�� �ݿ�</td>
										</tr>
										<tr>
											<td rowspan="2">�����ܰ�</td>
											<td>������ ���̾�׷�</td>
										</tr>
										<tr>
											<td>������ ���̾�׷��� ������Ʈ�� �ݿ�</td>
										</tr>
										<tr>
											<td colspan="2">���� �� �׽�Ʈ �ܰ�, Overview</td>
										</tr>
									</tbody>
								</table>
								<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>-->
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