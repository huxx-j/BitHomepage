<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Beta/Include/Meta.asp"-->
	<title>��Ʈ����:����������</title>
	
	<!-- #include virtual="/Beta/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Beta/Include/Script.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			ajaxLoad('#TabCon', '', '/Beta/Common/Tab/SupportInfo_01.asp');
			$(".snb .depth1").eq(6).addClass("on");
			$(".snb .depth2_wrap").eq(6).addClass("on");
			$(".snb .depth2_wrap.no7").find("li a").eq(1).addClass("on");
		});
	</script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Beta/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="blueTxt1">Bit</span>Academy <span class="courseName"></span></h3>
				<h4> ���α׷��� �� ��� �� ó������ TOOL�� SKILL�� ���غ� �� �ִ� �������� <br>
				������ �ʿ��� �̷б��� �� �׷� ������Ʈ ������ ���� ���� ��ȭ�� �� ����</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Beta/Include/SNB.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4><a href="#this" class="btn mid green1 mar_l10">�����ϱ�</a></h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���к�Ʈ</a>
							<a href="#this" class="last on"></a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption></caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td colspan="3"></td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td class="l"></td>
											<th scope="row" class="tit">���ǽð�</th>
											<td></td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td></td>
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
							<p class="mar_b10"></p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2">
								<caption></caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
							</table>
							<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="" class="btn mid green1">�����ϱ�</a>
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
		<!-- #include virtual="/Beta/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>