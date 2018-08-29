<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("OCJP")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">Java �ڰ��� ��� ����</p></h3>
				<!--<h4></h4>-->
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
					<table>
					<div class="hGroup">
						<div>
							<h4 class="fl" style="font-size:16px; margin-top:5px;">Java �ڰ��� ��� ����</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=Java_OCJP" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">Ȩ</a>
								<a href="#this">�����ȳ�</a>
								<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
								<a href="#this" class="last on">Java �ڰ��� ��� ����</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Java �ڰ��� ��� ����</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">Java �ڰ��� ��� ����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li>2015.10.12 ~ 2015.10.30 (15�� / �� 45�ð�)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>19:00 ~ 22:00 (1�� 3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>450,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (25,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1423</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� / �ٿ�ó : 147,240�� | ����� �Ʒ� : �켱������� ������� 147,240��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������� ����</h5>
							<p>
								Java Programming�� ���� ������ ���Ҿ� �ڰ����� ��� �� �� �ִ� ���� �Դϴ�.<br/>
								�پ��� ������ �ڰ��� ��� ���� �ذ��� ���� ���α׷� �ڵ��� ���� �ǽ��� ���Ҿ� �̷��� ���� �� �ִ� ���� �Դϴ�.<br/>
								�پ��� ���� Ǯ�̸� ���� �ڰ��� ��� Ȯ���� ���� �� �ֽ��ϴ�.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������� �� ��������</h5>
							<!--
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
							-->
							<ul class="ul_dot_gray">
								<li>���α׷��� ���� �⺻ ������ ������ �ִ� ������ �� �� �ý��� ���</li>
								<li>�ڰ��� ��� �غ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
<!--
						<div class="con_wrap">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>���õ� ��ǰ ���ۿ� ��̰� �ְų�, �̸� �� ������ ���� �ϴ� �ο�</li>
							</ul>
						</div>
-->
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>���� ����</h5>
							<ul class="ul_dot_gray">
								<li>C Programming <a href="/Course/ShortCourse/DetailPage/Course_c.asp" class="btn sml blue">�����</a></li>
								<li>System Programming <span style="color:blue;">(������ �ý��ۿ� ���� �������� ����)</span></li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>��� �ǽ�������</h5>
							<ul class="ul_dot_gray">
								<li>PC</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
												
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>Java �ڰ��� ��� ���� Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:60%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">����</th>
										<th scope="col">��ǥ</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="3">Java ����</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>What is Java</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Java Ư¡</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>���� ȯ��</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">Program ����</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>�پ��� ���α׷� ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>�پ��� ���α׷� �ڵ� �� ����Ǯ��</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">OOP</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>OOP ���� ���� �� Ư¡ ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>OOP ���α׷� �ڵ� �� ����Ǯ��</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">Exception</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Exception ���� ���� �� ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Exception ���α׷� �ڵ� �� ����Ǯ��</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">API</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Java API Ȱ�� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Java API Ȱ���� ���� ���α׷� �ڵ� �� ����Ǯ��</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">���� Ǯ��</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>�� Chapter �� ���� Ư¡ �� ���� Ǯ��</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>���� ���� Ǯ��</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Java_OCJP" class="btn mid green1">�����ϱ�</a>
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