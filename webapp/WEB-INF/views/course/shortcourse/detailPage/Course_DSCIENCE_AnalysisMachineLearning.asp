<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
strCourseID = "DSci_AnalysisMLearn1"
%>

<%
strSubject="R�� ����� ������ �м��� �ӽŷ��� (�ʱ�)"
'//strSubject="R�� ����� ������ �м��� �ӽŷ��� �ʱ�(������)"

indexDepth3=0
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
			//��Ư $(".snb_1709 a.newdepth1").eq(8).addClass("on");								// R�� ����� �����ͺм��� �ӽŷ��� �ʱ�(������) ON
			
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// Data Science
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(0).addClass("on");  	// R�� ����� ������ �м��� �ӽŷ��� (�ʱ�) ON
			
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
				<!-- # i n c lude virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܿ����Ư��
						</p>
						-->
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_AnalysisMLearn1.inc" -->
												<!--
												2018.1.8 ~ 2018.1.12 <span class='greenTxt'>(���Ĺ�)</span><br/>
												2018.1.29 ~ 2018.2.2 <span class='greenTxt'>(���Ĺ�)</span><br/>
												2018.2.19 ~ 2018.2.23 <span class='greenTxt'>(���Ĺ�)</span><br/>
												2017.12.11 ~ 2017.12.22 <span class='greenTxt'>(��,��,��/�����)</span>
												-->
											</td>
											<th>���ǽð�</th>
											<td class="spacing-2px">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_AnalysisMLearn1.inc" -->
												<!--
												���Ĺ� 14:00~18:00 (4�ð� / 5�� / ��18�ð�)<br/>
												����� 19:00~22:00 (3�ð� / 6�� / ��18�ð�)
												-->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>500,000��</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ��</td>
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
								<a href="https://pf.kakao.com/_SmhqV" title="īī���� ����û" style="float:right; margin:12px 5px;" class="btnApply">
									<img src="/Images/Btns/btn_Kakao.png"/>
								</a>
								
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
								�������� �ٽ��̶� �� �� �ִ� �����ͺм��� �ӽŷ����� ���ʺ��� ���ϴ�. Ư�� ��� ���α׷��� ��� R�� ����Ͽ� �����Ͱ���, �ð�ȭ, ���, �ӽŷ����� �����н��մϴ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, ȯ�޳��� �ڼ������� div�� z-index problem happens -->
							<h5>����Ư¡</h5>
							<p>
								<b>"���� ������ �߰��ϴ� ���� �� �ذ� ����� ã�� �ͺ��� �߿��մϴ�!��</b><br/><br/>
								�׻� "��?�� �Ǵ� "���?����� ������ ������ ����԰� ������ �Բ� ����ְ� �ǹ��ִ� ������ ã�ư��ϴ�. ������� �н��� ����� ��ǻ�Ϳ��� �ñ�� �������� Ȱ�� ����� �극�ν��� �غ��ϴ�. <br/><br/>
								<b>"�����ͺм��� ���丮�ڸ��Դϴ�!��</b><br/><br/>
								�����Ϳ��� ����ִ� ���丮�� �߰��ϰ� �̰��� ���������� Ȱ���� �� �����͸� ���� ���ο� ��ġ�� â��˴ϴ�. ��� 21������ �ְ� ���丮�ڷ��� �Ǿ� ���ʽÿ�!<br/><br/>
								<b>"�����ͺм��� �ӽŷ����� ü������ ���� ���桱</b><br/><br/>
								��������, �����Ͱ���, Ž�����м�, �ӽŷ��� �˰��� ����, ���� �ۼ��� ������ �����ͺм��� �ܰ躰�� ü�������� �����մϴ�. Ư�� �̷а� �ǽ��� �����ư��鼭 �н� ���뿡 ���� �ڽŰ��� �������� ���ذ��ϴ�. <br/><br/>
								<b>"��Ʈķ���� �ʱ� ������</b><br/><br/>
								�ؿ� ���� ��Ʈķ�� ������ ��ġ��ŷ�Ͽ� ª�� �ð����� ���� ���� �н����� ưư�� ���ʸ� �����ϴ�. �������������μ��� ������ �ε������ ������ �帳�ϴ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� �ε��</h5>
							<p><img src="Images/Course_DSCIENCE_Roadmap.jpg" style="width:100%;"/></p>
							<!--
							<div style="margin-left:80px;">
								<p class="pRoadmap">
									<span style="margin-left:270px;">�� </span>
									<a href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');" class="aRoadmap">R�� Ȱ���� ������ �м��� �ӽŷ��� (�߱�)</a><br/><br/>
									<a href="" class="aRoadmap">R�� Ȱ���� ������ �м��� �ӽŷ��� (�ʱ�)</a> <br/><br/>
									<span style="margin-left:270px;">�� </span>
									<a href="javascript:alert('�غ����Դϴ�. ����(02-3486-3456)');" class="aRoadmap">R�� ����� ��� �м��� �ǿ��� Ȱ��</a>
								</p>
							</div>
							-->
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<p>
								-	���� �ּ� �Ѱ��� �̻��� ���α׷��� �� ������ �� ���� ������ ��. ���� ���ڸ� for������ �������� if ~ then�� �� �ʿ����� �˰� �Ǽ��� ���� �ڷ����� ���̸� �ƽô� ��. <br/>
								-	��� ��� �� ���, ǥ������, ���Ժ����� �������� �ƽô� ��.<br/>
								-	Excel�� ���� ���α׷��� ����ؼ� ������, ������׷� �� �������� �ð�ȭ�� ������ �� ������ �ִ� ��.<br/>
								-	�������� ������ Ȱ�� ����� ���ؼ� �������� ����� �Ͻð� ������ ��<br/>
								-	IT �о� ����غ� ���ؼ� ª�� �ð� �ȿ� ������ �м��� ���� �ɷ��� ����ϰ��� �Ͻô� ��.  
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
										<td>6/14</td>
										<td></td>
										<td></td>
										<td>9/3</td>
										<td></td>
										<td></td>
										<td>12/3</td>
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
											<td scope="row" class="darker c">1����(3h)</td>
											<td>
												<b>������ �м� ����</b><br/>
												+��̷ο� ������ ���ؼ� �˾ƺ��� Ȯ���� ���.<br/>
												+������ �м��� ���� ���� �Ұ�.<br/>
												+������ �м��� ���� ��� �Ұ�: ����, ������, ������, ��ŸƮ��, ����, ���, ��.<br/>
												+R�� RStudio ���캸��. Package �Ұ�.<br/>
												+���� �ǽ��� mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2����(3h)</td>
											<td>
												<b>R ���α׷��� ���</b><br/>
												+R�� Ư¡: �ڷ���, ���� ����, ������ ������ ��ü, ��.<br/>
												+������ �м��� ���� ��.<br/>
												+�������� �˻��� ����.<br/>
												+���� �ǽ��� mini-project										
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3����(3h)</td>
											<td>
												<b>������ ������ Ž���� �м�</b><br/>
												+�����͸� �м� ������ ���·� �����ϰ� ����ϴ� ���.<br/>
												+Ž���� �ð�ȭ (���÷�, �ڽ��÷�, ������, ������׷�) �Ұ�.<br/>
												+������ ���� �ð�ȭ�� ����.<br/>
												+���� �ǽ��� mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4����(3h)</td>
											<td>
												<b>�ð�ȭ�� ��踦 ����� Ž���� �м�</b><br/>
												+�ð�ȭ �ǽ�.<br/>
												+��� ��谪 ���ϱ�.<br/>
												+����� �߷����� �������� Ư�� ���ϱ�.<br/>
												+���� ������ ������ ������ ����.<br/>
												+���� �ǽ��� mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">5����(3h)</td>
											<td>
												<b>�ӽŷ��� ����</b><br/>
												+�����н� k-means Ŭ������ �м��� ������ Ȱ�� ���.<br/>
												+�����н��� ���� ���� ȸ�ͺм��� ���� ����.<br/>
												+�������� �������� ������ ���Ӻ��� ������ �������� ���Ǵ� ����ȸ��.<br/>
												+���� �ǽ��� mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">6����(3h)</td>
											<td>
												<b>�ӽŷ��� ��ȭ�� ������</b><br/>
												+������ƽ ȸ���� ������ Ȱ�� ���.<br/>
												+R markdown�� ����� �ڵ�� �ؽ�Ʈ ȥ�� ���� �ۼ�.<br/>
												+���� �ǽ��� mini-project.<br/>
												+���� ����
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
								<b>+"R���� �����͸� ���� �о���̴� ����� �˷��ּ���.�� </b><br/>
								<img src="Images/Course_DSCIENCE_fig_01.png" style="width:100%;"/><br/>
								<b>+"dplyr ��Ű�� �Լ��� ����ؼ� �����͸� �����ϰ� ����ϴ� ����� �˷��ּ���."</b><br/>
								<img src="Images/Course_DSCIENCE_fig_02.png" style="width:100%;"/><br/>
								<b>+"���ڰ��ε� R�� �����м��� �����ؼ� ���� ������ �ΰ��� ��Ʈ�������� Ŭ�����͸��ؼ� �����ϰ� �ͽ��ϴ�.��</b><br/>
								<img src="Images/Course_DSCIENCE_fig_3a.png" style="width:100%;"/><br/>
								<img src="Images/Course_DSCIENCE_fig_3b.png" style="width:50%; margin-left:150px;"/><br/>
								<b>+"��� ��¥�ε���, �������� Ž���� �м��� ���ؼ� ���� �ð�ȭ�� �����ϰ� �ͽ��ϴ�.�� </b><br/>
								<img src="Images/Course_DSCIENCE_fig_4.png" style="width:50%; margin-left:150px;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ȹ�ǵ�</h5>
							<p>
								���� ������ �м��� �ð����� �ο��̶�� �մϴ�. �׸��� �ټ��� �ǹ� �����ʹ� �ſ� �ҿ��� �ϸ� ����ġ,
								���� ���� ���� ���ԵǾ� �ֽ��ϴ�. �׷��Ƿ� ������ �м����� ������ ���� ������ �ð� ���� ������ �����
								��� ���� ������ ��찡 �����ϴ�. �ֽ�, �ְ��� �ӽŷ��� �˰����� �����ϴ� �� ���� �����͸� ��
								�����ϰ� ���� �ð�ȭ�� ���� Ž���� �м����� ������ ���ظ� ���ϴ� ���� �ſ� �߿��մϴ�. ū �׸���
								�������� �ϴ� ����� ���ٹ� (top down approach)�� �߿������� �Ҽ��� �����Ͽ��� ���� �����ϴ� �����
								���ٹ� (bottom up approach) ���� �߿��մϴ�. ������� ���� ������ �м����� ���� ����ġ�� �������
								�ϳ��� �������� Ǯ����� �ǹ��ִ� ����� ����� ���� ���μ��� ������ �ʿ伺�� ������ �� �̹� ���Ǹ�
								��ȹ�ϰ� �Ǿ����ϴ�. ���� ���� ������ IT �缺��� ��Ʈ���������� ������ ��ǥ�� ������ ������
								�������μ��� ù ������ �Ǵ� �ɵ� �ִ� ������ ��ҽ��ϴ�.
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