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

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load ���� SNB ���� */
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(3).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth2_wrap.no4").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1709 .newdepth2_wrap.no4 li:eq(1) a").addClass("on");
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]����ķ�۽�
						</p>
						<h4>
							Windows .NET ��ް���
							<a href="/Course/LocalCampus/LocalCampus_Gunpo_Introduction.asp?beginwith=booklet" title="������Ʈ ���캸��" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">������Ʈ ���캸��</a>
							<a href="/Course/LocalCampus/LocalCampus_Gunpo_Introduction.asp?beginwith=entryWorks" title="������ ��ǰ��" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">������ ��ǰ��</a>
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
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Gunpo_WinHigh_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">��������</th>
											<!--<td class="l">2016.08.29 ~ 2017.12.30 (4����)</td>-->
											<td class="l">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GP_WINHIGH.inc" -->
												<!--2017.08.29 ~ 2017.12.30 (4����)-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GP_WINHIGH.inc" -->
												<!--09:00 ~ 16:00 (6�ð�)-->
											</td>
										</tr>
										<!-- ����ķ�۽� Windows .NET ��ް��� -->
										
										
										<tr>
											<th scope="row" class="tit">������</th>
											<td>3,700,000��</td>
											<th scope="row" class="tit">��������</th>
											<td> 02-3486-7588</td>
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
							<p class="mar_b10">������ �������α׷� �ۼ��� �ʼ� ������� C/C++�� �����ϰ� �پ��� �ڷᱸ�� �� �˰��� �ۼ� �ɷ� ����Ͽ�WinNT ��ݿ��� �����ϴ� �پ��� ���� ���α׷��� ���߿� ������ C#���� OOP�� .NET �÷����� ������ ����� .NET ������, �� ����, �������� ����, Windows Form with C#, XML.NET, ADO.NET ���� Ȱ���Ͽ� �پ��� ������ ���� ���α׷��� ����Ͻ� �ַ���� ������ �� �ִ� �ɷ��� �����.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>C# ��� ������ OOP�� ���� �� Ȱ��</li>
								<li>NET Framework�� ���� ����</li>
								<li>���� ������ ���ؿ� ���α׷� ���迡 ���� </li>
								<li>NET�� ������ ���񽺸� Ȱ���Ͽ� ����Ͻ� �ַ�� ���� �ɷ� ��� </li>
								<li>NET�� ������ ����� XML.NET, ADO.NET ���� ȿ�������� ������ �� �ִ� �ɷ� ��� </li>
								<li>Windows Form With C#�� �̿��� ������ ���α׷��� �ɷ� ���</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>��⵵ ������ ������ 604-5 �Ѽ����б� <img style="margin-top:-68px; height:100px;" src="img_qrcode_Gunpo.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:35%">
										<col style="width:65%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">����</th>
											<th scope="col">�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td rowspan="4">Windows API Programing</td>
											<td class="l">Windows �ٽ� ���� ����</td>
										</tr>
										<tr>
											<td class="l">API���ؿ� ����</td>
										</tr>
										<tr>
											<td class="l">Windows GUI ���α׷���</td>
										</tr>
										<tr>
											<td class="l">Windows System ���α׷���</td>
										</tr>
										<tr>
											<td rowspan="3">Windows Network Programing</td>
											<td class="l">��Ʈ��ũ�� ���ؿ� �⺻ ����</td>
										</tr>
										<tr>
											<td class="l">Winsock ���̺귯���� ����</td>
										</tr>
										<tr>
											<td class="l">Winsock�� �̿��� Networking ���α׷� �ۼ� </td>
										</tr>
										<tr>
											<td rowspan="3">MFC</td>
											<td class="l">MFC�� ������ ����</td>
										</tr>
										<tr>
											<td class="l">MFC �� OOP</td>
										</tr>
										<tr>
											<td class="l">MFC�� Ȱ���� Windows �������α׷���</td>
										</tr>
										<tr>
											<td rowspan="3">.NET�� C#</td>
											<td class="l">C# �⺻ ����</td>
										</tr>
										<tr>
											<td class="l">OOP�� ���� �� Ȱ��</td>
										</tr>
										<tr>
											<td class="l">�������̽��� �÷���, �븮��</td>
										</tr>
										<tr>
											<td rowspan="2">GoF�� ������ ����</td>
											<td class="l">���� ���� ����</td>
										</tr>
										<tr>
											<td class="l">���α׷� ���迡 ���� ����</td>
										</tr>
										<tr>
											<td rowspan="3">����</td>
											<td class="l">NET ������ ���� ���� �� ����</td>
										</tr>
										<tr>
											<td class="l">NET ������ ���� ���� �� ����</td>
										</tr>
										<tr>
											<td class="l">�������� ���� �ۼ� �� Ȱ��</td>
										</tr>
										<tr>
											<td rowspan="3">Windows Form with C#</td>
											<td class="l">XML.NET ����� Ȱ�� �� ������ ǥ��ȭ</td>
										</tr>
										<tr>
											<td class="l">Open API�� XML.NET ����� �̿��� ���α׷���</td>
										</tr>
										<tr>
											<td class="l">ADO.NET ��� Ȱ�� �� ���α׷���</td>
										</tr>
										<tr>
											<td rowspan="4">������Ʈ</td>
											<td class="l">�̷� �������� ������ ����� Ȱ���Ͽ� ���ο� �ַ���� �����غ��� �ܰ�</td>
										</tr>
										<tr>
											<td class="l">�� ������Ʈ �� �ο��� 4~6 ���ܷ� ����</td>
										</tr>
										<tr>
											<td class="l">�ֽ� ��� ���� ���� �ľ��Ͽ� ������Ʈ ���� ����</td>
										</tr>
										<tr>
											<td class="l">����Ʈ���� ���� ����п� �԰��� �ܰ躰 �۾��� ����</td>
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