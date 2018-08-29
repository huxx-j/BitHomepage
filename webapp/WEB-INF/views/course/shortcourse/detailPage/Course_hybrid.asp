<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
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
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("HYBRID")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no4").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no4").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no4 li:eq(1) a").addClass("on");
			
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
				<h3><span class="courseName">���̺긮�� ���α׷���</span></h3>
				<h4>�ȵ���̵忡�� ���̺긮�� ���� ����� ���� ����� �н�</h4>
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
						<h4 class="fl">���̺긮�� ���α׷���</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=hybrid_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" class="last on">���̺긮�� ���α׷���</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>���̺긮�� ���α׷���</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">���̺긮�� ���α׷���</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul class="ul_dot_gray">
													<li>����</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>19:00 ~ 22:00 (1�� 3�ð�, �� ~ ��)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>360,000��<!--600,000��--><!--<span class="greenTxt"> ���ϸ��� 5%���� (30,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<!--<td colspan="3">�ٷ���ī��(������ : 480,000�� | �������� : 600,000��) | ����� �Ʒ� : �켱������� ������� 247,118��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<td colspan="3">�ٷ���ī�� (������ : 189,320�� | �������� : 236,660��) | ����� ȯ�� : �ִ� 236,660��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										
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
							<!--<p>�� ������ �ȵ���̵忡�� ���̺긮�� ���� ����� ���� ����� �н��Ѵ�. �ȵ���̵忡�� �ǽ��� �ϸ鼭 ����������, ���������� ��ȯ�Ҷ� �����ؾ��� �κе�, �Բ� �н��ϱ� ������ ������ ���α׷����� �н��� ��� ���� �ȵ���̵�� ���������� �Բ� �����ϴ� ���̺긮�� ���� �ۼ��� �� �ִ�. WebView������Ʈ�� ���� �ٷ�� ���̺긮�� ���� ����� ������� ����Ͽ�, ���̺긮�� ���� ����� ���� ������ �߿��� ���� �θ� ����ϰ� �ִ� �������� �Բ� �н������ν� ���̺긮�� ���� �������, ���ۿ��� �׸��� Ȱ�������� �ٷ� �� �ְ� �ȴ�.</p>-->
							<p>�� ������ �ȵ���̵忡�� ���̺긮�� ���� ����� ���� ����� �н��մϴ�. �ȵ���̵忡�� �ǽ��� �ϸ鼭 ����������, ���������� ��ȯ�Ҷ� �����ؾ��� �κе� �Բ� �н��ϱ� ������ ������ ���α׷����� �н��� ��� ���� �ȵ���̵�� ���������� �Բ� �����ϴ� ���̺긮�� ���� �ۼ��� �� �ֽ��ϴ�. WebView ������Ʈ�� ���� �ٷ�� ���̺긮�� �� ����� ����� ����Ͽ�, ���̺긮�� ���� ����� ���� ������ �߿��� ���� �θ� ����ϰ� �ִ� �������� �Բ� �н������ν� ���̺긮�� ���� �������, ���ۿ��� �׸��� Ȱ�������� �н��ϴ� �����Դϴ�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>�ȵ���̵� App ������ ���� ȯ���� �����ϰ� �������� App ������ �����Ͻ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<!--<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>-->
								<!--<li>��ü���� �ڹ����α׷���</li>-->
								<li>HTML5(HTML + CSS) + JavaScript<a href="/Course/ShortCourse/DetailPage/Course_html5.asp" class="mar_l10 btn sml blue">�ڼ�������</a></li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->




						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type1">
								<caption>���̺긮�� ���α׷���</caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:60%">
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
										<th scope="row" rowspan="9">���̺긮�� �� ����<br>�� �����غ�</th>
										<td rowspan="4" class="c">����</td>
										<td>���ø����̼� ����</td>
									</tr>
									<tr>
										<td>���̺긮�� ���� ����</td>
									</tr>
									<tr>
										<td>���̺긮�� ���� �����</td>
									</tr>
									<tr>
										<td>���̺긮�� ���� ���</td>
									</tr>
									<tr>
										<td class="c">��� ��� �� ���� ȯ��</td>
										<td>�� ���, ����� �÷��� ���� ȯ�� ��</td>
									</tr>
									<tr>
										<td rowspan="2" class="c">���� �����ӿ�ũ</td>
										<td>�����ӿ�ũ ����, �ڸ�����(����) ���� ���̺긮�� �� �����ӿ�ũ �Ұ�</td>
									</tr>
									<tr>
										<td>���� Ŭ���� ȯ��</td>
									</tr>
									<tr>
										<td rowspan="2" class="c">�ڸ�����(Cordova)<br>�����ӿ�ũ</td>
										<td>�ڸ����� ���� ȯ�� ����</td>
									</tr>
									<tr>
										<td>�ڸ����� CLI</td>
									</tr>

									<tr>
										<th scope="row" rowspan="5">���̺긮�� �� ���� ����</th>
										<td class="c">����� ȯ���� Ư¡</td>
										<td>��ġ, ������, ���������̼� ����</td>
									</tr>
									<tr>
										<td class="c">���丮��</td>
										<td>�� ���丮��, ���� ���丮��, WebSQL, ����� Baas ��</td>
									</tr>
									<tr>
										<td class="c">�ڹٽ�ũ��Ʈ��<br>����Ƽ�� API�� ����</td>
										<td>�ڹٽ�ũ��Ʈ�� �̿��� ����� �÷��� ����Ƽ�� API ����ϱ�</td>
									</tr>
									<tr>
										<td class="c">WebView��<br>���̺긮�� �� ����</td>
										<td>�ȵ���̵� �� iOS�� WebView�� ���̺긮�� �� �����ϱ�</td>
									</tr>
									<tr>
										<td class="c">���̺긮�� �� ���� ��</td>
										<td>HTML5, �ڹٽ�ũ��Ʈ ��</td>
									</tr>

								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>



<!--

						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2">
								<caption>C Programming Master�� Ŀ��ŧ��</caption>
								<thead>
									<tr>
										<th scope="col">��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Mobile �� Web ȯ�濡 ���� ���� �� �� ���������� ���� �����</td>
									</tr>
									<tr>
										<td>Mobile ������ UI/UX ��� ��� �� �������</td>
									</tr>
									<tr>
										<td>Mobile UI Framework - Jquery Mobile</td>
									</tr>
									<tr>
										<td>Mobile UI Framework - Sencha Touch</td>
									</tr>
									<tr>
										<td>Device API (DAP, WAC) Ȱ�� ���</td>
									</tr>
									<tr>
										<td>Mobile Web ȯ���� ���� Server Side �������</td>
									</tr>
									<tr>
										<td>Hybrid App �� Native App ������ Web Content Ȱ����</td>
									</tr>
									<tr>
										<td>Hybrid App �� ���� WebApp Framework(����)</td>
									</tr>
									<tr>
										<td>����! ���̺긮�� �� �ǽ�</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423</p>
						</div>

-->
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=hybrid_core" class="btn mid green1">�����ϱ�</a>
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