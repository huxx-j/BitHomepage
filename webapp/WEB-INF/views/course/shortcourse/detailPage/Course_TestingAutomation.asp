<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("TESTINGAUTOMATION")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no5").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no5").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no5 li:eq(0) a").addClass("on");
			
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
				<h3><span class="courseName">SW �׽��� ��� �� GUI �׽��� �ڵ�ȭ</span></h3>
				
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
						<h4 class="fl">SW �׽��� ��� �� GUI �׽��� �ڵ�ȭ</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=TestingAutomation" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap" style="width:360px; top:25px;">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this" class="last on">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" style="margin-left:44px;"></a>
							<a href="#this" class="last on"><span style="float:left;">SW �׽��� ��� �� GUI �׽��� �ڵ�ȭ</span></a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>SW �׽��� ��� �� GUI �׽��� �ڵ�ȭ</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">SW �׽��� ��� �� GUI �׽��� �ڵ�ȭ</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												����
												
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>����</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">����� �Ʒ� : �켱������� ������� 247,118��* �ٿ�ó<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<p>
								����Ʈ���� �׽����� ����ȭ�� ����Ʈ��� �����ϱ� ���� �ʼ� �����Դϴ�.<br/>
								�� ������ ����Ʈ���� �׽��� ���뿡 ������ �ξ� �׽�Ʈ�� �ʿ��� ����� �����, ��� ��� �� �׽��ÿ� �ʿ��� �ܰ躰 ����� ���� �н��մϴ�.<br/>
								�׸��� ����Ʈ���� �ڵ�ȭ ����� �ʿ伺�� ���� �˾ƺ� ��, GUI �׽��� �ڵ�ȭ ���� ����� �����ϰ� �ǽ��մϴ�.
							</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>����Ʈ���� ����</li>
								<!--
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>
								<li>SQL & JDBC<a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>
								<li>Servlet & JSP<a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>
								<li>��ü���� �ڹ����α׷���</li>
								<li>����! SQL & JDBC ���α׷���</li>
								<li>����! Servlet & JSP ���α׷���</li>
								<li>UML ���������� �̰͸� ����<a href="/Course/ShortCourse/DetailPage/Course_realUml.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>
								-->
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type1">
								<caption>SW �׽��� ��� �� GUI �׽��� �ڵ�ȭ Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<tbody>
									<tr>
										<th scope="col">������</th>
										<th scope="col">������</th>
										<th scope="col">��������</th>
									</tr>
									<tr>
										<td rowspan="2">����Ʈ���� �׽���</td>
										<td>�⺻ ����</td>
										<td>
											<ul>
												<li>���ڽ�, ȭ��Ʈ�ڽ� �׽���</li>
												<li>���α׷� �ν���ǰ� ��ũ����</li>
												<li>�׽�Ʈ ���̽� ����</li>
												<li>��� �׽���, �����</li>
												<li>�ͽ�Ʈ�� �׽���</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>�׽�Ʈ ���̽� ���� �ǽ�</td>
										<td>��ʸ� ������� �ǽ� ����</td>
									</tr>
									<tr>
										<td rowspan="2">����Ʈ���� �׽��� �ڵ�ȭ</td>
										<td>�ڵ�ȭ ��� ����</td>
										<td>
											<ul>
												<li>�׽�Ʈ �ڵ�ȭ ���</li>
												<li>�����ͺ��̽� �׽�Ʈ �ڵ�ȭ ���</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>GUI �׽��� �ڵ�ȭ ���� ���� �ǽ�</td>
										<td>GUI �׽�Ʈ �ڵ�ȭ ���� ���� �� ���</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=TestingAutomation" class="btn mid green1">�����ϱ�</a>
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