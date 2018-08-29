<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "Spring_core"
SubjectName = "Spring Framework ����"
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
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");								// Java
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");						// Java SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no3 .newdepth2").eq(1).addClass("on");  	// Sprint Framework ���� ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Java
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__Spring_core.inc" -->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__Spring_core.inc" -->
												<!--
												09:00 ~ 18:00 (1�� 8�ð� / �� ~ ��)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>700,000�� </td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>�����ӿ�ũ�� ���� �������� ����, ���� ���Ǵ� �����ӿ�ũ�� ����ٸ� �翬 Spring�̴�. �������� �������� ǥ�� �����ӿ�ũ�� �ٽ� �����ӿ�ũ�̱⵵ �ϴ�. �̷��� �������� ������ ���ɸ�ŭ ������ ������ ������ �ִ�. ���߿� �ǸŵǴ� ������ å�߿����� 2000�������� �Ѵ� ��쵵 �ִ�. 2000�������� �Ѵ� ���������� �ұ��ϰ�, �������� ���Ǵ� ��� ������ ����Ǿ� �ִ� ���� �ƴϴ�. �� ���������� �������� �̹� ����ϰ� �ְų�, ����ϰ��� �ϴ� �е��� ������� �Ͽ� �������� ���ۿ����� �������� ����ϱ� ���� ��޳������ �ٷ��. �ܼ��� �������� ��ɸ��� �����ϴ� ���� �ƴ϶�, �������� �ٽ� ��ɵ��� ������ �Բ� �н��ϰ� �ǽ������ν� �������� �������� �ٷ� ������ �� �ֵ��� �ȳ��Ѵ�.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
								<li>SQL &amp; JDBC<a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
								<li>Servlet &amp; JSP<a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
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
										<td>3/12</td>
										<td></td>
										<td></td>
										<td></td>
										<td>7/2</td>
										<td></td>
										<td></td>
										<td></td>
										<td>11/5</td>
										<td></td>
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
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:50%">
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
											<td scope="row" rowspan="2">�⺻</td>
											<td>�������� ����� DI</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Framework ���� �� Ư¡</li>
													<li>Spring Framework ����</li>
													<li>Spring Framework �� ������ ����</li>
													<li>DI (Dependency Injection)</li>
													<li>���� ������ ����Ŭ</li>
													<li>������̼� ��� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>AOP</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>AOP(Aspect Oriented Programming) ����</li>
													<li>Spring AOP ���� ����</li>
													<li>��Ű�� ����� AOP ����</li>
													<li>������̼� ����� AOP ����</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>��ȭ</td>
											<td>������ ����� �����߰� �����ͺ��̽�</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�� ���� ��</li>
													<li>������ MVC ����</li>
													<li>������ MVC ����</li>
													<li>������̼� ��� ����</li>
													<li>������ AJAX�� ����</li>
													<li>������ AJAX ����</li>
													<li>MyBatis �����ӿ�ũ ����</li>
													<li>SqlSession API</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>Ȱ��</td>
											<td>Ʈ������ ������ ����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�������� MyBatis ����</li>
													<li>������ Ʈ������ ����</li>
													<li>������ Ʈ������ ����</li>
													<li>������ ������ ����</li>
													<li>������ ���� ����</li>
													<li>������ ���� ����</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr) </p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=Spring_core" class="btn mid green1">�����ϱ�</a>
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