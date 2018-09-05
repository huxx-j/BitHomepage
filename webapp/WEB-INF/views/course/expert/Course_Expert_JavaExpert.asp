<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
'strDateTime = "2017.09.06 ~ 2018.03.06"
'strDateTime = "2018.01 ~ 2018.06"
strDateTime = "2018.01.02 ~ 2018.05.31"

'// ����û��� �߰��� �ʼ� �ʵ� : CourseID
CourseID = "JX"	
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
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

			// DetailPage :: slots handlers
			$(".companies .slot").on("click", function() {
				//var href = $(this).attr("href");
				//if(href!=undefined)  location.href = href;

				var index = $(".companies .slot").index(this);
				//alert(index); 
				$(".companySummary").hide();
				$(".companySummary").eq(index).show();
			});
			// DetailPage :: insideSlots handlers
			$(".insideSlot").on("mouseenter", function() {
				//$(this).css("opacity",1);
				$(this).stop(true,true).animate({"opacity":1},400,'easeOutElastic');
			}).on("mouseleave", function() {
				//$(this).css("opacity",0);
				$(this).stop(true,true).animate({"opacity":0},200);
			});
			

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(1).addClass("on");  
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<link rel="stylesheet" type="text/css" href="CommonStyle_DetailPage.css">
</head>

