<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(11).addClass("on");
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
				<h3><span class="courseName">�������̳ʸ� ���� ���ۺ��� �ǹ�����</span></h3>
				<!--<h4>HTML, CSS�� �ٷ�� ���� ���� ������ �Ұ�. <br>���ߵ����� ������� ����Ͽ� ������ ��� ��ҿ� ���� ����� Ȱ������ ���Ͽ� �н�</h4>-->
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">�������̳ʸ� ���� ���ۺ��� �ǹ�����</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" class="last on">���ۺ��� �ǹ�����</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>�������̳ʸ� ���� ���ۺ��� �ǹ�����</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">�������̳ʸ� ���� ���ۺ��� �ǹ�����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li>2016.03.12(��), 19(��), 26(��) (3�� / 21�ð�)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>10:00 ~ 18:00 (1�� 7�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>360,000�� <!--<span class="greenTxt"> ���ϸ��� 5%���� (27,500��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1421</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� (������ : 189,330�� | �������� : 236,660��) | ����� �Ʒ� : �켱������� ������� 189,330��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">����� �Ʒ� : �켱������� ������� 247,118 �� | �ٿ�ó<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
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
						<div class="con_wrap first">
							<h5>�����Ұ�</h5>
							<p>�� ������ �������̳ʰ� ���ۺ��ŷ� �����ϱ����� ����� �����̴�. HTML�� �����߰� ������ �о߿� ���� �⺻���� ����̸�, �ֱ� ��ǥ���� �ΰ��Ǹ鼭 HTML�� ���Ҿ� CSS�� �߿䵵�� ������ ��Ȳ�̴�. �� ������ HTML�� CSS�� �̿��Ͽ� ����� ���̳� ����ũž �� ���񽺸� ������ �� �ֵ��� HTML�� ���ʺ��� �ǹ������� ü�������� ������ �� �ִ�. HTML���� �����ϴ� ��Ƽ�̵�� ��Ҹ� ������ ���� ���� ����ְ� �н��� �����Ѵ�.</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>HTML5����� ǥ�� �� ����Ʈ ���߰� ���� ����� ����</li>
								<li>HTML5�� �ֿ� ����� ������ API�� Ȱ���� ���α׷��� ����� ����</li>
								<li>������ ��� �� UI ������ ����</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>HTML5(HTML + CSS + JavaScript + jQuery)�� �����ϰ��� �ϴ� �������̳�</li>
								<li>HTML5����� ��/����� �� ������ ������ ����ϴ� ��</li>
								<li>������ �� ������ ����ϴ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>���� ����</h5>
							<table class="table_col_type2">
								<caption>�������̳ʸ� ���� ���ۺ��� �ǹ����� ��������</caption>
								<colgroup>
									<col style="width:10%">
									<col style="width:25%">
									<col style="width:25%">
									<col style="width:10%">
									<col style="width:30%">
								</colgroup>		
								<tbody>
									<tr>
										<th colspan="2" class="tit">��������</th>
										<th class="tit">�����ð�</th>
										<th class="tit">������</th>
										<th class="tit">������ ����</th>
									</tr>
									<tr>
										<td>3��</td>
										<td>12��, 19��, 26��</td>
										<td rowspan="10">��21�ð�<br/>(7�ð�, 3��,<br/>10:00~18:00)</td>
										<td rowspan="10">36����</td>
										<td rowspan="10"><img src="/Images/Content/img_BookCover_JS_jQuery_Basic.jpg"/></td>
									</tr>
									<tr>
										<td>4��</td><td>9��, 18��, 23��</td>
									</tr>
									<tr>
										<td>5��</td><td>7��, 21��, 28��</td>
									</tr>
									<tr>
										<td>6��</td><td>4��, 11��, 18��</td>
									</tr>
									<tr>
										<td>7��</td><td>9��, 16��, 23��</td>
									</tr>
									<tr>
										<td>8��</td><td>13��, 20��, 27��</td>
									</tr>
									<tr>
										<td>9��</td><td>10��, 17��, 24��</td>
									</tr>
									<tr>
										<td>10��</td><td>8��, 15��, 22��</td>
									</tr>
									<tr>
										<td>11��</td><td>12��, 19��, 26��</td>
									</tr>
									<tr>
										<td>12��</td><td>10��, 17��, 24��</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>���� Ŀ��ŧ��</h5>
							<table class="table_col_type1">
								<caption>�������̳ʸ� ���� ���ۺ��� �ǹ����� Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:25%">
									<col style="width:75%">
								</colgroup>		
								<tbody>
									<tr>
										<th class="tit">��������</th>
										<th class="tit">��������</th>
									</tr>
									<tr>
										<th rowspan="3">1����</th>
										<td>HTML5 ���� �� �����⺻</td>
									</tr>
									<tr>
										<td>��ũ�� ��Ƽ�̵��</td>
									</tr>
									<tr>
										<td>����</td>
									</tr>
									<tr>
										<th rowspan="4">2����</th>
										<td>CSS ��Ÿ�� ��Ʈ</td>
									</tr>
									<tr>
										<td>�ڹٽ�ũ��Ʈ ����</td>
									</tr>
									<tr>
										<td>DOM�� �ڹٽ�ũ��Ʈ</td>
									</tr>
									<tr>
										<td>ĵ����</td>
									</tr>
									<tr>									
										<th rowspan="3">3����</th>
										<td>JavaScript ����� jQuery ���̺귯���� �����ϴ� ���</td>
									</tr>
									<tr>
										<td>���̺귯���� �ֿ� ������� ����</td>
									</tr>
									<tr>
										<td>Ajax</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1423 (e-mail : egchung@bit.kr)</p>
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