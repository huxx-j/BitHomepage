<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
strCourseID = "DSci_PracticalMLearn1"
%>

<%
dim strDate
strDate="2017.12.12 ~ 2017.12.21 (ȭ,��)"

'// ������ ���� (2018-03-08) �ǿ� �ӽŷ��� 
strSubject = "Python�� Ȱ���� �ǿ�ӽŷ��� - �ʱ�"
'//strSubject="�ǿ� �ӽŷ��� �ʱ� - Python"

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
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(2).addClass("on");  	// Python�� Ȱ���� �ǿ�ӽŷ���-�ʱ� ON
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
											<td><!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_PracticalMLearn1.inc" --></td>
											<th>���ǽð�</th>
											<td><!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_PracticalMLearn1.inc" --></td>
										</tr>
										<tr>
											<th>�������</th>
											<td>360,000�� (����:400,000��)</td>
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

<img src="Images/DetailPage_Course_DSCIENCE_PracticalMachineLearningPython_3.png" class="mar_l10"/> <!-- style="width:720px;"/>-->

<div class="dnone">						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>�����Ұ�</h5>
							<p>
								�ӽŷ����� ó�� ���Ͻô� �е��� ���ؼ� ���ʺ��� �������� ��� ������ �������� �Դϴ�. ª�� �ð� �ȿ� �ӽŷ����� ������ Ȱ�� ����� ���ʸ� ��� �� �ֵ��� ��ȹ�Ͽ����ϴ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>����Ư¡</h5>
							<p>
								<b>���ӽŷ����� ���� �Թ���</b><br/><br/>
								�ð��� ���� ���� �����ڸ� ���ؼ� �������� ���� ����ϰ� ����Ʈ�� �������� �ӽŷ����� ������ �˾ư��ϴ�.  ���� �ǽ��� ���ؼ� �������� ���ص��� ���� ���ϴ�. <br/><br/>
								<b>���پ��� Python ��Ű�� Ȱ�롱</b><br/><br/>
								�������� ��߸��� �ʿ䰡 ���١���� �ݾ��� �ֵ��� Python�� �����ϴ� ��Ű���� Ȱ���Ͽ� �ּ��� �ڵ����� �ְ��� ȿ���� ��� ����� �˾ƺ��ϴ�. <br/><br/>
								<b>����Ʈķ�� �ʱް�����</b><br/><br/>
								�ؿ� ���� ��Ʈķ�� ������ ��ġ��ŷ�Ͽ� ª�� �ð����� ���� ���� �н����� ưư�� ���ʸ� �����ϴ�.  �ӽŷ��� �������μ��� ������ �ε������ ������ �帳�ϴ�.<br/><br/>
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
								- 	���̽�� �ӽŷ��� �� ������ �䳢�� �ѹ��� ����� �Ͻô� �е�.<br/>
								- 	ȥ�ڼ� �ӽŷ��� ���������� �а� ������ �������� �Ѱ踦 �����ô� �е�.<br/>
								- 	���� �ӽŷ����� ��� Ȱ���� �� �ִ��� ��ü���� �ʿ伺�� �����ô� �е�.
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
										<td></td>
										<td>4/23</td>
										<td></td>
										<td></td>
										<td></td>
										<td>8/20</td>
										<td></td>
										<td></td>
										<td>11/5</td>
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
											<td scope="row" class="darker c">1����</td>
											<td>
												�ӽŷ��� ����� ��������<br/>
												�ӽŷ��� Ȱ���� �Ұ�<br/>
												Python ��� ����<br/>
												Jupyter ��Ʈ�� ��� ����<br/>
												���� �ǽ��� mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2����</td>
											<td>
												Python�� ��Ű�� Numpy, Pandas, Scipy, Matplotlib Ȱ���� ������ ������ �ð�ȭ<br/>
												Python�� �ӽŷ��� ��Ű�� scikit-learn �Ұ�<br/>
												Scikit-learn ��Ű���� Ȱ���� ������ ��ó���� �������� ����<br/>
												���� �ǽ��� mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3����</td>
											<td>
												�з��� �ӽŷ����� ���� ������ƽ ȸ���� ����<br/>
												ROC�. ȥ�����. �����м�. �ΰ����� Ư�̵� Ȱ��<br/>
												���� �ǽ��� mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4����</td>
											<td>
												KNN (k-�������̿�) �˰��� ����<br/>
												����-�л� Ʈ���̵���� (bias-variance tradeoff)<br/>
												����������Ʈ �˰��� ����<br/>
												�׸��� ��ġ (grid search), ���� ��ġ (random search), ����ȭ<br/>
												���� �ǽ��� mini-project<br/>
												������ �м��� �ӽŷ��� ���� �ε��<br/>
												��������
											</td>
										</tr>
