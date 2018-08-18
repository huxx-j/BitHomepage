<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
strDateTime = "2018.01.02 ~ 2018.05.31"

'// ����û��� �߰��� �ʼ� �ʵ� : CourseID
CourseID = "EX"	
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
			
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(1).addClass("on");  
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<link rel="stylesheet" type="text/css" href="CommonStyle_DetailPage.css">
</head>
<body>
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
						<h4 style="float:left;">�Ӻ���� �ý��� ����������</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">���� : 02-3486-1780</span>-->
					
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__EX.inc" -->
												<%
												'//< % = strDateTime % >
												%>
												<!--2018.01.02 ~ 2018.05.31-->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__EX.inc" -->
												<!--09:00 ~ 18:00 (��5��)-->
											</td>
										</tr>
										<tr class="dnone">
											<th>�������</th>
											<td>550����</td>
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
								�Ӻ���� �ý��� �о߿��� �� �а� ���ǰ� �ִ� ARM ���μ��� ����� �Ӻ���� ��ǰ ���߿� �ʿ��� ARM ���μ����� ������ Ư¡, ����� ��ɾ�, ���ð���, ���ͷ�Ʈ, ����ó�� ����� ����Ͽ� ����̽� ��� ���� ����� ���� �����Դϴ�.<br/>
								�Ӻ���� ������ ����� Ŀ�ο� ���� ���ؿ� Ŀ���� �Ӻ���� �ý��ۿ� ����ȭ �ϴ� ����� �н��ϰ� �Ǹ� ARM �������� Ư¡ �� ���ؽ�Ű��  �Ӻ���� ������ ���� ȯ��, ��Ʈ�δ��� ���ؿ� ���� ���, ������ Ŀ���� ������ ���� ���, ������ ���Ͻý����� ������ ��Ʈ ���Ͻý��� ���� ���, �Ӻ���� ���������� ����̽� ����̹��� �ۼ��ϴ� ������� ���� �����Դϴ�. �Ӹ� �ƴ϶� �Ӻ���� ���������� ��Ʈ��ũ ���α׷����� ���� TCP/IP ������ �����ϰ� ��Ʈ��ũ ����̽� ����̹����� ��� ���� ���α׷��ֱ��� ���� �˴ϴ�.
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
						
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>C�� ����� ����̽� ��� �����ϱ� ���� ���</li>
								<li>C �� ��������� �������̽��� ��ȣ ȣ�⿡ ���� ���� </li>
								<li>ARM ���μ����� ������ Ư¡�� �����ϰ� ����� �ڵ��� �а� �ۼ� </li>
								<li>Exception ���ؿ� ���ܸ� ȿ�������� ó���ϴ� �ڵ鷯 �ۼ� </li>
								<li>����, ���ͷ�Ʈ �� GPIO, UART, Timer�� �ֺ���ġ�� �����ϴ� ���</li>
								<li>�Ӻ���� �������� ���� Ÿ�� ���忡 ����</li>
								<li>�Ӻ���� �ý��ۿ� �´� ������, ���üӵ� � ���ؼ� ����ȭ ���</li>
								<li>�Ӻ���� ������ ����� �ý��� �÷����� ������ ���� �������� ���α׷���</li>
								<li>ARM ���μ��� ��� ����̽� ����</li>
								<li>��Ƽ�̵�� ��� ����̽� ���� �� ���� ���α׷� ���� ���� ����</li>
								<li>TCP/IP ���� �� �������� ������ ��Ʈ��ũ ����̽����� �н�</li>
								<li>���� ���α׷��� ���</li>
							</ul>
						</div>
						<div class="con_wrap1709 dnone">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>ARM ���μ��� ���� �Թ���</li>
								<li>�Ӻ���� �ý��� ���� �Թ���</li>
								<li>�Ӻ���� �������� ����̽� ����̹� ���߿� ������ ���� �Թ���  </li>
								<li>��ǻ�� ���� �а� 2�� �̻��� �⺻ �Ҿ��� ������ �Ӻ���� �ý��� �о��� �������� �����ϰ� ���� ���</li>
								<li>�� ����/���� �� ��ǻ�� ���� ���� �Ƿ��� Ű��� ���� ���л�</li>
								<li>���� ���� ��� ��Ʈ������ ������� ���ϴ� ���л�</li>
								<li>�Ӻ���� ���� ���迡 ����� ����ϴ� ��������</li>
							</ul>
						</div>
						<div class="con_wrap1709">
							<h5>�������</h5>
							<div class="companies">
								<!-- Line #1 -->
								<div style="margin-top:24px;">
									<div style="float:left; margin-top:0px;"> <!-- -15px; ">-->
										<div class="slot first" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_ITtelecom.asp">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="/Images/Content/Company_Logo/img_LOGO_ITtelecom.jpg" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
												<p class="companyName"><span>�߾���Ƽ�ڷ���</span></p>
												<p class="companyDetail" style="height:60px;">
													<span class="blueTxt">Embedded S/W, F/W <br/>����</span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">������</span>
												</p>
											</div>
											<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>

										<div class="slot " style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_BAinfra.asp">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="/Images/Content/Company_Logo/img_LOGO_BAinfra.png" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
												<p class="companyName"><span>�ߺ���������</span></p>
												<p class="companyDetail" style="height:60px;">
													<span class="blueTxt">�������Ʈ���� ��������</span><br/><br/><br/>
													<span style="font-weight:900; color:#ff0000;">������</span>
												</p>
											</div>
											<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>

										<div class="slot" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_Ivis.asp">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="/Images/Main/img_logo_05.jpg" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
												<p class="companyName"><span>�߾��̺�</span></p>
												<p class="companyDetail" style="height:60px;">
													<span class="blueTxt">������ SW ����<br/>�� ������</span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">������</span>
												</p>
											</div>
											<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
									</div>
									<!-- //Line #1 -->
									<div style="clear:both;"></div>
								</div>
								
								<!-- Line #2 -->
								<div style="margin-top:24px;">
									<div style="float:left; margin-top:-15px; ">
										<div class="slot first" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_AurosTech.asp">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="/Images/Content/Employ/img_LOGO_AurosTech.png" style="height:40px; margin-bottom:0px; margin-top:15px; margin-left:35px;">
												<p class="companyName"><span>�߿��ν���ũ�����</span></p>
												<p class="companyDetail" style="height:82px;">
													<span class="blueTxt">�ݵ�ü Overlay ��� SW<br/>���� ����</span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">������</span>
												</p>
											</div>
											<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
										<div class="slot" style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="/Images/Content/Employ/img_LOGO_TaehaMechatronics.png" style="margin-top:22px; margin-left:33px; margin-bottom:11px;">
												<p class="companyName"><span>�����ϸ�īƮ�δн�</span></p>
												<p class="companyDetail" style="height:80px;">
													<span class="blueTxt">Embedded System ����<br/></span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">������</span>
												</p>
											</div>
											<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
										<div class="slot " style="height:190px; background-color:#fff;" href="/Course/Employ/Course_Employ_PSK.asp">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="/Images/Content/Employ/img_LOGO_PSK.png" style="width:40%; margin-top:5px; margin-left:70px; margin-bottom:-8px;">
												<p class="companyName"><span>���ǿ�������</span></p>
												<p class="companyDetail" style="height:80px;">
													<span class="blueTxt">������ ��� ����<br/></span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">������</span>
												</p>
											</div>
											<img class="slotIcon" src="Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
									</div>
									<!-- //Line #2-->
								</div>
								<div style="clear:both;"></div>
							</div>

							<!-- ������� Summary -->
							<div style="margin-top:10px;">
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_ITtelecom.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_ITtelecom.asp"-->
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_BAinfra.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_BAinfra.asp"-->
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_IVIS.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_IVIS.asp"-->
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_AurosTech.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_AurosTech.asp"-->
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_TaehaMechatronics.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_TaehaMechatronics.asp"-->
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_PSK.asp"-->
									<!-- #include virtual="/Course/Employ/Summary2_PSK.asp"-->
								</div>
							</div>
							<!-- //������� Summary -->
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
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:40%">
										<col style="width:60%">
									</colgroup>
									<tbody>
										<tr>
											<th>����</th>
											<th>��������</th>
										</tr>
										<tr>
											<td class="darker c" scope="col">C Programming</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>ǥ�� C����� ��� �� Ȱ�� ��� ����</li>
													<li>������, ��ó�� �� ���� ����� ���� ���� ���� ����</li>
													<li>�迭�� ������</li>
													<li>������ ǥ�� �� ���ȭ ���α׷���</li>
													<li>�ڷᱸ���� �˰���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">Embedded C <br/>Programming</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�Ӻ���� �ý��ۿ����� ���α׷��� ����</li>
													<li>C ����� �Ӻ���� �ý��� ���α׷��� ���� �� Ȱ��</li>
													<li>�Ӻ���� ���带 Ȱ���� �߿��� ���α׷���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">�Ӻ���� �ý��� ����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�Ӻ���� �ý��� �Ұ�</li>
													<li>�Ӻ���� �ý��� ���� ȯ��</li>
													<li>�Ӻ���� �ý��� ��Ű���� (����ũ�����μ����� ���ۿ���)</li>
													<li>�Ӻ���� ���α׷���</li>
													<li>���ͷ�Ʈ, �ֺ� ��ġ ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">ARM ���� �� <br/>����� ���α׷���</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�Ӻ���� �ý��� ���� ����</li>
													<li>ARM ���μ��� ����</li>
													<li>ARM ����Ʈ���� ����</li>
													<li>ARM ���μ��� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">ARM ����̽� ���α׷���</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�ý��� �ʱ�ȭ ���� ����</li>
													<li>�޸� �ý��� ����</li>
													<li>����̽��� ���� ���� ���� ����</li>
													<li>���� �������̽������� ���� ���� ����</li>
													<li>����̽� ���� ��� ����</li>
													<li>��Ƽ�̵�� ����̽� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">RTOS ���� �� Ȱ��</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�ǽð� �ý��� �Ұ�</li>
													<li>�½�ũ ���</li>
													<li>�½�ũ ���(IPC)</li>
													<li>ARM ���μ���</li>
													<li>MicroC/OS-II ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">������ �ý��� ���α׷���</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>������ �Թ� (��ɾ�, ����ȯ��, �ý��� ������)</li>
													<li>�Ӻ���� ������ �ý��� ���� ȯ�� ����</li>
													<li>�Ӻ���� ������ �ý��� ���� ���� ȯ��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">�Ӻ���� ������ Ŀ�� ����</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>�Ӻ���� ������ ����</li>
													<li>���� ���� ȯ������ �� ����</li>
													<li>��Ʈ�δ�</li>
													<li>Ŀ�� �м�</li>
													<li>��Ʈ ���� �ý���</li>
													<li>�ý��� ��Ű¡</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">�Ӻ���� ������ <br/>����̽� ����̹�</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>����̽� ����̹� �Ұ�</li>
													<li>Ŀ�� ��� ����</li>
													<li>Ŀ�� ����</li>
													<li>������ ����̽� ����̹� ���� ��</li>
													<li>ĳ���� ����̽� ����̹� ����</li>
													<li>��� ����̽� ����̹� ����</li>
												</ul>
											</td>
										</tr>									
										<tr>
											<td class="darker c" scope="col">�Ӻ���� ������ <br/>��Ʈ��ũ ���α׷���</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>��Ʈ��ũ ����� ����</li>
													<li>��Ʈ��ũ �������� ����</li>
													<li>��Ÿ ������ ���</li>
													<li>BSD���� ���α׷���</li>
												</ul>
											</td>
										</tr>
									</tbody>
										<tr>
											<td class="darker c" scope="col" colspan="3" class="tit">��Ʈ ������Ʈ (2����)</td>
										</tr>
										<tr>
											<td class="l" colspan="3">
												<ul class="ul_dot_gray">
													<li>5�� ������ �ο����� ���� �����Ͽ� �ֽ��� ������Ʈ ������ �����Ͽ� 2 ���� ���� ������ ���Һд� �� ��ȣ ���� �Ͽ� ������Ʈ ����.</li>
													<li>������Ʈ ������ ���� �Ӻ���� �ý��� �о߿��� �ʿ�� �ϴ� ������ �̼� �Ŀ� ���� �о��� ����� ������ �� �ֵ��� ��.</li>
													<li>���� ���� �Ŀ��� ���õ� �ڷ� ����, �ʿ��� �н�, �� Ȯ��, ���� ����, ���� ȯ�� ���� ��, ����, ���� �׽�Ʈ ���� ���� ������ �Ϸ��ϰ� �ܺ� ��ü �����ڵ��� ���� �Ͽ� ���� ����ȸ�� ������ ��.</li>
													<li>������Ʈ ������ �� �������� ���ȼ�, �߰�����, �������� �� �󼼼��輭 �׽�Ʈ �ó����� �� �ʿ��� ���⹰���� �����ϵ��� �����ν� ������Ʈ ���� ����Ŭ�� �ͼ��������� ��.</li>
													<li>������Ʈ ���� �������� S/W Engineering ����� ������ ���������ν� ȿ������ �ð�����, ��������, ����Ʈ���� ǰ������ � ���� ������Ʈ ���� ����� �������� ��. </li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="con_wrap1709">
							<h5>������Ʈ����</h5>
							<ul class="ul_dot_gray">
								<li>���ο� HCI ���� : ���� �ѱ� �Է� ����, ���� �ν� �Է� �ý���, ���� Dual mouse, ������ ���� display �ý���, ���� �ν� �ý��� ��</li>
								<li>�Ӻ���� ����ȭ : ���� ����(Virtual board) ����, MMPS2 ���忡 Dual OSes �ý���, ī�᷹�� ��Ʈ �δ�, ���丮�� ��� ��ǻ��, IP on Zigbee, ���� GUI ��</li>
								<li>���ο� ���� ���� : ������ ���� ����, LCD ��� �淮 �Ӻ���� �ý���, Dual mode(master/slave) USB, OBD ��� ������ �׺������, Display ������, Bluetooth ��� ���� �л� �ý���</li>
								<li>ȸ�� ���� ������Ʈ: Settop box, IPTV, LED ��� ���� display �ý���, �Ӻ���� GUI �ý���</li>
							</ul>
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
				<!-- // Content -->
			</div>
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>