<!DOCTYPE html>
<html lang="ko">
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
			$(".snb .depth2_wrap.no5").find("li a").eq(8).addClass("on");
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
				<h3><span class="courseName">���������� �ܱ� ������ ����</span></h3>
				<h4></h4>
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
						<h4 class="fl">���������� �ܱ� ������ ����</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">�ܱ� / �ٽɿ�������</a>
							<a href="#this" class="last on">���������� �ܱ� ������ ����</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>���������� �ܱ� ������ ����</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">���������� �ܱ� ������ ����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>2014.11.27 ~ 2014.12.16 (ȭ,��,��)</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>19:30 ~ 21:30 (2�ð�, �� 16�ð�)  </td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>600,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī��(������ : 480,000�� | �������� : 600,000��) | ����� �Ʒ� : �켱������� ������� 90,974��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�����Ұ�</h5>
							<p>������������ ������ �ִ� �� �����̳ʸ� ������� �ϴ� ������Ʈ ���� �����Դϴ�. �� �����ο� ���� ���踸 �ִٸ�, ������������ ó�� �����ϴ� �е鵵 �ڽŸ��� ���������� ������Ʈ�� ���� ������ �� �ֽ��ϴ�. 
							���� ������ PSD ������ ������Ʈ �������� ������������ ������ �� �ֵ���, �������� ���� ���������� �׸��� ������ ���ϴ�.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>����Ư¡</h5>
							<ul class="ul_dot_gray">
								<li>��Do it! ���������� ������Ʈ ����⡱ ���� ���� ������ ���� ���ʷ� ���������� �׸��� ���� �����ϴ� ����<li>
								<li> �� �����̳ʸ� ������� �ϴ� �ǽ� ������ �������� ����˴ϴ�.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<p>���� ������ ������Ʈ �������� ������������ �����ϰ� ���� �� �����̳�</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type1">
								<caption>�����ټ� �ǹ� �����͸� ��ũ�� Ŀ��ŧ��</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:70%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">������</th>
										<th scope="col">��������</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">���������� ������</th>
										<td>
											<dl>
												<dt>* ������������ Ȩ������ ������ �� ���� </dt>
												<dd>
													<ul>
														<li>���������� ���� �� ������ ��� ������</li>
														<li>������ ���� ��� ������ (�޴�, ī�װ�, �±�, ���� ��) -	Ȩ������ ��ȹ �� Ʋ �����</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>������ ��� ������, ������ ������ ����ȭ, Ȩ������ Ʋ �����</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�����̾� �׸� Ȱ���ϱ�</th>
										<td>
											<dl>
												<dt>* �����̾� �׸��� Ȱ���� Ȩ������ ���� ���Ͽ츦 ������</dt>
												<dd>
													<ul>
														<li>�����̾� �׸��� �پ��� ������ ��� ������ </li>
														<li>���� ������ �����ϴ� ���Ͽ� ������</li>
														<li>������ ������ Ȱ���Ͽ� ���̾ƿ� �����ϱ�</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>�����̾� �׸� ���� �� ���̾ƿ� ���� �ǽ�</li>
														<li>longdesc�� ó�� (����, �൵ �� �̹��� ������ ó��)</li>
														<li>�̹������� ó�� (���̹�, ���� ���� API�� ó��)</li>
														<li>�ǹ� ���� �̹����� ó��</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">���������� Ȱ�� �� ����</th>
										<td>
											<dl>
												<dt>* ������������ ��� Ȯ��� ���� ���Ͽ츦 ������</dt>
												<dd>
													<ul>
														<li>�Ҽȹ̵�� ����, �˻����� ����ȭ, ��� ����</li>
														<li>ȣ���� �� DB ����</li>
														<li>��� �� ����, ���� ����</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>���� ���� �� ���� ���� Ȱ�� �ǽ�</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">���������� �׸� Ŀ���͸���¡ �ϱ�</th>
										<td>
											<dl>
												<dt>* ���������� �׸��� ������ ����� ������ </dt>
												<dd>
													<ul>
														<li>Child �׸��� Ȱ���� �׸� ����</li>
														<li>���������� �׸� ���� �� �ѱ� ��Ʈ ����</li>
														<li>���������� �׸� ������ ��� ������</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>���������� �⺻ �׸��� ���ϴ� ���·� �����ϱ� (Hard Coding)</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">BLANK Theme Ȱ���� <br>���������� �׸� �����</th>
										<td>
											<dl>
												<dt>* �⺻���� ���������� �׸��� ����� ����</dt>
												<dd>
													<ul>
														<li>Step by Step �׸� ���� ���μ��� ������ </li>
														<li>PSD�� ������� �ϴ� Structure Markup</li>
														<li>Barebone �׸�(BLANK Theme)�� Ȱ���� �⺻ �׸� �ϼ�</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>Ȩ������ Markup �ۼ� �� �׸� ������ �ǽ�</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">HTML5 Reset Theme Ȱ���� �׸� �����</th>
										<td>
											<dl>
												<dt>* HTML5 ����� ���������� �׸��� ����� ���� </dt>
												<dd>
													<ul>
														<li>HTML5 Semantic Tag ����� IE ������ ����</li>
														<li>�پ��� ���ø� ������ �ۼ� �� ����</li>
														<li>�پ��� ���� ������ ����</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>HTML5 ����� ���������� �׸� ����</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">Drag and Drop emplate Theme <br>Ȱ���� �׸� �����</th>
										<td>
											<dl>
												<dt>* Drag and Drop ������ ���ø� �� �׸� Ȱ���ϱ�</dt>
												<dd>
													<ul>
														<li>�ڵ��� �ּ�ȭ�ϰ� ���������� Ȱ���� �� �ִ� Template Theme ���� </li>
														<li>Dynamic Theme Page Template Ȱ�� </li>
														<li>Drag and Drop���� �پ��� �׸� ���ø� ������ �����</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>Drag and Drop Theme Template Ȱ�� �ǽ�</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">������ �׸� �ϼ��ϱ�</th>
										<td>
											<dl>
												<dt>* ���������� �׸��� �ϼ��� ����</dt>
												<dd>
													<ul>
														<li>���ø� �׸��� CSS�� JavaScript �����ϱ�</li>
														<li>�׸� ���� �޴�(Theme Option Panel) �����ϱ�</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<th scope="row">�ǽ�</th>
										<td>
											<dl>
												<dd>
													<ul>
														<li>���ø� �׸� �ڵ� �ǽ� �� �׸� ���� �޴� ���� �ǽ�</li>
													</ul>
												</dd>
											</dl>
										</td>
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