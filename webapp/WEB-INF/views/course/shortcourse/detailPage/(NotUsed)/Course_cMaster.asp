<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
'// c_master_AM �� c_master_PM ���� ������ "c_master"�� �����ϱ�� ��.
'//CourseID = "c_master" '// ����Ư�� ����
CourseID = "cmVacation"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
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

			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// C Master ON
		});
		
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_cMaster.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper"> 
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ܿ����Ư��
						</p>
						<h4>C Master (C + �ڷᱸ��)</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:35%">
										<col style="width:13%">
										<col style="width:39%">
									</colgroup>
									<tbody>
										<tr>
											<th>�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cmVacation.inc" -->
												<!--
												2017.12.21 ~ 2018.2.2 <span class='greenTxt'>(������)</span><br/>
												< ! - -2018.1.15 ~ 2018.2.27 <span class='greenTxt'>(���Ĺ�)</span>- - >
												-->
											</td>
											<th>���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cmVacation.inc" -->
												<!--
												������ 9:00 ~ 13:00 (4�ð� /�� 120�ð�)<br/>
												< ! - - ���Ĺ� 14:00 ~ 18:00 (4�ð� /�� 120�ð�)- - >
												-->
											</td>
										</tr>
										<tr>
											<th>�������</th>
											<td>700,000��</td>
											<th>����������</th>
											<td>��뺸�� ��ȯ��</td>
										</tr>
										<tr>
											<th>��������</th>
											<td>30��</td>
											<th>����</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=cmVacation" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<div class="txtBox">
								<p>
								�� ������ �⺻���α׷��ֿ������� �߱� �̻��� ���α�
								���Ӱ� �Ǳ� ���� �������μ� ���α׷��� �ʼ��� ����
								���� �ϴ� �ڿ��� �ʿ��� �ǽ� ������ �����Դϴ�. <br/>
								������ ������ ���ؿ� �����ɷ� ���, ���� ������Ʈ�� 
								���� ���°��߰� ��ǥ�� ���� �پ��� ����ȯ�濡 ���
								�Ǵ� �ڷᱸ�� �� �˰��� ���Ͽ� �н��ϴ� ������
								�ϴ�.
								</p>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>���� Ư¡</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>�⺻ �������� ��� ���α׷��ֱ��� �ܱⰣ�� ����</li>
									<li>�⺻ ���α׷��� ������ ���� �� ü������ �н� </li>
									<li>���� �������� ü�������� �н� ����</li>
									<li>�ǽ��� ���� ȿ���� ���α׷��� ���� �ɷ� ���</li>
									<li>�׷콺�͵� ��ȭ�� ���θ��� ���α׷��� �ɷ� ����</li>
									
								</ul>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>C ���α׷����� �⺻���� ���׺��� �������� ü�������� �н��ϰ� ������ ��</li>
									<li>��ǻ�� ���� �� ����/���� ����</li>
									<li>������������ ������ ����Ͻô� ��</li>
									<li>������㱳��(���Ի�� ä�뱳��)�� ���� ����� ����Ͻô� ��</li>
									<li>�ＺSW������� �غ��Ͻô� ��</li>
								</ul>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<div style="float:left; width:140px;">
								<h5>���� ����</h5>
								<img src="/Images/Content/img_BookCover_PassionOfC.jpg" style="margin-left:15px; width:120px;"/>
							</div>
							<div style="float:left; margin-top:3px; margin-left:15px;">
								<p style="margin-top:175px;">
									���� C ���α׷��� <br/>������ �� / �������̵��
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">����</th>
											<th scope="col" class="c">����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">C �ʱ�</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>C ��� Ư¡, �����Ϸ� ����</li>
													<li>������ ��, ���� ����</li>
													<li>�⺻ ����� �Լ�, ������</li>
													<li>���ǹ�</li>
													<li>�ݺ���</li>
													<li>1���� �迭</li>
													<li>2���� �迭</li>
													<li>�Լ��� �������� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">C �߱�</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>����, �����, ������</li>
													<li>�����, �ǽ� ������Ʈ</li>
													<li>�迭, ������, �ǽ� ������ƮI</li>
													<li>�޸� �ٷ��, ������ Ȱ��</li>
													<li>�Լ�, ���ڿ� �ٷ��, �ǽ� ������Ʈ</li>
													<li>������ �迭, ������, ���� �޸�, �ǽ� ������Ʈ</li>
													<li>����ü, ���� I/O, �ǽ� ������Ʈ </li>
													<li>���� ������Ʈ (���������迭, �����ε����迭) </li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">�ڷᱸ��</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>�ڷᱸ�� ���� �� �˰����� ����</li>
													<li>�����ڷᱸ��(�迭, ���� ����Ʈ)</li>
													<li>���� �ڷᱸ���� Ȱ��, �ǽ� ������Ʈ I</li>
													<li>���ð� ť, �ǽ� ������Ʈ II</li>
													<li>�ڷᱸ���� Ȱ��, �ǽ� ������Ʈ III</li>
													<li>Ʈ��, �ǽ� ������Ʈ IV</li>
													<li>STL�� �Ϲ�ȭ ���α׷���</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>

		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>