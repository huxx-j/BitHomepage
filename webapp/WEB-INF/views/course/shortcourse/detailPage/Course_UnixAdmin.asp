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
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("UNIXADMIN")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">���н� ����</p></h3>
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
							<h4 class="fl" style="font-size:16px; margin-top:5px;">���н� ����</h4>
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">Ȩ</a>
								<a href="#this">�����ȳ�</a>
								<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
								<a href="#this" class="last on">���н� ����</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>���н� ����</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">���н� ����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<!--<li>2016.01.18 ~ 2016.01.29 (10�� / �� 30�ð�)</li>-->
													<li>8�ð��� 4�� / �� 32�ð�</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>19:00 ~ 22:00 (1�� 3�ð�)</td>-->
											<td>����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<!--<td>600,000��</td>-->
											<td>����</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1423</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>-->
											<!--<td colspan="3">���ιٿ�ó = �켱��������� ���� : 263,520��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<!--<td colspan="3">�ٷ���ī�� / �ٿ�ó : 263,520�� | ����� �Ʒ� : �켱������� ������� 263,520��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>-->
											<!--<td colspan="3">����ȯ��(������ : 175,770�� / �������� : 219,720��) / �����ȯ��(�켱��������� ���� : 175,770��) <a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>-->
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
							<h5>�������� �Ұ�</h5>
							<p>
								���н�(������) �ý����� ó�� ���غ��� ����ڸ� ���� �������� �ý��� ��뿡 �ʿ��� ����� ������ ���� �ǽ��� ���� �ý��� ��� ���� ������ ������ �� �ִ�.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>���� ��ǥ</h5>
							<p></p>
						-->
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						<!--
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>���н�(������)�� ó�� ���ϴ� �����</li>
							</ul>
						</div>
						<!-- //con_wrap -->
									
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>���̵�</h5>
							<ul class="ul_dot_gray">
								<li>�ʱ���</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>���н� �ý���</li>
								<li>�⺻ ���� �� �⺻ ��ɾ�</li>
								<li>����� ������ ���� �Ӽ�</li>
								<li>���� ��ɾ�</li>
								<li>���͸� �� ���� ������ ����</li>
								<li>Vi ������ ����</li>
								<li>�� �Ұ�</li>
								<li>�� ���α׷���</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>����ȿ��</h5>
							<ul class="ul_dot_gray">
								<li>ó�� ���ϴ� ���н� ȯ�濡 �����ϰ� ���ϴ� �Ϲ����� �۾��� ���� �� �� �ִ�</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>���ǿ��� : �̷� / �ǽ�</h5>
							<p>
								�� ���Ǵ� ũ�� �̷а� ���� ����� �ǽ� �� ���� ������� �����Ѵ� ���� �˻� ������ �Ұ����� �̷��� �ٷ�� ���Ŀ� ������ ���� ����п� �ǰ��Ͽ� �ܰ� ���� ���̾�׷��� �ۼ��ϰ� �̿� �°� ���α׷��� �ǽ����� �̷������. �� ������ ���� ���� ������ �پ��� ������ ���� ���� ��� ������Ʈ���� ȿ������ �˻� ���񽺸� �����ϴ� ����� ���� �� �ִ�								
							</p>							
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>���� ����</h5>
							<ul class="ul_dot_gray">
								<li>(����)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>���н� ����</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:60%">
									<col style="width:10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">������</th>
										<th scope="col">��������</th>
										<th scope="col">�ü�</th>										
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">���н� �ý���</th>
										<td class="l">
											���н� �ý����� ���� ����
										</td>
										<td>2</td>
									</tr>
									
									<tr>
										<th scope="row">�⺻���� �� �⺻ ��ɾ�</th>
										<td class="l">
											���н� �ý����� ����ϱ� ���� �⺻��ɾ �ǽ��� ���Ͽ� ���н� ������ ����
										</td>
										<td>8</td>
									</tr>
									
									<tr>
										<th scope="row">����� ������ ���� �Ӽ�</th>
										<td class="l">
											��Ƽ������ �ü���� Ư¡���� ���� ����ڰ� �����Ͽ� �ü���� ����ϹǷ� �����ڰ� ����ڸ� ���� �� ������� ������ �����ؾ� �ϹǷ� �̷��� Ư������ �ǽ��� ���� �����Ѵ�.
										</td>
										<td>4</td>
									</tr>
									
									<tr>
										<th scope="row">������ɾ�</th>
										<td class="l">
											���н� �ý��� ������ɾ �ǽ��� ���� �����Ѵ�
										</td>
										<td>4</td>
									</tr>
									
									<tr>
										<th scope="row">Vi ������</th>
										<td class="l">
											Vi ������ ȯ�漳�� �� ��������� �ǽ��� ���� �����Ѵ�
										</td>
										<td>4</td>
									</tr>
									
									<tr>
										<th scope="row">�� ���α׷���</th>
										<td class="l">
											���н� ���� ���� �� ��� �� ���α׷��� �ǽ�
										</td>
										<td>10</td>
									</tr>
									
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423</p>
						</div>
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