<body><!-- style="background:#ffffff;">-->
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseExpert_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>����������
						</p>
						<h4 style="float:left;">�ڹ� ����������</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JX.inc" -->
												<%
												'//< % = strDateTime % >
												%>
												<!--2018.01.02 ~ 2018.05.31-->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JX.inc" -->
												<!--09:00 ~ 18:00 (��5��)-->
											</td>
										</tr>
										<tr class="dnone">
											<th>�������</th>
											<td>500����</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>25��</td>
											<th>����</th>
											<td>02-3486-3456 (�ֱ��� ����)<br/><a href="mailto:gwang@bit.kr" class="email">gwang@bit.kr</a></td>
										</tr>
									</tbody>
								</table> 
								<!--
								<a href="/Register/Request/register_expert1.asp" class="btn mid green1" title="������û" style="float:right; margin:5px 0;">������û</a>
								<div style="clear;both; height:10px;"></div>
								-->
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_employment1.asp" title="�����ϱ�" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
									<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
									�����ϱ�
								</a>
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
								�ֽ� �� ���ø����̼� ������ �Ǵ� �� �����ڵ��� ���� ���߰��� �����ϸ鼭 ���߿� �ʿ��� Ǯ���� ����� �����ϱ⵵ �ϰ� �䱸 �ޱ⵵ �Ѵ�.<br/>
								Ǯ���� �� �Ǵ� �� ������ ����Ʈ���� ����, �鿣�� ����, �ý��ۿ/����, �����ͺ��̽�, ���ߵ��� ���� �̷��� �ټ����� ������ ���� ���� �� �ִ�.<br/>
								�� ���������� �켱, ����Ʈ���� ���߿� HTML/CSS3�� ��ǥ�ؿ� �´� ������ �ۼ����� ��Ÿ�ϸ� �׸��� ����Ʈ������ �ٽ� ���α׷��� ����̶� �� �� �ִ� �ڹٽ�ũ��Ʈ �׸��� �ڹٽ�ũ��Ʈ ���̺귯���� ����.<br/>
								������ �����ڴ� �ڹ� ������������ ����� �ٽ� �����ӿ�ũ ����� �������� ������ MVC �׸��� �ֿ� ������ ������� ����.<br/>
								���ÿ� ����Ʈ����� �ڹ� �鿣Ʈ ���߿� �ʿ��� ��������, �̽�����, ������, �׽�Ʈ ��, CD/CI �������� �Բ� ��� ������ �ڵ�ȭ�� �ʿ��� �پ��� �ǹ� ������ ���� ������ �ǽ����ַ� �����Ѵ�.<br/>
								�̿� �Բ� ���� ���ø����̼ǰ� �����ͺ��̽��� ����, ���� ������ ���� �������� ��������� ���� �����ͺ��̽� ���α׷����� ���� SQL�� ������ �𵨸� ����� RDBMS�� NoSQL���� ���� �ȴ�.<br/>
								�� ������ ������������ ������ Ǯ���� ����� �����Ͽ� ����� ����, ������������ ��ü ���� ���μ����� ���� ���� �ð��� ������ �� �ְ� �ϰ� �پ��� ���� �о߿� ���� ������ �̸� �����Ͽ� �� �о��� �ְ� �������� �Ǳ����� �ذŸ��� �Ǵ� ������� �����ϰ� �����ϴ� �� ������ �ִ�.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>������ Ư��</h5>
							<ul class="ul_dot_gray">
								<li>������ ����</li>
								<li>�Ʒü��� ����</li>
								<li>�ĺ�����</li>
							</ul>
						</div>
						
						<div class="con_wrap1709 dnone">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>��ǻ�� ���� �а� 2�� �̻��� �⺻ �Ҿ��� ������ �ڹ� �о��� �������� �����ϰ� ���� ���</li>
								<li>�� ����/���� �� ��ǻ�� ���� ���� �Ƿ��� Ű��� ���� ���л�</li>
								<li>���� ���� ��� ��Ʈ������ ������� ���ϴ� ���л�</li>
								<li>�ڹ� ���� ���迡 ����� ����ϴ� ��������</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>�������</h5>
							<div class="companies">
								<div style="float:left; margin-top:0"> <!-- -15px; ">-->
									<div class="slot first" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_BizTechPartners.asp">
										<div class="divCompanyEmploy">
											<img class="companyLogo" src="/Images/Content/Employ/img_LOGO_BizTechPartners.png" style="height:60px; margin-top:4px; margin-left:34px; margin-bottom:-9px;">
											<p class="companyName"><span>�ߺ�����ũ��Ʈ�ʽ�</span></p>
											<p class="companyDetail" style="height:80px;">
												<span class="blueTxt">������ / ����� �� �� ����<br/>����</span><br/><br/>
												<span style="font-weight:900; color:#ff0000;">������</span>
											</p>
										</div>
										<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
										<p class="courseName dnone">-</p>
										<p class="courseDescription dnone">-</p>
										<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
									</div>
									<div class="slot " style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_BitComputer.asp">
										<div class="divCompanyEmploy">
											<img class="companyLogo" src="/Images/Main/img_logo_BITCOM.png" style="margin-top:18px; margin-left:38px; margin-bottom:8px;">
											<p class="companyName"><span>�ߺ�Ʈ��ǻ��</span></p>
											<p class="companyDetail" style="height:80px;">
												<span class="blueTxt">JAVA �ַ�� ����<br/></span><br/><br/>
												<span style="font-weight:900; color:#ff0000;">������</span>
											</p>
										</div>
										<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
										<p class="courseName dnone">-</p>
										<p class="courseDescription dnone">-</p>
										<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
									</div>
								</div>
								<div style="clear:both;"></div>
							</div>	

							<!-- ������� Summary -->
							<div style="margin-top:10px;">
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_BizTechPartners.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_BizTechPartners.asp"-->
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_BitComputer.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_BitComputer.asp"-->
								</div>
							</div>
							<!-- //������� Summary -->
						</div>

						<div class="con_wrap1709">
							<h5>�����Ⱓ</h5>
							<p>2018�� 8�� 21��(ȭ)����</p>
						</div>
						<div class="con_wrap1709">
							<h5>��������</h5>
							<p>
								-	1�� ���� : �ʱ����(Java Programming)<br/>
								-	2�� ���� : ��������(�������, ���� ����)
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>������</h5> 
							<p>2018�� 8�� 23��(��) 10:00</p>
						</div>

						<div class="con_wrap1709">
							<h5>�����Ⱓ</h5>
							<p>6����(�̷� ���� : 3����, ������Ʈ 3����) / 960h</p>
						</div>
						<div class="con_wrap1709">
							<h5>�����ð�</h5>
							<p>09:00 ~ 18:00 (�׷콺�͵�, ������Ʈ ���� �� 22:00����)</p>
						</div>
						<div class="con_wrap1709 dnone">
							<h5>������</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
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
										<td>1/2</td>
										<td>2/1</td>
										<td>3/2</td>
										<td>4/2</td>
										<td>5/1</td>
										<td>6/1</td>
										<td>7/2</td>
										<td>8/1</td>
										<td>9/3</td>
										<td>10/1</td>
										<td>11/1</td>
										<td>12/3</td>
									</tr>
								</table>
							</div>
						</div>
