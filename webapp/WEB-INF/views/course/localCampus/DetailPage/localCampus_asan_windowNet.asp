<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load ���� SNB ���� */
			$(".snb_1702 a.newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.Uno1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno1 li:eq(4) a").addClass("on");
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
				<h3><span class="courseName">�ƻ�ķ�۽� - Windows .NET ��ް���</span></h3>
				<h4> ���α׷��� �� ��� �� ó������ TOOL�� SKILL�� ���غ� �� �ִ� �������� <br>
				������ �ʿ��� �̷б��� �� �׷� ������Ʈ ������ ���� ���� ��ȭ�� �� ����</h4>
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
						<h4>�ƻ�ķ�۽� Windows .NET ��ް���<a href="/Register/Request/register_localCampus.asp" class="btn mid green1 mar_l10">�����ϱ�</a></h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���к�Ʈ</a>
							<a href="#this" class="last on">Windows .NET ��ް���</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Windows .NET ��ް���</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td colspan="3">�ƻ�ķ�۽� Windows .NET ��ް���</td>
										</tr>
										<!-- #include virtual="/Include/CourseDateTime/LocalCampus_Asan_WinHigh_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">������</th>
											<td>3,700,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-1422</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<p class="mar_b10">������ �������α׷� �ۼ��� �ʼ� ������� C/C++�� �����ϰ� �پ��� �ڷᱸ�� �� �˰��� �ۼ� �ɷ� ����Ͽ�WinNT ��ݿ��� �����ϴ� �پ��� ���� ���α׷��� ���߿� ������ C#���� OOP�� .NET �÷����� ������ ����� .NET ������, �� ����, �������� ����, Windows Form with C#, XML.NET, ADO.NET ���� Ȱ���Ͽ� �پ��� ������ ���� ���α׷��� ����Ͻ� �ַ���� ������ �� �ִ� �ɷ��� �����.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>C# ��� ������ OOP�� ���� �� Ȱ��</li>
								<li>NET Framework�� ���� ����</li>
								<li>���� ������ ���ؿ� ���α׷� ���迡 ����</li>
								<li>NET�� ������ ���񽺸� Ȱ���Ͽ� ����Ͻ� �ַ�� ���� �ɷ� ��� </li>
								<li>NET�� ������ ����� XML.NET, ADO.NET ���� ȿ�������� ������ �� �ִ� �ɷ� ��� </li>
								<li>Windows Form With C#�� �̿��� ������ ���α׷��� �ɷ� ���</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>�泲 �ƻ�� ������ ���긮 100 �������б� ��ȭ�� 5��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2">
								<caption>�ƻ�ķ�۽� Windows .NET ��ް��� Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">����</th>
										<th scope="col">�󼼳���</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="4">Windows API Programing</td>
										<td class="l">Windows �ٽ� ���� ����</td>
									</tr>
									<tr>
										<td class="l">API���ؿ� ����</td>
									</tr>
									<tr>
										<td class="l">Windows GUI ���α׷���</td>
									</tr>
									<tr>
										<td class="l">Windows System ���α׷���</td>
									</tr>
									<tr>
										<td rowspan="3">Windows Network Programing</td>
										<td class="l">��Ʈ��ũ�� ���ؿ� �⺻ ����</td>
									</tr>
									<tr>
										<td class="l">Winsock ���̺귯���� ����</td>
									</tr>
									<tr>
										<td class="l">Winsock�� �̿��� Networking ���α׷� �ۼ� </td>
									</tr>
									<tr>
										<td rowspan="3">MFC</td>
										<td class="l">MFC�� ������ ����</td>
									</tr>
									<tr>
										<td class="l">MFC �� OOP</td>
									</tr>
									<tr>
										<td class="l">MFC�� Ȱ���� Windows �������α׷���</td>
									</tr>
									<tr>
										<td rowspan="3">.NET�� C#</td>
										<td class="l">C# �⺻ ����</td>
									</tr>
									<tr>
										<td class="l">OOP�� ���� �� Ȱ��</td>
									</tr>
									<tr>
										<td class="l">�������̽��� �÷���, �븮��</td>
									</tr>
									<tr>
										<td rowspan="2">GoF�� ������ ����</td>
										<td class="l">���� ���� ����</td>
									</tr>
									<tr>
										<td class="l">���α׷� ���迡 ���� ����</td>
									</tr>
									<tr>
										<td rowspan="3">����</td>
										<td class="l">NET ������ ���� ���� �� ����</td>
									</tr>
									<tr>
										<td class="l">NET ������ ���� ���� �� ����</td>
									</tr>
									<tr>
										<td class="l">�������� ���� �ۼ� �� Ȱ��</td>
									</tr>
									<tr>
										<td rowspan="3">Windows Form with C#</td>
										<td class="l">XML.NET ����� Ȱ�� �� ������ ǥ��ȭ</td>
									</tr>
									<tr>
										<td class="l">Open API�� XML.NET ����� �̿��� ���α׷���</td>
									</tr>
									<tr>
										<td class="l">ADO.NET ��� Ȱ�� �� ���α׷���</td>
									</tr>
									<tr>
										<td rowspan="4">������Ʈ</td>
										<td class="l">�̷� �������� ������ ����� Ȱ���Ͽ� ���ο� �ַ���� �����غ��� �ܰ�</td>
									</tr>
									<tr>
										<td class="l">�� ������Ʈ �� �ο��� 4~6 ���ܷ� ����</td>
									</tr>
									<tr>
										<td class="l">�ֽ� ��� ���� ���� �ľ��Ͽ� ������Ʈ ���� ����</td>
									</tr>
									<tr>
										<td class="l">����Ʈ���� ���� ����п� �԰��� �ܰ躰 �۾��� ����</td>
									</tr>
								</tbody>
							</table>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">�����ϱ�</a>
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