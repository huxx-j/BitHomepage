<!DOCTYPE html>
<%
	dim strDateTime
	strDateTime	= "2017.05.13 ~ 2017.06.04"
%>

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- �����޴��� ���������� �ش� ������ ÷���ϱ� ���� ����ϴ� �ҽ�
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			<% roadmapPageNum=1 %>
			<!--#include file="Common_eventHandlers_CRoadmap.inc"-->
		
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C_WEEKEND")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(1) a").addClass("on");

			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
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
				<h3><span class="courseName">C Programming (�ָ�)</span></h3>
				<h4>�̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� <br>�ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</h4>
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
						<h4 class="fl">C Programming (�ָ�)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=C_Weekend" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷���</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">C Programming (�ָ�)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming (�ָ�)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�����</th>
											<td colspan="3">C Programming (�ָ�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDateTime%></li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<span class="blueTxt">1�� 5�ð� * 8��(�� 40�ð�) </span>
												<ul class="ul_dot_gray">
													<li>��/��</li>
													<li>���� : 13:00 ~ 18:00(5�ð�)</li>
												</ul>												
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>400,000�� <!--262,960�� --><span class="blueTxt">(������ ȯ�� ����)</span> </td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1421</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">* �� ������ ��ø����̸� ���� �ּ��ο��� ���� ��, ���� ���� �� ���������ڵ鿡�� �����Ͽ� �����˴ϴ�.</span>
								
								<div> <!-- div ȯ�޺� -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�������Ź�Ʒ� <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
										<!--<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">ȯ�޳��� �ڼ�������</a></span>-->
									</h4>
									<!-- ��뺸��ȯ�޾ȳ�-->
									<div class="refundInfo_wrap2">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
									</div>
									<!-- //��뺸��ȯ�޾ȳ� -->

									<div id="divSa" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">ȯ�޳��� �ڼ�������</a></span>
										<div style="clear:both;"></div>
										<table class="table_col_type1">
											<colgroup>
												<col style="width:19%">
												<col style="width:19%">
												<col style="width:11%">
												<col style="width:11%">
												<col style="width:11%">
												<col style="width:8%">
												<!--<col style="width:21%">-->
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>������� �з�</th>
													<th>��ñٷ��� ��</th>
													<th>������</th>
													<th>ȯ�ޱ�</th>
													<th>����δ��</th>
													<th>ȯ�޺���</th>
													<!--<th>ȯ�ޱݳ��� �ڼ�������</th>-->
												</tr>
												<tr>
													<td rowspan="2">�켱���������<br/>(�߼ұ��)</td>
													<td>50�� �̸�</td>
													<td rowspan="4">400,000��</td>
													<td>262,960��</td>
													<td>137,040��</td>
													<td>65%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50�� �̻�</td>
													<td>236,660��</td>
													<td>163,340��</td>
													<td>59%</td>
												</tr>
												<tr>
													<td rowspan="2">�߰� �Ǵ� ����</td>
													<td>1,000�� �̸�</td>
													<td>157,770��</td>
													<td>242,230��</td>
													<td>39%</td>
												</tr>
												<tr>
													<td>1,000�� �̻�</td>
													<td>105,180��</td>
													<td>294,820��</td>
													<td>26%</td>
												</tr>
												
											</tbody>
										</table>
										<span class="redTxt"> �� �������Ź�Ʒ��� ��� ������ 400,000�� �����ϰ�, �⼮�� 80% �̻��� ��� ȯ�ޱ��� �ǵ��� ���� �� �ֽ��ϴ�.</span><br/>
										<span class="redTxt"> �� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�.</span><br/>
									</div>
									
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										�ٷ��� �����ɷ�������� <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">ȯ�ޱݾ� �ڼ�������</a>
										<!--<span style="margin-left:607px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></span>-->
									</h4>
									<!-- ��뺸��ȯ�޾ȳ�-->
									<div class="refundInfo_wrap">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
									</div>
									<!-- //��뺸��ȯ�޾ȳ� -->

									<div id="divGn" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></span>
										<div style="clear:both;"></div>
										
										<table class="table_col_type1">
											<colgroup>
												<col style="width:19%">
												<col style="width:26%">
												<col style="width:10%">
												<col style="width:12%">
												<col style="width:12%">
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>������� �з�</th>
													<th>���</th>
													<th>������</th>
													<th>���κδ��</th>
													<th>�ںδ����</th>
													
												</tr>
												<tr>
													<td rowspan="4">�켱���������<br/>(�߼ұ��)</td>
													<td>��������</td>
													<td rowspan="9">400,000��</td>
													<td rowspan="4">137,040��</td>
													<td rowspan="4">34%</td>
												</tr>
												<tr>
													<td>���� ������</td>
												</tr>
												<tr>
													<td>���� ������</td>
												</tr>
												<tr>
													<td>������</td>
												</tr>
												<tr>
													<td rowspan="5">�߰� �Ǵ� ����</td>
													<td>��������</td>
													<td>137,040��</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>189,630��</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>���� ������</td>
													<td>137,040��</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>������(50���̻�)</td>
													<td>189,630��</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>3�Ⱓ ��������<br/>(3�Ⱓ �ٷ��������ɷ������ �̱�����)</td>
													<td>189,630��</td>
													<td>47%</td>
												</tr>
											</tbody>
										</table>
										<!--
										<span class="redTxt">�� �ٷ��� �����ɷ��������(ī��߱� �����)�� ���κδ�� 70,000���� �����մϴ�</span><br/>
										<span class="redTxt">�� �Ϲ���(�Ǿ��� �Ǵ� ���л�)�� ������ ���� ���� �δ��Դϴ�</span>
										-->
									</div>
								</div> <!-- // div ȯ�޺� -->
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- �ε�� -->
						<!--#include file="Common_roadmap_C_v2_1100.inc"-->
						<!-- //�ε�� -->
						
						
						<!-- con_wrap -->
						<div class="con_wrap first">
							<style>
								.myYellow {
									color:#FFFF00;
								}
								.myBlackBox {
									width:94%; 
									background-color:#404040; 
									margin:1%; 
									padding:2%; 
									color:white; 
									text-align:center; 
									font-size:11pt; 
									box-shadow:1px 4px 4px #7f7f7f;
								}
								.myBlueBox {
									background-color:#094472;
									margin:0;
									padding:2%;
									color:white;
									text-align:left;
									font-size:11pt;
								}
							</style>
							<div class="myBlackBox">
								<p>��,��,�� �ǹ����������� �ʼ��� �Ǵ� �ô�!</p>
								<p>�������ڵ� ��ƴٴ� ����Ʈ��� ����� �����ϰ� ���� �� �� �ֽ��ϴ�.</p>
								<p>�����ڵ� ���ʸ� �ٽ� �ѹ� ưư�� �ϴ� ��Ⱑ �� ���Դϴ�.</p>
								<p>�츮���� �ʿ��� ���� �ڽ��� ���� ����.</p>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>� ������ �����?</h5>
							<ul class="ul_dot_gray">
								<li>C���� ��� ��ǻ�� �ý��ۿ��� ����� �� �ִ� ���α׷��� ��� �Դϴ�.</li>
								<li>C�κ��� ���� �� �Ļ��Ǿ� ���Խ��ϴ�. C++, JAVA, C#, Python�� ��ǥ�� �Դϴ�.</li>
								<li>��Ȯ�ϰ� ����� ������ �ѿ� �Ȱ�ó�� �ڽ��� �Ƿ��������� �� ��������?</li>
								<li>��̷� ������ �Ѵٿ� ������ǥ�� ������ �Ѵ� �� ���� ���̰� �� �� �ۿ� �����ϴ�.</li>
								<li>�������ξ������ ��Ȯ�ϰ� ���� �������� �Ƿ��� �����ڰ� �� �� �ִ� ������ ����̱⵵ �մϴ�.</li>
								<li>������ǥó����!</li>
								<li>�������ڴ� �������� �����ڴ� ����� �Ƿ��� ���ٵ��� �� �ִ� �� ������ �����ϼ���.</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>���� �����ϸ� �������?</h5>
							<ul class="ul_dot_gray">
								<li>���������̸鼭 ��ǻ�Ϳ� ��̰� �־� ������ ��ġ�ô� ��</li>
								<li>������ �ٲ� ��� ���α׷��� ���迡 ǫ ������ �Ͻô� ��</li>
								<li>���������� ��Ȯ�ϰ� �ٽ� C�� �˾ư��� ���׷��̵� �Ͻ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap ">
							<h5>Ŀ��ŧ��</h5>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>�������̶� �츮�� ������ ���α׷��� ��ǻ�Ͱ� �˾Ƶ赵�� �������ִ� ������ ���ϴ� ���Դϴ�.</li>
									<li>�����Ϸ��� �߸��� �ڵ峪 ������ ���Ͽ� ������ �ݴϴ�</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">��������</th>
										<th scope="col">������ǥ</th>
										<th scope="col">�������� �� �ǽ�����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1����</th>
										<td>C����� ���ؿ� ��������</td>
										<td>�����Ϸ��� ���, 10����,2����,16������ ����, �⺻�����, ������</td>
									</tr>
									<tr>
										<th scope="row">2����</th>
										<td>����,�ݺ�,�б⸦ ���Ͽ� ���α׷��� �����帧�� �н��Ѵ�.</td>
										<td>���ǹ�, �ݺ���, �б⹮</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>��� ���α׷��� ���� ��� �þ �޸𸮵��� ���ϰ� ó���մϴ�.</li>
									<li>��� ����� ������ C�� ��� �޸𸮵��� ó���ұ��?</li>
									<li>������̰� �׷��� �ۿ� ���� ������ �����մϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">��������</th>
										<th scope="col">������ǥ</th>
										<th scope="col">�������� �� �ǽ�����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">3����</th>
										<td>���ϴ� ����(����,����,���ڿ�)�� �پ��� ������� �����Ͽ� ó���ϴ� ����� �н��Ѵ�.</td>
										<td>�ּҿ�����, 1���� �迭, ���ڿ�</td>
									</tr>
									<tr>
										<th scope="row">4����</th>
										<td>1�������� ��ȭ�� 2�����迭�� �ڼ��� �н��Ͽ� 3�����迭�� ���� �����Ѵ�.</td>
										<td>2���� �迭, 3���� �迭, ����������</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>������ ���е����� ���� ��Ű�� �� ������!</li>
									<li>������ ���е����� ���ǽ� ������ ���ĳ� ������!</li>
									<li>���� �� �����Ͱ� ��Ʊ⸸ �ұ��?</li>
									<li>���п��� ���������� �ʾҴ� �ڼ��� �������� ó�������� ��Ȯ�ϰ� �����ϴٺ���</li>
									<li>�������� ���ǽ� ������ ���� ���� ���� �� �Դϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">��������</th>
										<th scope="col">������ǥ</th>
										<th scope="col">�������� �� �ǽ�����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">5����</th>
										<td>�޸� ó���� ������ �����͸� �����ϰ� �н��մϴ�.</td>
										<td>����������, ����������, ������ ����</td>
									</tr>
									<tr>
										<th scope="row">6����</th>
										<td>C����� �ٽɷ��� ���ϴ� �Լ�! �Լ����� �޸������� �Ϻ��ϰ� �н��Ѵ�.</td>
										<td>�迭������, �����͹迭, �Լ��� ������ó��</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>�ռ� ��� �����Ͱ� ����� ���صǾ��ٸ� 7,8������ �ſ� ���� �н� �� �� �ֽ��ϴ�.</li>
									<li>�����Ͱ� ��� ���� ��� ������� ����Ǿ� ���̴��� �ñ��մϴ�.</li>
									<li>�������� �ñ����� ���ݾ� Ǯ�� �� ���Դϴ�.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">��������</th>
										<th scope="col">������ǥ</th>
										<th scope="col">�������� �� �ǽ�����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">7����</th>
										<td>
											<ul class="ul_dot_gray">
												<li>�ٸ� ������ �����Ϳ� ó�������� �����ϰ� �н��Ѵ�.</li>
												<li>������ ���� �Ͼ�� �������� ���� �� �н��Ѵ�.</li>
											</ul>
										</td>
										<td>�Լ�������, ����������, typedef, ���丮��Ŭ����</td>
									</tr>
									<tr>
										<th scope="row">8����</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>�������� ����� �ִ� �޸��� �н��� ó��.</li>
												<li>�ڷᱸ���� �ٰ��� �Ǵ� ����ü ������ ���ؿ� �ǽ�.</li>
												<li>ū ���α׷��� ���� ���� ������� �н��Ѵ�.</li>
											</ul>
										</td>
										<td>�����Ҵ�, ����ü, ���������</td>
									</tr>
								</tbody>
							</table>
							
							<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
							<!--<p class="mar_t10"><span class="fb">����</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<p class="mar_t10"><span class="fb">����</span> : 02.3486.1421 &nbsp;(kimyj0723@bit.kr)</p>
						</div>
						<!-- con_wrap -->

						
						<!-- �ڰ������� �Ұ� -->
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /�ڰ������� �Ұ� -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C_Weekend" class="btn mid green1">�����ϱ�</a>
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