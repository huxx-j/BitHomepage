<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "OptimizationAlgorithms"
SubjectName = "����ȭ �˰����� ���� SW���� ���� ��ȭ"
%>

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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// SW Engineering
			$(".snb_1709 .newdepth2_wrap").eq(7).addClass("on");						// SW Engineering - OPEN
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(5).addClass("on");  	// ����ȭ �˰����� ���� SW���� ���� ��ȭ ON
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܱ��ٽɰ���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>SW Engineering
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__OptimizationAlgorithms.inc" -->
												<!--<li><del>2015.05.13 ~ 2015.05.22 (8�� / 24�ð�)</del></li>-->
												<!--<li>2015.08.10 ~ 2015.08.20 (8�� / 24�ð�)</li>-->
												<!--<li>2015.11.16 ~ 2015.11.26 (8�� / 24�ð�)</li>-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>19:00 ~ 22:00 (1�� 3�ð� / �� ~ ��)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__OptimizationAlgorithms.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td>350,000��</td>
											<th scope="row" class="tit">����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>20��</td>
											<th scope="row" class="tit">����</th>
											<td>02-3486-3456 (<a href="mailto:jhj426@bit.kr" class="email">jhj426@bit.kr</a>)</td>
										</tr>
										
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">����� �Ʒ� : �켱������� ������� 165,691�� | �ٿ�ó<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="https://pf.kakao.com/_SmhqV" title="īī���� ����û" style="float:right; margin:12px 5px;" class="btnApply">
									<img src="/Images/Btns/btn_Kakao.png"/>
								</a>
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

<img src="Images/DetailPage_Course_OptimizationAlgorithms.png" class="mar_l10"/>

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap dnone">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

<div class="dnone">						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>SW������ �ʿ��� ����ȭ �˰��� ������ ���Ͽ� ȿ������ ���α׷��� �ۼ��ϴµ� �ʿ��� ������ Ű���, SW���߿� ���� �����ذ� �ɷ��� ���</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>������������ �ڹٷ� �н��Ϸ��� ��</li>
								<li>������������ ���ӻ��� �ñ��Ͻ� ��</li>
								<li>�ڹٱ⺻�� �˰�������, ���ϰ� ���� ��������� �ʿ��Ͻ� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">��������</th>
											<th scope="col" class="c">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c">1����</td>
											<td>
												<b>Ʈ������</b>
												<ul class="ul_dot_gray">
													<li>PRIM�˰���</li>
													<li>Kruskal �˰���</li>
													<li>Dijkstra �˰���</li>
													<li>�ּҽ���Ʈ�� �ǽ�1,2</li>
													<li>�ִܰŸ� �ǽ� 1,2</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c">2����</td>
											<td>
												<b>������ȹ�� ����</b>
												<ul class="ul_dot_gray">
													<li>���丮��, �Ǻ���ġ, Ÿ�Ϻ��̱�</li>
													<li>������������, �ߺ������� ��</li>
													<li>����Ÿ�</li>
													<li>Ÿ�Ϻ��̱�, ������������, �ߺ������� �� �ǽ�</li>
													<li>����Ÿ� �ǽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c">3����</td>
											<td>
												<b>����� �ִ���</b>
												<ul class="ul_dot_gray">
													<li>���װ��</li>
													<li>�ߺ������� ��</li>
													<li>������� �κ� ����</li>
													<li>��ι���, ���װ��, �ߺ������� �� �ǽ�</li>
													<li>���� ���� �κ� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c">4����</td>
											<td>
												<b>�κ������� ��</b>
												<ul class="ul_dot_gray">
													<li>�������� ����</li>
													<li>��ĥ�ϱ�, �̵��ϱ�2</li>
													<li>�ּҵ���, �賶���α�</li>
													<li>�迭�� �κ���</li>
													<li>�������� ����, ��ĥ�ϱ�, �̵��ϱ�2, �迭�� �κ��� �ǽ�</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>

							</div>
						</div>
</div>						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=OD_core" class="btn mid green1">�����ϱ�</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>