<!--

						<div class="con_wrap1709">
							<h5>�������</h5>
							<p>�ʱ����(Java Programming)<br/>���� (��������)</p>
						</div>
						<div class="con_wrap1709">
							<h5>�������</h5>
							<p>550����</p>
						</div>
-->

						<div class="con_wrap1709 last">
							<h5>��������</h5>

							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:30%">
										<col style="width:65%">
									</colgroup>
									<tbody>
										<tr>
											<th colspan="3">1�ܰ� : JAVA ���α׷��� ���� ��ȭ �ܰ�</th>
										</tr>
										<tr>
											<td class="darker c" scope="col" colspan="2">Java Programming</td>
											<td>Java �� �н��Ѵ�.</td>
										</tr>
									<tr>
											<td class="darker c" scope="col" colspan="2">Data Structure</td>
											<td>�����ڶ�� �ʼ������� �˾ƾ� �ڷᱸ��/�˰��� ���� ���İ� �ǽ��� Java�� ��ü���� ���α׷������� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c" scope="col" rowspan="2">Back-end</td>
											<td class="darker c">Mysql/MongoDB</td>
											<td>������ ���α׷��ֿ� ���� �н����� ������������ �⺻�̶� �� ���ִ� RDBMS�� ������ �������� ��ǥ���� NoSQL ���� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c">Serlvet/JSP</td>
											<td>���� ������ HTTP �������� �� �� ������ �������� ���ظ� �������� �ڹ� �����α׷����� �ٽ��� Servlet ���α׷��� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c" colspan="2">Unit test ��</td>
											<td>JAVA ���α׷����� �����ϰ� �⺻�Ǵ� ���� �Ҿ��� Ȯ���� �� �ִ� ���� ������Ʈ ����</td>
										</tr>

										<tr>
											<th colspan="3">2�ܰ� : JavaScript��� full stack ��� Ȯ�� �ܰ�</th>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">Front-end</td>
											<td class="darker c" scope="col">HTML5/CSS3</td>
											<td>��ǥ�ؿ� �´� HTML5/CSS3 �н��� �⺻���� ������ ��(�������) ���ۿ� �ʿ��� ������� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c">JavaScript(ECMAScript, jQuery, AngularJS, ReactJS)</td>
											<td>����Ʈ������ ��ǥ ���α׷��� ����� �ڹٽ�ũ��Ʈ�� �н��ϰ� �ڹٽ�ũ��Ʈ ��� �پ��� ���̺귯���� ������ ������.</td>
										</tr>
										<tr>
											<td class="darker c">AJAX/JSON</td>
											<td>REST API�� Ȱ���� �鿣�� ����Ʈ���� ���� ��ǥ���� ������ ��� ����� �����ϰ� �ǹ� ���ø����̼ǿ� �����Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c">UX/UI</td>
											<td>�پ��� ����Ʈ���忡 �����ؾ� �� UX/UI�������� ����� �� ���μ����� ���ؽ�Ų��.</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="2">Development Tools</td>
											<td class="darker c" scope="col">CI(Jenkins)</td>
											<td>������ ���� ���μ��� XP�� ��õ ����� CI�� �н��Ͽ� ����Ʈ���� ���� ������Ʈ�ϰ� ����, �׽���, ���� ���� �� �ڵ�ȭ�� ���� ����.</td>
										</tr>
										<tr>
											<td class="darker c">SCM(git)</td>
											<td>����Ʈ���� ���� ������ �ʿ伺�� ���ؽ�Ű�� Git �� GitHub�� ����Ͽ� ���� ���� �ý����� ���忡 ������ �� �ֵ��� �Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c">Back-end</td>
											<td class="darker c" scope="col">Node.js (Express.js)</td>
											<td>node.js�� ���� �⺻ ������ �н��ϰ� ���� �� ���� �����ӿ�ũ �� Express �����ӿ�ũ�� ������ �Ǵ� REST API �ۼ����� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c" colspan="2">Unit test ��</td>
											<td>JavaScript ����� �鿣��, ����Ʈ���� ����� ���� �н��Ͽ� �Բ� ���밡���� �� ���ø����̼��� �ۼ��� ����.</td>
										</tr>
										
										<tr>
											<th colspan="3">3�ܰ� : Back-end ��ȭ ��� Ȯ�� �ܰ�</th>
										</tr>
										<tr>
											<td class="darker c" scope="col">Back-end</td>
											<td class="darker c">Spring Framework(IoC/DI Container, AOP, Spring MVC, Spring JDBC, Spring Boot, TDD(Junit))</td>
											<td>Spring Framwork�� �ٽɰ����� ������ ���� �н��ϸ�, Spring Boot�󿡼� Spring MVC�� �н��ϸ�, Spring JDBC, Junit�� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td class="darker c" colspan="2">Unit test ��</td>
											<td>�ڹ� �����ӿ�ũ ����� ��ȭ�� �鿣�� ����� ������ �� ���ø����̼��� �ۼ��� ����.</td>
										</tr>

										<tr>
											<th colspan="3">4�ܰ� : ��Ʈ������Ʈ(3����)</th>
										</tr>
										<tr>
											<td class="darker c" rowspan="4" colspan="2">Team Project</td>
											<td colspan="2">
												���ݱ��� ��� ��� ����� ���ؼ� �ǹ� ������ �´� FullStack �������α׷��� ������ ���� �ܰ�� 4�� ���ܷ� ���� ����<br/>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												�ֽ� ������Ʈ ������ �����Ͽ� 3���� ���� ������ ���Һд� �� ��ȣ ���� �Ͽ� ������Ʈ �����ϸ�, ���� ���� <br/>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												���õ� �ڷ� ����, �ʿ��� �н�, ��Ȯ��, ���� ����, ����ȯ�汸�� �� ����, �����׽�Ʈ ���� ���� ������ �Ϸ�<br/>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												�ܺξ�ü �����ڵ��� ���� �Ͽ� ���� ����ȸ�� ������ �Ѵ�.
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709 mar_t20">
							<h5>����Ʈ���� �����ڶ�?</h5>
							<p>
								����Ʈ���� �����ڴ� ����ڿ��� �������� ȭ���� ����� �������̴�. ���� ���ϸ� ���������� �׸��� ����̸�, ���� ���̴� ȭ���� ����� �ʹٸ� ����Ʈ���� ����� �ʿ��ϴ�.<br/>
								�⺻������ HTML+CSS ��ǥ�� �ڵ��� ���� HTML5 �ֽ� ���� �� JavaScript�� �ʼ��̸�, ���⼭ �������̳ʿʹ� ���̰� ������, �������� UI���� �׸��°Ͱ� �����̳� �� �������� ȣȯ�� �� ������ ���� ������� �ʿ��մϴ�.
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>������ �����ڶ�?</h5>
							<p>
								������ �����ڴ� ���� ������ �ʴ� �������� �ۿ��ϴ� ����� �ٷ�� �����̴�. ���� ���� ���Ǵ� ����� Java�� �Ǿ� ������, Spring �����ӿ�ũ�� ������ε� ���� ���ǰ� �ִ�.<br/>
								�����������ӿ�ũ�� Java �ҽ��ڵ带 ��ü���� �������� ���� ȿ�������� �ۼ��� �� �ִ� Ʋ�� �����ϸ�, ������ ���߿��� Java�� ������� �� ���ø����̼��� ���߹��ϴ� ����̴�.
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>Ǯ���� �����ڶ�?</h5>
							<p>
								Ǯ���� �����ڴ� ����Ʈ���� + �鿣�带 ���ĳ��� ������ ����Ʈ����� ������ ��������� ��� Ȱ���� �� �ִ� ������� �ʿ��� �����̸�,
								��� ����Ʈ���� ����� ���� ���� �׸��� ������ ������ ������ ������ ���õ��� ���� �� �ܰ�(layer)�� ģ������ ���� ����̴�. 
								��� �о߿� ���� ģ����, ���� �����ڵ��� �׵��� �ѷ��� ���� ���� ���� �� �ȴ�. 
							</p>
						</div>

						<div class="con_wrap1709 last">
							<h5>����</h5>
							<p>02-3486-3456 <a href="mailto:gwang@bit.kr" class="email">gwang@bit.kr</a></p>
						</div>

						<!-- MODULE : ����û ��� -->
						<!-- # i n clude virtual="/Include/CommonModule_RequestCounsel.asp"-->
						<!--// MODULE : ����û ��� -->
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>