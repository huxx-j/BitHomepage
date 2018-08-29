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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("JSJQUERY_AJAX")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no2").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no2").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no2 li:eq(3) a").addClass("on");
			
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">JavaScript/jQuery & AJAX<span style="font-size:14pt;"></span></p></h3>
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
							<h4 class="fl" style="font-size:16px; margin-top:5px;">JavaScript/jQuery & AJAX</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=JSjQuery_AJAX_core" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">Ȩ</a>
								<a href="#this">�����ȳ�</a>
								<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
								<a href="#this" class="last on">JavaScript/jQuery & AJAX</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>JavaScript/jQuery & AJAX</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">JavaScript/jQuery & AJAX</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li>����</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>19:00 ~ 22:00 (1�� 3�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										
										
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�������� ����</h5>
							<p>
								�ֱ� ���� �̽��� �ǰ� �ִ� �پ��� ��Ƽ ����̽����� ���۵� �� �ִ� Web Application ���߿� �־� �� �ʿ��� ������� ���� �մϴ�.<br/>
							</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>������� �� ��������</h5>
							<ul class="ul_dot_gray">
								<li>���α׷��� ���� �⺻ ������ ������ �ִ� ������ �� �� �ý��� ���</li>
								<li>�� ���ø����̼ǿ� ���� �⺻ ������ ������ �ִ� ������ �� �� �ý��� ���</li>
							</ul>
						</div>
						<!-- //con_wrap -->
		
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>�� ���������� ���ؼ�</h5>
							<ul class="ul_dot_gray">
								<li>�� ������ ���� �پ��� ���������� ���� ���� �� ũ�ν�����¡�� ������ �� ���ø����̼��� ���� �� �� �ֽ��ϴ�.</li>
								<li>AJAX�� �̿��� �񵿱� ��� ����� �� ���ø����̼��� ���� �� �� �ֽ��ϴ�.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
												
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>Ŀ��ŧ��</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>JavaScript/jQuery & AJAX</caption>
								<colgroup>
									<col style="width:30%">
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
										<th scope="row" rowspan="2">JavaScript</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>JavaScript Programming �⺻</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>JavaScript�� �̿��� Web Client Application</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">jQuery</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>jQuery �⺻ ���� �� ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>jQuery �� �̿��� Programming</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">AJAX</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>AJAX�� �⺻ ���� ���� �� ���� ����</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>AJAX�� �̿��� Open API ����</li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JSjQuery_AJAX_core" class="btn mid green1">�����ϱ�</a>
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