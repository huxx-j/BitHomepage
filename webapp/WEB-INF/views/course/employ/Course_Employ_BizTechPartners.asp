<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
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

	<script src="Common_getIndex.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq( getIndex("BizTechPartners") ).addClass("on");  
		});
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Employ/M/Course_Employ_BnEpartners.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���������������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���Ի�� ä�뱳��
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ߺ�����ũ��Ʈ�ʽ�
						</p>
						<h4 style="float:left;">�ߺ�����ũ��Ʈ�ʽ� ���Ի��ä�뱳��</h4>
						<!-- ������ûbtn -->
						<a href="/Register/Request/register_employment1.asp" title="�����ϱ�" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							�����ϱ�
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">���� : 02-3486-1780</span>-->
					
					<section class="section">
						<div class="con_wrap1709" style="margin-top:5px;">
							<!--<p>���Ի��ä�����α׷��� �ߺ�����ũ��Ʈ�ʽ��� �����, ������ȭ, ����Ư���� �´� ���縦 ��Ʈ�������Ͱ� �������� �����Ͽ� ���������� ä�� �� �系������ ��ȯ���� ����� ��Ʈ���������� �������� ������������ ���Ի�������� ��Ź, �ǽ��ϴ� ���α׷��Դϴ�. ���� �� ���������� ä���� Ȯ���ǹǷ� ���Ի���� ������ ������ ������� �����մϴ�. ���ݱ��� ��Ʈ���������� ���Ի��ä�����α׷��� ���� 1,000����(2018�� ����) �̻��� ���簡 SW���������ڷν� ä��Ǿ����ϴ�.</p>-->
							<p>���Ի��ä�뱳���� �Ƿ� �� �����ɷ��� ���� ���� ä���� ����, ����� �����, ������ȭ, ����Ư���� �´� ���縦 ���⿡ �����ϰ� ��Ʈ�������� ���������� ��Ź�Ͽ� ü�����̰� ���� ���� ��������� ���� ���� �̼� �� ��ٷ� ������ ������ �� �ִ� �η��� �缺�ϴ� ���� �����Դϴ�.</p>
						</div>
						
						<div class="con_wrap1709">
							<h5 class="mar_t40 redTxt">����Ư��</h5>
							<ul>
								<li>1. ���� ������ ���� ä��</li>
								<li>2. ������ ���� (��� ��������)</li>
								<li>3. �Ʒü��� ���� (��20����, �� 120����)</li>
								<li>4. �ĺ� ���� </li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>ȸ�� �Ұ�</h5>
							<!-- #include virtual="/Course/Employ/Summary1_BizTechPartners.asp"-->
							<!--
							<p><img src="/Images/Content/Employ/img_LOGO_BizTechPartners.png"  style="width:130px; margin-bottom:10px;"></p>
							<p>
								<b>������ũ��Ʈ�ʽ� </b> <a href="http://www.biztechpartners.co.kr/" class="blueTxt fb" target="_blank">http://www.biztechpartners.co.kr/ </a><br/>
								������ũ��Ʈ�ʽ��� Global IT ���� ��������� LG CNS�� ��ȸ��� �ְ��� �������� �߱��ϴ� ����Դϴ�. SAP ERP�� ����� ����� �ý��� Rapid Solution(SAP)�� �繫, �λ� �� ����� ģ���� �� �ַ�� ���� �����ϰ� ������, Mobile, Cloud, Realtime Enterprise, IoT�� �ֽ� IT����� ������ ������ �� �ִ� ������� ���� ȸ���Դϴ�.<br/>
								������ũ��Ʈ�ʽ����� ���������� ���� ���� �����Ű��, ���������� Ź���� ������ â���Ͽ� �ڽ��� �о߿��� �ְ� �ǰ� ���� ���� �ִ� ���縦 �����մϴ�.
							</p>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>�����䰭</h5>
							<!-- #include virtual="/Course/Employ/Summary2_BizTechPartners.asp"-->
							<!--
							<div class="divTable">
								<table>
									<caption>ä��о�, ä���ο�, �����ڰ�</caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:35%">
										<col style="width:30%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">ä��о�</th>
											<th scope="col" class="c">ä���ο�</th>
											<th scope="col" class="c">�����ڰ�</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">������<br/>����� �� �� ��������</td>
											<td class="c">20 ��</td>
											<td rowspan="2">
												<ul class="ul_dot_gray">
													<li>���� �̻�</li>
													<li>��ǻ�� �����а�</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<ul>
								<li>��Ʈ��������(<a href="http://www.bitacademy.com" style="text-decoration:underline;" class="blueTxt">http://www.bitacademy.com</a>) ȸ������ �� �����ȳ� �� �ű����� �� ���Ի��ä�뱳�� �� �ߺ�����ũ��Ʈ�ʽ� ����(1,2���� ���)</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<%
								'//<p class="redTxt fb">���� : <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--><!--2016�� 9�� 26��(��) ���� 10��--> - �ʱ����(JAVA) �� ����</p>
							%>
							<ul>
								<li>
									1�� ���� : �ʱ���� (Java Programming)<br/>
									�� ���� ��� : ��Ʈ�������� ��Ÿ�� (����1��)<br/>
									<span class="redTxt fb">�� ���� ���� :  <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--></span><br/>
									�� �ʱ⵵�� �� �ݸ�����(�������) 1�� ����
								</li>
								<br/>
								<li>2�� ���� : ������� (��������)</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>�����Ⱓ</h5>
							<p><!-- #include virtual="/Course/Employ/Common_Date1.asp"--></p>
							<%
							'//<!-- #include virtual="/Course/Employ/Common_Date1.asp"-->
							%>
						</div>

						<div class="con_wrap1709">
							<h5>�����</h5>
							<ul>
								<li>1. ��Ʈ�������� ����ؿ� ����</li>
								<li>
									2. �̷б��� (��~��)<br/>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">�����Խ�</div> <div style="float:left;">08:50 ����</div>
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">��������</div> <div style="float:left;">09:00 ~ 12:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">�߽�</div> <div style="float:left;">12:00 ~ 13:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">���ı���</div> <div style="float:left;">13:00 ~ 18:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">����</div> <div style="float:left;">18:00 ~ 19:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">�׷콺�͵�</div> <div style="float:left;">19:00 ~ 21:30</div> 
									<div style="clear:both;"></div>
								</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>�������� �Ұ�</h5>
							<ul>
								<li>1. ������ : �ڹ� ����������</li>
								<li>2. �����Ⱓ : 6���� (�̷�3����, ������Ʈ3����)</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption>JAVA Expert ��������</caption>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:60%">
									</colgroup>
									<tbody>
										<!-- 1 �ܰ� : Java Programming ��� ��� �� ���� Ȯ�� �ܰ� -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">1 �ܰ� : Java Programming ��� ��� �� ���� Ȯ�� �ܰ�</th>
										</tr>
										<tr>
											<td class="darker" scope="col">Advanced Java</td>
											<td class="darker"></td>
											<td class="l">
												
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col">Data Structure</td>
											<td class="darker"></td>
											<td class="l">
												�����ڶ�� �ʼ������� �˾ƾ� �ϴ� �ڷᱸ��/�˰��� ���� ���İ� �ǽ��� Java�� ��ü���� ���α׷������� �н��Ѵ�
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col">Back-end</td>
											<td class="darker">Mysql / MongoDB</td>
											<td class="l">
												������ ���α׷��ֿ� ���� �н����� ������������ �⺻�̶�� �� �� �ִ� RDBMS�� ������ �������� ��ǥ���� NoSQL ���� �н��Ѵ�
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col"></td>
											<td class="darker">Serlvet / JSP</td>
											<td class="l">
												���� ������ HTTP �������� �� �� ������ �������� ���ظ� �������� �ڹ� �� ���α׷����� �ٽ��� Servlet ���α׷��� �н��Ѵ�
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col" colspan="2">Unit test 1</td>
											<td class="l">
												Java ���α׷����� �����ϰ�, �⺻�Ǵ� ���� �Ҿ��� Ȯ���� �� �ִ� ���� ������Ʈ ����
											</td>
										</tr>
										
										<!-- 2�ܰ� : JavaScript ��� Ǯ���� ��� Ȯ�� �ܰ� -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">2�ܰ� : JavaScript ��� Ǯ���� ��� Ȯ�� �ܰ�</th>
										</tr>
										<tr>
											<td class="darker" scope="col" rowspan="4">Front-end</td>
											<td class="darker">HTML5 / CSS3</td>
											<td class="l">
												�� ǥ�ؿ� �´� HTML5/CSS3 �н��� �⺻���� ������ ��(����� ��) ���ۿ� �ʿ��� ������� �н��Ѵ�
											</td>
										</tr>
										<tr>
											<td class="darker">JavaScript (ECMA Script, jQuery, AngularJS, ReactJS)</td>
											<td class="l">
												����Ʈ������ ��ǥ ���α׷��� ����� �ڹٽ�ũ��Ʈ�� �н��ϰ� �ڹٽ�ũ��Ʈ ��� �پ��� ���̺귯���� ������ ������
											</td>
										</tr>
										<tr>
											<td class="darker">AJAX / JSON</td>
											<td class="l">
												REST API�� Ȱ���� �鿣�� ����Ʈ���� ���� ��ǥ���� ������ ��� ����� �����ϰ� �ǹ� ���ø����̼ǿ� �����Ѵ�
											</td>
										</tr>
										<tr>
											<td class="darker">UX/UI</td>
											<td class="l">
												�پ��� ����Ʈ���忡 �����ؾ� �� UX/UI ������ ����� �� ���μ����� ���ؽ�Ų��
											</td>
										</tr>
										
										<tr>
											<td class="darker" scope="col" rowspan="2">Development</td>
											<td class="darker">CI(Jenkins)</td>
											<td class="l">
												������ ���� ���μ��� XP�� ��õ ����� CI�� �н��Ͽ� ����Ʈ���� ���� ������Ʈ�ϰ� ����, �׽���, ���� ���� �� �ڵ�ȭ�� ���� ����
											</td>
										</tr>
										<tr>
											<td class="darker">SCM(git)</td>
											<td class="l">
												����Ʈ���� ���� ������ �ʿ伺�� ���ؽ�Ű�� Git �� GitHub�� ����Ͽ� ���� ���� �ý����� ���忡 ������ �� �ֵ��� �Ѵ�
											</td>
										</tr>
										
										<tr>
											<td class="darker" scope="col">Back-end</td>
											<td>Node.js (Express.js)</td>
											<td class="l">
												Node.js�� ���� �⺻ ������ �н��ϰ�, ���� �� ���� �����ӿ�ũ �� Express �����ӿ�ũ�� ������ �Ǵ� REST API �ۼ����� �н��Ѵ�
											</td>
										</tr>
										
										<tr>
											<td class="darker" scope="col" colspan="2">Unit test 2</td>
											<td class="l">
												JavaScript ����� �鿣��, ����Ʈ���� ����� ���� �н��Ͽ� �Բ� ���밡���� �� ���ø����̼��� �ۼ��� ����
											</td>
										</tr>
										
										<!-- 3�ܰ�: Back-end ��ȭ ��� Ȯ�� �ܰ�  -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">3�ܰ�: Back-end ��ȭ ��� Ȯ�� �ܰ� </th>
										</tr>
										<tr>
											<td class="darker" scope="col">Back-end</td>
											<td class="darker">Spring Framework(IoC/DI Container, AOP, Spring MVC, Spring JDBC, Spring Boot, TDD(Junit))</td>
											<td class="l">
												Spring Framework�� �ٽɰ����� ������ ���� �н��ϸ�, Spring Boot �󿡼� Spring MVC�� �н��ϸ�, Spring JDBC, Junit�� �н��Ѵ�.
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col" colspan="2">Unit test 3</td>
											<td class="l">
												�ڹ� �����ӿ�ũ ����� ��ȭ�� �鿣�� ����� ������ �� ���ø����̼��� �ۼ��� ����
											</td>
										</tr>
										
										<!-- 4 �ܰ� : ��Ʈ ������Ʈ (3����) -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">4 �ܰ� : ��Ʈ ������Ʈ (3����)</th>
										</tr>
										<tr>
											<td class="darker" scope="col" colspan="2">Term Project</td>
											<td class="l">
												���ݱ��� ��� ��� ����� ���ؼ� ������ �´� Ǯ���� �������α׷��� ������ ���� �ܰ�� 4�� ���ܷ� ���� ����<br/>
												�ֽ� ������Ʈ ������ �����Ͽ� 3���� ���� ������ ���Һд�� ��ȣ ���� �Ͽ� ������Ʈ �����ϸ�, ���� ����<br/>
												���õ� �ڷ����, �ʿ��� �н�, ��Ȯ��, ���� ����, ����ȯ�汸�� �� ����, �����׽�Ʈ ���� ���� ���� �Ϸ�<br/>
												�ܺξ�ü �����ڵ��� ���� �Ͽ� ���� ����ȸ�� ���´�
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="con_wrap1709">
							<h5>����</h5>
							<!--<p>��Ʈ��������:02-3486-1055(expert@bit.kr)</p>-->
							<p>������ ������ (<a href="mailto:tablet18@bit.kr">tablet18@bit.kr</a> / 010-9384-9654)</p>
						</div>
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_employment1.asp" class="btn mid green1" title="������ũ��Ʈ�ʽ� �����ϱ�">�����ϱ�</a>
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