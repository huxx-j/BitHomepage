<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "JavaScript"
SubjectName = "�������ڸ� ���� JavaScript & Ajax"
%>

<%
	dim strDate
	strDate = "2017.07.10 ~ 2017.07.27 (��~��) (12�� / �� 36�ð�)"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(2).addClass("on");  	// �������ڸ� ���� JavaScript & Ajax ON

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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>JavaScript
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
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JavaScript.inc" -->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JavaScript.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>390,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (25,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������� ����</h5>
							<p>
								�ֱ� ���� �̽��� �ǰ� �ִ� �پ��� ��Ƽ ����̽����� ���۵� �� �ִ� Web Application ���߿� �־� �� �ʿ��� ������� ���� �մϴ�.<br/>
								HTML5���� �����ϴ� �پ��� API�� �̿��ϱ� ���� �ʿ��� ���α׷� ����� ���� �� �ֽ��ϴ�.<br/>
								����Ͽ��� ���� ������ Mobile Web�� ����� ���� �⺻ ����� ���� �� �ֽ��ϴ�.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������� �� ��������</h5>
							<ul class="ul_dot_gray">
								<li>���α׷��� ���� �⺻ ������ ������ �ִ� ������ �� �� �ý��� ���</li>
								<li>�� ���ø����̼ǿ� ���� �⺻ ������ ������ �ִ� ������ �� �� �ý��� ���</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�� ���������� ���ؼ�</h5>
							<ul class="ul_dot_gray">
								<li>W3C���� ��ǥ�� �� ǥ�ؿ� �ٰ��� �� ���ø����̼��� ���� �� �� �ֽ��ϴ�.</li>
								<li>�� ������ ���� �پ��� ���������� ���� ���� �� ũ�ν�����¡�� ������ �� ���ø����̼��� ���� �� �� �ֽ��ϴ�.</li>
								<li>�� ������ ���� ������ �� ���ø����̼� �� ������ ����� �� ���� ���� �� �� �ֽ��ϴ�.</li>
								<li>AJAX�� �̿��� �񵿱� ��� ����� �� ���ø����̼��� ���� �� �� �ֽ��ϴ�.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<div class="con_wrap1709 dnone">
							<h5>������</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<colgroup>
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
									</colgroup>
									<tr>
										<th>1��</th>
										<th>2��</th>
										<th>3��</th>
										<th>4��</th>
										<th>5��</th>
										<th>6��</th>
										<th>7��</th>
										<th>8��</th>
										<th>9��</th>
										<th>10��</th>
										<th>11��</th>
										<th>12��</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td>5/9</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>12/3</td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
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
											<td class="darker c" scope="row" rowspan="2">HTML5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>HTML5�� �ֿ� Ư¡</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>HTML5�� �ֿ� API</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="2">JavaScript</td>
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
											<td class="darker c" scope="row" rowspan="2">jQuery</td>
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
											<td class="darker c" scope="row" rowspan="2">jQuery Mobile</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>jQuery Mobile ���� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>jQuery Mobile�� �̿��� Mobile Web ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">AJAX</td>
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
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr)</p>
								-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JavaScript" class="btn mid green1">�����ϱ�</a>
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