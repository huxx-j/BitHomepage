<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
strCourseID = "DSci_AnalysisMLearn2"
%>

<%
dim strDate
strDate="2017.11.06 ~ 2017.11.14 (��~��)"

strSubject="R�� ����� ������ �м��� �ӽŷ��� (�߱�)"

indexDepth3 = 1
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
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(1).addClass("on");  	// R�� ����� ������ �м��� �ӽŷ��� (�߱�) ON
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
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:15%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_AnalysisMLearn2.inc" -->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_AnalysisMLearn2.inc" -->
												<!--7�� 21�ð�(1�� 3�ð�)<br/>19:00 ~ 22:00-->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>600,000��</td>
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
							<h5>�����Ұ�</h5>
							<p>
								���� �ӽŷ��� �� ������ �м��� �ٽ� ����� ���� �߱� ������ ��ǥ�� �մϴ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>���� Ư¡</h5>
							<p>
								<b>�������� �м��� �ӽŷ����� ��ü���� ���� ���桱</b><br/><br/>
								������ �м��� �ӽŷ��׿� ü�������� �����Ͽ� ��ü���� ���� ������ ��ǥ�� �մϴ�. Ư�� �̷а� �ǽ��� ������ ���鼭 �н� ���뿡 ���� �ڽŰ��� �������� ���� ���ϴ�. <br/><br/>
								<b>����Ʈķ���� �߱� ������</b><br/><br/>
								�ؿ� ���� ��Ʈķ�� ������ ��ġ��ŷ�Ͽ� ª�� �ð����� ���� ���� �н����� ưư�� ���ʸ� �����ϴ�.  ������ �������μ��� ������ �ε������ ������ �帳�ϴ�.<br/><br/>
								<b>������ ������ �߰��ϴ� ���� �� �ذ� ����� ã�� �ͺ��� �߿��մϴ�.��</b><br/><br/>
								�׻� ����?�� �Ǵ� �����?����� ������ ������ ����԰� ������ �Բ� ����ְ� �ǹ��ִ� ������ ã�ư��ϴ�.<br/><br/>
								<b>�������� �м��� ���丮 �ڸ��Դϴ�!��</b><br/><br/>
								�����Ϳ��� ����ִ� ���丮�� �߰��ϰ� �̰��� ���������� Ȱ���� �� �����͸� ���� ���ο� ��ġ�� â��˴ϴ�. ��� 21������ �ְ� ���丮 �ڷ��� �Ǿ� ���ʽÿ�!<br/><br/>
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
								- 	���� �ּ� �Ѱ��� �̻��� ���α׷��� �� ������ �� ���� ������ ��. ���� ���ڸ� for������ �������� if ~ then�� �� �ʿ����� �˰� �Ǽ��� ���� �ڷ����� ���̸� �ƽô� ��.  <br/>
								- 	��� ��� �� ���, ǥ������, ���Ժ����� �������� �ƽô� ��.<br/>
								- 	Excel�� ���� ���α׷��� ����ؼ� ������, ������׷� �� �������� �ð�ȭ�� ������ �� ������ �ִ� ��.<br/>
								- 	�������� ������ Ȱ�� ����� ���ؼ� �������� ����� �Ͻð� ������ ��<br/>
								- 	IT �о� ����غ� ���ؼ� ª�� �ð� �ȿ� ������ �м��� ���� �ɷ��� ����ϰ��� �Ͻô� ��. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<p>
								R�� Ȱ���� ������ �м��� �ӽŷ���(�ʱ�)
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
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
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
										<td>3/19</td>
										<td></td>
										<td></td>
										<td></td>
										<td>7/2</td>
										<td></td>
										<td></td>
										<td>10/12</td>
										<td></td>
										<td></td>
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
											<th scope="col" class="c">��������</th>
											<th scope="col" class="c">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row" class="darker c">1��</td>
											<td>
												<b>�ӽŷ��� ����</b><br/>
												- �ӽŷ����� ������ ����<br/>
												- ������ ������ ���� (���̺� ������ �з���)<br/>
												- R�� RStudio. �ӽŷ����� ���� ��Ű�� �Ұ�<br/>
												- R ���α׷��� ��� ����<br/>
												- ���� �ǽ� &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2��</td>
											<td>
												<b>���, ������ ����, �ð�ȭ ��ȭ</b><br/>
												- ��� ���, ����� �߷�, ���� ����<br/>
												- �ǿ� �������� ���캸�� ����� ����<br/>
												- plyr, dplyr, tidyr ��Ű�� ����� ������ ������ ��� ����<br/>
												- ggplot2, ggthemes ��Ű�� ����� �ð�ȭ<br/>
												- ���� �ǽ� &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3��</td>
											<td>
												<b>������ �ӽŷ���I</b><br/>
												- �ӽŷ����� ���� ����ȸ�� ��ȭ<br/>
												- ����ȸ�� ������ ����ȭ. �������� �л�м�(ANOVA)<br/>
												- ������ �������� �м�<br/>
												- Ridgeȸ��, Lassoȸ��, ����ȸ��<br/>
												- ���� �ǽ� &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4��</td>
											<td>
												<b>������ �ӽŷ���II</b><br/>
												- �з���, �ӽŷ����� ���� ������ƽ ȸ��<br/>
												- ROC�, ȥ�����, �����м�, �ΰ����� Ư�̵� Ȱ��<br/>
												- ���� �ǽ� &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">5��</td>
											<td>
												<b>������ �ӽŷ���III</b><br/>
												- Caret ��Ű���� ����� �ӽŷ���<br/>
												- �н��� �׽�Ʈ. Cross validation. ������ ��ó��.<br/>
												- �з� �˰��� (SVM, KNN, Tree, Random Forest)�� ������ ���� ���. <br/>
												- ����-�л� Ʈ���̵���� (bias-variance tradeoff).<br/>
												- ���� �ǽ� &amp; Mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">6��</td>
											<td>
												<b>�������� �ӽŷ���</b><br/>
												- Ŭ������ �м� (k-means, DBSCAN, Hierarchical)�� ������ ��<br/>
												- �ּ��� �м��� ����<br/>
												- ����� ��ҿ� ������ ������ ������ �ǽ� (�̹��� ������ ���).<br/>
												- Ŭ�������� ���� �ð�ȭ.<br/>
												- ���� �ǽ� &amp; Mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">7��</td>
											<td>
												<b>�ð迭, �ؽ�Ʈ ���̴�, ������</b><br/>
												- �ð迭 �м��� �ùķ��̼��� ���� ����(�ֽ� ���� ���� ���� �ǽ�)<br/>
												- �ؽ�Ʈ ���̴��� ������ ����. ����ǥ����, TM ��Ű�� Ȱ��<br/>
												- ���� �ǽ� &amp; Mini-Project<br/>
												- ������ ������ �ε��<br/>
												- ���� ����
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
								<b>"SVM, KNN, ���� ������Ʈ�� ���� �����н��� ���� �����ϴ� ����� �˷��ּ���. �׸��� ��ó���� ��� �ϳ���?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig3_01.png" style="margin-left:20%;"/><br/>
								<b>"Tree �з��� �˰����� ������ �˷��ּ���."</b><br/>
								<img src="Images/Course_DSCIENCE_fig3_02.png" style="margin-left:20%;"/><br/>
								<b>"������ Ŭ�����͸�, k-means, DBSCAN ��� ���� �����м� ����� ������� ���� �ּ���."</b><br/>
								<img src="Images/Course_DSCIENCE_fig3_03.png" style="margin-left:20%;"/><br/>
								<b>"�ſ�ҷ� ����, �� ���ܰ� ���� �幰�� �߻������� ����Ʈ�� ū �̺�Ʈ�� �����ϰ� ������ �����ϴ� ����� �˷��ּ���."</b><br/>
								<img src="Images/Course_DSCIENCE_fig3_04.png" style="margin-left:20%;"/><br/>
								<img src="Images/Course_DSCIENCE_fig3_05.png" style="margin-left:20%;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ȹ�ǵ�</h5>
							<p>
								���� ������ �м��� �ð����� �ο��̶�� �մϴ�. �׸��� �ټ��� �ǹ� �����ʹ� �ſ� �ҿ��� �ϸ� ����ġ, ���� ���� ���� ���ԵǾ� �ֽ��ϴ�. �׷��Ƿ� ������ �м����� ������ ���� ������ �ð� ���� ������ ����� ��� ���� ������ ��찡 �����ϴ�. �ֽ�, �ְ��� �ӽŷ��� �˰����� �����ϴ� �� ���� �����͸� �� �����ϰ� ���� �ð�ȭ�� ���� Ž���� �м����� ������ ���ظ� ���ϴ� ���� �ſ� �߿��մϴ�.  ū �׸��� �������� �ϴ� ����� ���ٹ� (top down approach)�� �߿������� �Ҽ��� �����Ͽ��� ���� �����ϴ� ����� ���ٹ� (bottom up approach) ���� �߿��մϴ�. ������� ���� ������ �м����� ���� ����ġ�� ������� �ϳ��� �������� Ǯ����� �ǹ��ִ� ����� ����� ���� ���μ��� ������ �ʿ伺�� ������ �� �̹� ���Ǹ� ��ȹ�ϰ� �Ǿ����ϴ�.
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