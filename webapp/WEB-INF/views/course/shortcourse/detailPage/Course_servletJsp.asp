<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "SER_JSP_core"
SubjectName = "Servlet & JSP ���α׷���"
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
			$(".snb_1709 .newdepth2_wrap.no3 .newdepth2").eq(0).addClass("on");  	// Servlet & JSP ���α׷��� ON
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__SER_JSP_core.inc" -->
												<!--
												<ul class="ul_dot_gray">
													<li>����</li>
												</ul>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__SER_JSP_core.inc" -->
												<!--19:00 ~ 22:00 (1�� 3�ð�)-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>390,000�� <!--<span class="greenTxt"> ���ϸ��� 5%���� (30,000��)</span>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� �Ұ�</h5>
							<!--<p>Servlet�� JSP ����� ���� ����� Ȱ�� ����� �н��ϴ� �����Դϴ�. Servlet�� JSP ����� ���� źź�� �̷� ������ �����ϰ�, Servlet�� JSP�� ����, �׽�Ʈ ȯ�� �������� �ľ��մϴ�. JSP �±׿� ���� ��ü �׸��� JavaBeans Ȱ�� ����� �����ϰ�,Servlet�� JSP�� Ȱ���� Web ���� ���� ���α׷� ������ ������ ���� ������ �ľ��ϸ�, �̷� ������ �ǽ� ������ �����Ͽ� ������ �������� �پ��� ȯ�漳�� ����� �����ϴ�.</p>-->
							<p>TCP/IP ����� Internet�� �����ϰ� ���� ������ HTTP �������� �� �� ������ �������� ���ظ� �������� �ڹ� �����α׷����� �ٽ��� Servlet ���α׷����� ���� �����Դϴ�. Ư��, MVC ���Ͽ� ���� ���ظ� �������� �̸� ������  �� ���ø����̼��� �ۼ� ����� ���� �˴ϴ�.  JSP�ۼ��� ���� JSTL/EL ���� �����ͺ��̽� ���α׷����� ���� JDBC�� ���� �˴ϴ�. Servlet�� ������� �� J2EE�� �����ϰ� �Ǹ� Servlet�� �����ϴ� WAS(tomcat)�� �۵������� ���� ���� �Բ� �н��մϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ǥ</h5>
							<ul class="ul_dot_gray">
								<li>Network�� ���� �������� ������ �����ϰ� Ư��, TCP/IP ����� Internet �׸��� HTTP�� ���� ����</li>
								<li>Servlet�� ���� ����</li>
								<li>Model1 �׸��� Model2(MVC) �� ���ø����̼� �ۼ� �� ������ ����</li>
								<li>JDBC ���α׷��ְ� �� ���ø����̼ǿ� ���� ��� ����</li>
								<li>WAS(Tomcat)�� ���� ���� �� ���� ��� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>Java ���ʸ� �̹� �н��ϰ� �� ������ �� ������ ���� �����ϰ� ���� ������</li>
								<li>Java �� ���α׷��ְ� J2EE(Enterprise Application ����)�� ������ �ִ� ������</li>
								<li>JDBC ���α׷����� ���� ���� ������</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<p>Java �Թ�(Java ��ü�������α׷���) ���� <a href='/Course/ShortCourse/DetailPage/Course_Java.asp' class='mar_l10 btnBlueBorder small' target="_blank">�ڼ��� ����</a></p>
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
										<td>2/19</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>8/16</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 last">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:40%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">�� ���α׷��ֿ� ���� ����</td>
											<td>
												<ul><li>���ͳ�(��Ʈ��ũ)�� ���� ����</li>
												<li>HTTP ��������</li>
												<li>�� ���α׷��ְ� �� ���ø����̼ǿ� ���� ����</li>
												<li>J2EE ����ȯ�� ����</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Servlet & JSP ����</td>
											<td>
												<ul><li>Servlet �� ���� ����</li>
												<li>Servlet �ۼ� ���</li>
												<li>Request �� Response</li>
												<li>web.xml �ڼ��� �˾ƺ���</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">JDBC ���α׷���</td>
											<td>
												<ul><li>JDBC�� ����</li>
												<li>JDBC ����̹���?</li>
												<li>JDBC ����� ����</li>
												<li>Connection, Statement, ResultSet</li>
												<li>DAO ������ ���ؿ� �ۼ�</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">JSP ���α׷���</td>
											<td>
												<ul><li>JSP �ۼ����</li>
												<li>JSP ���� ��ü ����ϱ�</li>
												<li>JSP �±�</li>
												<li>Servlet ��ȯ �����ϱ�</li>
												<li>JSTL & EL</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Servlet ���α׷���</td>
											<td>
												<ul><li>MVC �� ����</li>
												<li>Redirect �� Forwarding</li>
												<li>Serlvet Mapping</li>
												<li>Servlet �����ֱ�</li>
												<li>Bean Scope ����</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Session ó��</td>
											<td>
												<ul><li>Cookie �� Session</li>
												<li>�α��ΰ� �α׾ƿ�</li></ul>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=SER_JSP_core" class="btn mid green1">�����ϱ�</a>
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