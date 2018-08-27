<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "Nodejs"
SubjectName = "��ü���� JavaScript�� Node.js ���α׷���"
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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(7).addClass("on");  	// ��ü���� JavaScript�� Node.js ���α׷��� ON
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>JavaScript
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul><!--9/20~10/4 -->
													<li>����</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<ul class="ul_dot_gray">
													<li>����� : 19:00 ~ 22:00 (3�ð� / 10��) </li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>400,000��</td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� �Ұ�</h5>
							<p>Node.js�� Ȯ�强 �ְ� ������ �� ���ø����̼� ������ �� �ִ� �ڹٽ�ũ��Ʈ �񵿱� ���� �����ӿ�ũ�Դϴ�. ���� ���̵� �񵿱� ����� ��� ä���̳� ���� �׸��� �ǽð� ���� ���� �ǽð� ��Ʈ��ũ ���ø����̼��� �ۼ��� �ʿ��� �⺻ ������ ���� ���� ������ �����ϴ� �����Դϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ǥ</h5>
							<ul class="ul_dot_gray">
								<li>Node.js�� ���� �������� ����</li>
								<li>�񵿱� ��Ʈ��ũ ���ø����̼� ���� ��� ����</li>
								<li>Express �����ӿ�ũ�� Connect �̵����� Node ���ø����̼� �ۼ�</li>
								<li>MongoDB ���� NoSQL �� ������ �����ͺ��̽� MySQL �� ����ϴ� ��� ����</li>
								<li>WebSocket�� ����Ͽ� �������� ���� ���� ����� ����� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>�� ������</li>
								<li>JavaScript �� �������̵� �����ø����̼� ������ ���� ���� ������</li>
								<li>�̺�Ʈ ����� �񵿱� ��Ʈ��ũ ��� C/S ���α׷��ֿ� ������ �ִ� ������</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<p>JavaScript ���α׷���<a href='/Course/ShortCourse/DetailPage/Course_JavaScript.asp' class='mar_l10 btnBlueBorder small' target="_blank">�ڼ��� ����</a></p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">Node.js ���� ȯ�� ����</td>
											<td>Node ����ȯ�� ����</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Node.js ���� ��ü</td>
											<td>global, process �� Buffer</td>
										<tr>
											<td class="darker c" scope="row">Node.js �⺻ ���� ���</td>
											<td>
												<ul>
													<li>Ÿ�̸�, ����, ��Ʈ��, ����</li>
													<li>Utilities ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�̺�Ʈ ó��</td>
											<td>
												<ul>
													<li>�̺�Ʈ ó�� ����</li>
													<li>EventEmitter</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">��� �ý���</td>
											<td>
												<ul><li>require ���</li>
												<li>�ܺ� ��� ���(��Ű�� ������)</li>
												<li>����� ���� ���</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Express �����ӿ�ũ</td>
											<td>
												<ul><li>app.js �˾ƺ���</li>
												<li>�����</li>
												<li>����ó��</li>
												<li>MVC</li>
												<li>���ø�(EJS) ����ϱ�</li>
												<li>CSS(stylus) ����ϱ�</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">�����ͺ��̽�</td>
											<td>
												<ul><li>db-mysql �� �����ϱ�</li>
												<li>node-mysql ����� MySQL ����</li>
												<li>MongoDB ����� ���� Node.js Driver</li>
												<li>Mogoose�� ���� ����	</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">socket.io ���� �� ����</td>
											<td>
												<ul><li>�� �����̶�?</li>
												<li>Socket.IO �Ұ�</li>
												<li>ä�� ����� ����</li></ul>
											</td>
										</tr>
										
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</p>
								-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>
								
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Nodejs" class="btn mid green1">�����ϱ�</a>
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