<!--
										<tr>
											<td scope="row" class="darker c">1����</td>
											<td>
												������ ���̾� ����.<br/>
												������ �м��� ���� ���� �� ���� ����.<br/>
												R��RStudio ��ġ �� ȯ�� ����/����.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2����</td>
											<td>
												R ���α׷��� ���.<br/>
												���� ���α׷���1.<br/>
												���� ���α׷���2.								
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3����</td>
											<td>
												������ �ٷ�� �ǽ�1.<br/>
												������ �ٷ�� �ǽ�2.<br/>
												�ð�ȭ�� �����Ϳ� ���� ����:���÷�, �ڽ��÷�, ������, ������׷�.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4����</td>
											<td>
												�ð�ȭ�ǽ�.<br/>
												��� ��谪 ���ϱ�.<br/>
												����� �߷�. ���� ����.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">5����</td>
											<td>
												Ŭ������ �м� ����.<br/>
												ȸ�ͺм� ����.<br/>
												�ӽŷ��� �ǽ�1.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">6����</td>
											<td>
												�ӽŷ��� �ǽ�2.<br/>
												���� �ۼ�.<br/>
												���� ����
											</td>
										</tr>
-->
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
								<b>"Python �ʺ��Դϴ�. Jupyter��Ʈ�� ������ �˷��ּ���"</b><br/>
								<img src="Images/Course_DSCIENCE_fig2_01.png" style="margin-left:10%; width:80%;"/><br/>
								<b>"�����н� �˰����� ���� �����ϴ� ����� �˷��ּ���. �׸��� ��ó���� ��� �ϳ���?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig2_02.png" style="margin-left:10%; width:80%;"/><br/>
								<b>"����-�л� Ʈ���̵���� (bias-variance tradeoff)�� KNN �˰��򿡼� ��� ��Ÿ������ �˷��ּ���"</b><br/>
								<img src="Images/Course_DSCIENCE_fig2_03.png" style="margin-left:10%; width:80%;"/><br/>
								<b>"�ſ�ҷ� ����, �� ���ܰ� ���� �幰�� �߻������� ����Ʈ�� ū �̺�Ʈ�� �����ϰ� ������ �����ϴ� ����� �˷��ּ���"</b><br/>
								<img src="Images/Course_DSCIENCE_fig2_04.png" style="margin-left:10%;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ȹ�ǵ�</h5>
							<p>
								�ֱ� 4������� ������ �������� �߿伺�� ���� �е��� �̹� �����ϰ� �ֽ��ϴ�. ���� �ӽŷ���, AI�� ���� �������� �����ߴ� �� �̹� �̵� ���ؼ� �ϻ������� ���ϰ� �ֽ��ϴ�. ������ ��ټ��� �ӽŷ����� ���ΰ��� ����� ���� ������ �������θ� �ν��ϰ� �ִ� �͵� ����Դϴ�. ������ ������ Ȱ���� �� �ִ� �ǿ��� ��ġ�� �ӽŷ����� �ʿ伺�� �����Ͽ� ���� ���� ���� ����� ���̽�(Python)�� ��Ű���� Ȱ���� �����(���) ��ȿ���� �ʱ� ������ ��ȹ�ϰ� �Ǿ����ϴ�. 
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
</div>						
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