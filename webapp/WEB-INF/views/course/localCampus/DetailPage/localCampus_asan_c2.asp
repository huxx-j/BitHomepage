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

			/* page load ���� SNB ���� */
			$(".snb_1702 a.newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.Uno1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno1 li:eq(3) a").addClass("on");
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
				<h3><span class="courseName">�ƻ�ķ�۽� - �ڷᱸ��/�˰���</span></h3>
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
						<h4>�ƻ�ķ�۽� �ڷᱸ��/�˰���<a href="/Register/Request/register_localCampus.asp" class="btn mid green1 mar_l10">�����ϱ�</a></h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���к�Ʈ</a>
							<a href="#this" class="last on">�ڷᱸ��/�˰���</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>�ڷᱸ��/�˰���</caption>
									<colgroup>
										<!--<col style="width:10%">-->
										<col style="width:15%">
										
										<col style="width:35%">
										<col style="width:10%">
										<col style="width:10%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td colspan="4">�ƻ�ķ�۽� �ڷᱸ��/�˰���</td>
										</tr>
										<!-- #include virtual="/Include/CourseDateTime/LocalCampus_Asan_DS_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit" colspan="2">��������</th>
											<td> 02-3486-1422</td>
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
											<td> 02-3486-1422</td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<p class="mar_b10">���α׷��� ���� ������� Ȱ���� ���ϴ� �е��� ���� �����Դϴ�.<br>
							�� ���¸� ���� ������ �ùٸ��� ����ϰ� ���� �����ϴ� ��� ���α׷��� �ۼ��� �� �ֵ��� ���͵帮�� �ǽ������� ��������� ȿ������ ���α׷� �ڵ带 �ۼ��ϴ� �ɷ��� �����ѵ帳�ϴ�. </p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>���α׷��� �ۼ��ϱ� ���� ���α׷� ���� �Ƿ� ���</li>
								<li>�ڷᱸ���� ���� ȿ������ �˰��� ���� �ɷ� ���</li>
								<li>�� 2000�� ������ �ڵ带 �ۼ��� �� �ִ� �ڽŰ� ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C���α׷��� �߱��̻�</li>
								<li>�ڷᱸ�� ���� ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>C Programming</li>
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
								<caption>�ƻ�ķ�۽� �ڷᱸ��/�˰��� Ŀ��ŧ��</caption>
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
										<td>�ܼ����Ḯ��Ʈ�� ���� �� ��������</td>
									</tr>
									<tr>
										<td>�ܼ����Ḯ��Ʈ�� �ǽ� �� ����</td>
									</tr>
									<tr>
										<td>�ܼ����Ḯ��Ʈ�� �ǽ� �� ����</td>
									</tr>
									<tr>
										<td rowspan="2">���߿��Ḯ��Ʈ</td>
										<td>���߿��Ḯ��Ʈ�� ���� �� ��������</td>
									</tr>
									<tr>
										<td>���߿��Ḯ��Ʈ�� �ǽ� �� ����</td>
									</tr>
									<tr>
										<td rowspan="2">����&amp;ť</td>
										<td>���ð� ť�� ���� �� ����� ��</td>
									</tr>
									<tr>
										<td>���ð� ť�� �ǽ�</td>
									</tr>
									<tr>
										<td rowspan="3">��������</td>
										<td rowspan="3">Ʈ��</td>
										<td>Ʈ���� ���� �� ��������</td>
									</tr>
									<tr>
										<td>Ʈ���� �ǽ�</td>
									</tr>
									<tr>
										<td>Ʈ���� �ǽ� �� Ȯ����������</td>
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