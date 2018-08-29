<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
strCourseID = "DSci_ExcelMLearn"
%>

<%
dim strDate
strDate="(����)"

strSubject="�ﰢ Ȱ���ϴ� Excel�� ����� ������ ���̾� �Թ�"

indexDepth3=2
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
						
			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// Data Science
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");							// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(3).addClass("on");  		// �ﰢ Ȱ���ϴ� Excel�� ����� ������ ���̾� �Թ� ON
		});
	</script>
	<script language="javascript">
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Data Science
						</p>
						<h4><%=strSubject%></h4>
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
											<th>�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_ExcelMLearn.inc" -->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_ExcelMLearn.inc" -->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>250,000��</td>
											<th>����������</th>
											<td>��ȯ�ް���</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>20��</td>
											<th>����</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table> 
								<!--
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=strCourseID%>" class="btn mid green1" title="������û" style="float:right; margin:5px 0;">������û</a>
								<div style="clear;both; height:10px;"></div>
								-->
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=strCourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
							
						</div>
						<!-- //con_wrap1709 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>��������</h5>
							<p>
								������ �м��� �ӽŷ����� �Թ� �����̸� �ڵ� ������ ���� �ʺ��ڸ� ���� ���������Դϴ�. �ٸ� ��� �������� ���� �� ���� ��â���� �������� �̷���� ���� �����Դϴ�. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>����Ư¡</h5>
							<p>
								<b>���ڵ��� �ʿ� �����ϴ�.��</b><br/><br/>
								��ο��� ģ����Excel�� ���ʷ� �Ͽ� �ڵ��� �ʿ� �����ϴ�. R, ���̽�� ���� ���α׷��� �� ��� �ʿ䰡 �����ϴ�.  <br/><br/>
								<b>���÷����� Ȱ�롱</b><br/><br/>
								�÷������� ����Ͽ� Excel�� �Ǹ��� �ӽŷ��� ���� Ȱ���� �� �ֽ��ϴ�. <br/>
								1�� 1���̼��� �߰������� ����(93,500�� ���).<br/>
								<img src="Images/img_PrimaXL.png" style="width:130px;"/><br/><br/>
								<b>���ǿ뼺 �߽á�</b><br/><br/>
								�ǿ뼺�� �߽��ϸ� �⺻ ���信 ����� ���������Դϴ�.<br/><br/>
								<b>������ ������ �߰��ϴ� ���� �� �ذ� ����� ã�� �ͺ��� �߿��մϴ�!��</b><br/><br/>
								�׻� ����?�� �Ǵ� �����?����� ������ ������ ����԰� ������ �Բ� ����ְ� �ǹ��ִ� ������ ã�ư��ϴ�.<br/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<p><img src="Images/Course_DSCIENCE_Roadmap.jpg" style="width:100%;"/></p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<p>
								 - ������ �м��� �ӽŷ����� ���� ������ �����غ��� ������ ��<br/>
								 - ���ο� ���α׷��� �� ���µ� �ð��� ������ ������ ��<br/>
								 - ��°� ����� ���� ��� �ְ��� ȿ���� ���Ͻô� ��
							</p>
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
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:9.33%">
										<col style="width:9.33%">
										<col style="width:9.33%">
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
										<td></td>
										<td></td>
										<td>5/14</td>
										<td></td>
										<td></td>
										<td></td>
										<td>9/17</td>
										<td></td>
										<td></td>
										<td>12/17</td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:85%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">����</th>
											<th scope="col" class="c">���α�������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row" class="darker c" rowspan="3">1���� (3H)</td>
											<td>
												������ �м��� �ӽŷ��� ����.<br/>���� ���� ���. �����͸� ���� ��ġ ����.
											</td>
										</tr>
										<tr>
											<td>
												��� ���. ����� �߷�. ��������.
											</td>
										</tr>
										<tr>
											<td>
												�ð�ȭ�� ����. �ð�ȭ�� ���� ���丮 �ڸ�.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">2���� (3H)</td>
											<td>
												�ӽŷ����� ������ ���� �̷�.<br/>����ȸ�� �м��� ����.
											</td>
										</tr>
										<tr>
											<td>
												����ȸ�� ������ ����ȭ.<br/>�ڵ��� ���� �м� �ǽ�.
											</td>
										</tr>
										<tr>
											<td>
												�л�м�. ������ Ȱ��.<br/>������ ��������.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">3���� (3H)</td>
											<td>
												k-means Ŭ������ �м�.<br/>���� ���� �����͸� ����� ��Ʈ������ ����� �ǽ�.
											</td>
										</tr>
										<tr>
											<td>
												��Ʈ��ũ �м�.<br/>�ײ� �����͸� ����� �ǽ�.
											</td>
										</tr>
										<tr>
											<td>
												�ð迭 �м��� �ùķ��̼��� ���� ����.<br/>�ֽ� �����͸� ����� ���� �ְ� ���� ���� �ǽ�.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">4���� (3H)</td>
											<td>
												������ƽ ȸ���� ����.
											</td>
										</tr>
										<tr>
											<td>
												�¶��� ���θ� �� ������ ����� ������ ���� �ǽ�.<br/>Ÿ��Ÿ��ȣ ������ ������ �м� �ǽ�.<br/>���� ���� �����͸� ����� ��� ���� �м� �ǽ�.
											</td>
										</tr>
										<tr>
											<td>
												�з� �˰����� Ȱ��.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">5���� (3H)</td>
											<td>
												�ּ��� �м��� ����. ����� ��ҿ� ���� ������ ���� �ǽ�. <br/>Ŭ�������� ���� �ð�ȭ�� ������ �ǽ�.
											</td>
										</tr>
										<tr>
											<td>
												�ΰ��Ű���� ������ ���� �ǽ�.
											</td>
										</tr>
										<tr>
											<td>
												���� ����
											</td>
										</tr>
									</tbody>
								</table>
								<!--<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������� ����</h5>
							<p>
								<b>- "Ŭ������ �м��� �����̰� �� �ϳ���?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_01.png" style="margin-left:10%; width:60%;"/><br/>
								<b>- "�ּ��� �м��� ��� Ȱ���� �� �ֳ���?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_02.png" style="margin-left:10%; width:60%;"/><br/>
								<b>- "����ȸ�� ����� ��� �ؼ��ϳ���?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_03.png" style="margin-left:10%; width:60%;"/><br/>
								<b>- "�ΰ��Ű���� ���ؼ� �˷��ּ���"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_04.png" style="margin-left:10%;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ȹ�ǵ�</h5>
							<p>
								������ ���� ���, �׸��� �ְ��� ȿ���� ��ǥ�� �ϸ� �Ϲ��ε� ���� ������ �� �ִ� ������ �м��� �ӽŷ��� �������� �Դϴ�. 
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
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