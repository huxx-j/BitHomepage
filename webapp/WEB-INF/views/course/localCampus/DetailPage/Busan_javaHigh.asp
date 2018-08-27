<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
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
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(3).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth2_wrap.no3").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1709 .newdepth2_wrap.no3 li:eq(1) a").addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseHigh_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>��ް���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[�λ�]�λ��Ʈķ�۽�
						</p>
						<h4>
							JAVA ��ް���
							<a href="/Course/LocalCampus/LocalCampus_Busan_Introduction.asp?beginwith=booklet" title="������Ʈ ���캸��" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">������Ʈ ���캸��</a>
						</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Busan_JavaHigh_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<!--<td>2017.03.02(��) ~ 2017.08.31(��) (6����)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__BS_JAVAHIGH.inc" -->
												<!--2017.09.25 ~ 2018.02.28 (6����)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__BS_JAVAHIGH.inc" -->
												<!--09:00 ~ 16:00 (6�ð�)-->
											</td>
										</tr>
										<!-- �λ�ķ�۽� JAVA ��ް��� -->

										<tr>
											<th scope="row" class="tit">������</th>
											<td>3,700,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-7588</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_localCampus.asp" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
								
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p class="mar_b10">�� ������ JAVA�� �߽����� ��ü���� ����� ����, �м��ɷ��� �Ծ��ϰ� �����ͺ��̽�, �� �������� ����, Servlet/JSP, MVC, Struts, Spring�� JAVA ������� Ȱ���Ͽ� �پ��� ������ ���� ���α׷��� ����Ͻ� �ַ���� ������ �� �ִ� �ɷ��� �����.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�ڹپ� ��� ��ü���� ����� �ʿ伺�� ��ü���� ���α׷��ֿ� ���� ������ ������ �� �ִ�.</li>
								<li>�ڹٿ��� ��� �� �ִ� �÷����� J2SE, J2EE, J2ME�� �̿��� �� �ִ� ������� ���� </li>
								<li>�ǹ����� ���� ���ǰ� �ִ� ���� ������� ���հ��� ȯ�濡 ���� �н� �� �ǽ��� �����Ѵ�.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>�λ�ܴ� Ʈ����ƼȦ Ư��ȭ������ D413ȣ <img style="margin-top:-68px; height:100px;" src="img_qrcode_Busan.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">����</th>
											<th scope="col">�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="3">Advanced JAVA</td>
											<td class="l">Java API(Application Programming Interface)�� �н��ϴ� ����</td>
										</tr>
										<tr>
											<td class="l">Java ����� ������ ������� ����</td>
										</tr>
										<tr>
											<td class="l">���α׷����� ���� ��ü������ �ǽ��ϰ� �н��ϴ� ����</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="3">Oracle&amp;JDBC</td>
											<td class="l">�����ͺ��̽�, SQL�� ���� �ý����� �����ϰ� � �� �������� ����� �н�</td>
										</tr>
										<tr>
											<td class="l">Java�� �̿��ؼ� database�� ������ �Ͽ� SQL�� �ڵ��ϴ� ����� ����</td>
										</tr>
										<tr>
											<td class="l">���� PI�����ε� �����ͺ��̽� ��������� ����� �ֵ��� �н��ϴ� ����</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="2">Servlet & JSP</td>
											<td class="l">���� �⺻����� HTTP�������ݿ� ���� ���ظ� ������� �ڹٿ��� �����ϴ� �����α׷���</td>
										</tr>
										<tr>
											<td class="l">�ַ���� JSP(Servlet)�� ���� �Խ���, ���θ� �� �����ø����̼� ������ ����</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="3">Ajax & Jquery</td>
											<td class="l">��2.0����� ����� �񵿱��ڹٽ�ũ��Ʈ�� ���� ����</td>
										</tr>
										<tr>
											<td class="l">OPrototype�� ���� ���̺귯���� ���� �н�</td>
										</tr>
										<tr>
											<td class="l">JSON�� ���� ������ǥ�� ����� ���� �н�</td>
										</tr>
										<tr>
											<td class="darker c">iBatis</td>
											<td class="l">iBatis�� ���� �Ұ��� ��ġ �� ������ ���� ����Ʈ���� application �� persistence layer�� ���� �������� �ַ���� iBatis�� ���Ͽ� �н�</td>
										</tr>
										<tr>
											<td class="darker c">Struts</td>
											<td class="l">MVC �����ӿ�ũ�� ����� MVC��Ű��ó�� Ư������ ���� �н�</td>
										</tr>
										<tr>
											<td class="darker c">Android & Java</td>
											<td class="l">�ȵ���̵�SDK�� �̿��Ͽ� �ȵ���̵忡�� �����ϴ� ���ø����̼� ���α׷��ֿ� ���Ͽ� �ǽ�</td>
										</tr>
										<tr>
											<td class="darker c">������Ʈ</td>
											<td class="l">
												�̷� �������� ������ ����� Ȱ���Ͽ� ���ο� �ַ���� �����غ��� �ܰ�
												<ul class="ul_hyphen_gray">
													<li>�� ������Ʈ �� �ο��� 4~6 ���ܷ� ����</li>
													<li>�ֽ� ��� ���� ���� �ľ��Ͽ� ������Ʈ ���� ����</li>
													<li>����Ʈ���� ���� ����п� �԰��� �ܰ躰 �۾��� ����</li>
													<li> �ٽ� ��� ��� �м�, �ý��� ����, �ý��� ����, ���� �ÿ�ȸ �� �������� ������ �ܰ�� ������ �����Ͽ� ��� �������� ��ȣ �����Ͽ� ����</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.1422</p>-->
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">�����ϱ�</a>
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