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
			$(".snb_1702 .newdepth3_wrap.Uno1 li:eq(1) a").addClass("on");
		});

		$(document).ready(function(){
			$(".popup_inner").addClass("on");
			$(".popup_inner").animate({opacity:"1"}, 500);
			
			/*
			$(".cover_Wrap").addClass("on");
			$(".cover_Wrap").animate({opacity:"0"}, 500);
			
			$(".btn_delete").on("click", function(){
				btn_delete();
			*/
			});

			/*
			$(".cover_Wrap").on("click", function(){
				btn_delete();
			});
			//������ ���� ��ü ���� btn
			$(".btn_total_schedule").on("click", function(){
				$(".total_schedule").addClass("on");
			});
			$(".total_schedule .btn_delete").on("click", function(){
				$(".total_schedule").removeClass("on");
			});
		});

			/*
		function btn_delete(){
			$(".popup_inner").animate({opacity:"0"}, 500, function(){
				$(".popup_inner").removeClass("on")
			});
			$(".cover_Wrap").animate({opacity:"0"}, 500, function(){
				$(".cover_Wrap").removeClass("on")
			});
		}

		function hidebox(){
			if (document.all)
			divpop_1.style.visibility="hidden"
			else if (document.layers)
			document.divpop_1.visibility="hide"
		}
			*/

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
				<h3><span class="courseName">�ƻ�ķ�۽� - C Programming</span></h3>
				<h4> ���α׷��� �� ��� �� ó������ TOOL�� SKILL�� ���غ� �� �ִ� �������� <br>
				������ �ʿ��� �̷б��� �� �׷� ������Ʈ ������ ���� ���� ��ȭ�� �� ����</h4>
			</div>
		</div>
		<!--
		<div class="cover_Wrap"></div>
		<div id="Popup_Wrap">
			<div class="popup_inner">
				<div class="popupBox asan_c">
					<table>
						<td>
							<a href="/Upload/sunmoon_univ_application.doc"><img src="/Images/Popup/img_pop_sunmoon.jpg" alt=""></a>
						</td>
					</table>
					!--
					<p class="btn_wrap">
						<a href="#this" class="btn_delete"><img src="/Images/Common/btn_delete_white.png" alt="�ݱ�"></a>
					</p>
					--
				</div>
			</div>
		</div>
		-->
		
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>�ƻ�ķ�۽� C Programming<a href="/Register/Request/register_localCampus.asp" class="btn mid green1 mar_l10">�����ϱ�</a></h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���к�Ʈ</a>
							<a href="#this" class="last on">C Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>�ƻ�ķ�۽� C Programming ����</caption>
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
											<td colspan="4">�ƻ�ķ�۽� C Programming</td>
										</tr>
										<!-- #include virtual="/Include/CourseDateTime/LocalCampus_Asan_C_DetailPageTR.inc" -->
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
							<p class="mar_b10">�� ������ C���� ���غ�������, ��Ȯ�� ������ ���� ��, C�� ó�� ���ô� �е��� �������, �⺻ �������� �ڵ����� ü�������� �н��ϴ� �����Դϴ�. �̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� �ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</p>
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
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>C�� ó�� ���� ��</li>
								<li>�������������� ���α׷��ֿ� ������ �ִ� ��</li>
								<li>C�� ������� ���������� �����Ͽ� �Ƿ� ����� �� �Ǵ� ��</li>
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
								<caption>�ƻ�ķ�۽� C Programming Ŀ��ŧ��</caption>
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
										<td rowspan="6">C��� �⺻����</td>
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
										<td rowspan="10">�����Ϳ� �迭</td>
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
										<td rowspan="4">C����� Ȯ��</td>
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
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423</p>
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