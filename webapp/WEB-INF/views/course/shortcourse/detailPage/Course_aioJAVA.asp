<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "aioJAVA"
SubjectName = "All-in-One Java Application ����"
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
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");								// Java
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");						// Java SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no3 .newdepth2").eq(2).addClass("on");  	// All-in-One Java Application ���� ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Java
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
												<!--<ul class="ul_dot_gray">-->
												<ul>
													<!--
													<li><del>2015.06.03 ~ 2015.06.05 (3�� / �� 21�ð�)</del></li>
													<li>2015.09.08 ~ 2015.09.10 (3�� / �� 21�ð�)</li>
													-->
													<!--
													<li>2015.11.11 ~ 2015.11.13 (3�� / �� 21�ð�)</li>
													-->												
													<!--<li>2015.11.23 ~ 2015.11.27 (5�� / �� 40�ð�)</li>-->
													<li>(����)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>09:00 ~ 17:00 (1�� 7�ð� / �� ~ ��)</td>-->
											<!--<td>09:00 ~ 17:00 (1�� 7�ð�)</td>-->
											<!--<td>09:00 ~ 18:00 (1�� 8�ð�)</td>-->
											<td>(����)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>700,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (13,000��)</span>--></td>											
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

						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>Spring MVC ��� �� ���ø����̼� ���� �κ��� �ٷ�� ������, Java ��� �� ���ø����̼��� �����ϴµ� �ʿ��� �ǹ� �ʼ� ����� ��� ����� ������ �� �ֵ��� �Ѵ�. Spring �����ӿ�ũ�� Java ���ø����̼� ������ ��� �� ǥ�� �����ӿ�ũ��, �������� ǥ�� �����ӿ�ũ�� Spring  �����ӿ�ũ�� ������� �ϰ� �ִ�. �츮�� �� ��������Spring �����ӿ�ũ�� Ȱ���ϴ� ������ ���� ����� �н��Ѵ�.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>Java EE ��� ����� ���� ����</li>
								<li>�ǹ� ������Ʈ�� ������ �� �ִ� Java  �ʼ� ����� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
								<li>��ü���� ������ ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
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
											<th scope="col">����</th>
											<th scope="col">����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">�� ���ø����̼� ����</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Java �� ���ø����̼� ���� / �÷���</li>
													<li>�� ���ø����̼� ��Ű��ó</li>
													<li>�ֹ����� ����  �ý���</li>
													<li>Java ���� ����</li>
													<li>Maven ���� ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Spring �����ӿ�ũ �ٽ�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Spring �����ӿ�ũ ����</li>
													<li>ù��° Spring �����ӿ�ũ</li>
													<li>Spring �� ���� / AOP ����</li>
													<li>Spring AOP ����</li>
													<li>@AspectJ ������̼�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Java EE �� ��� ���</td>
											<td>
												<ul class="ul_dot_gray">
													<li>HTTP ��������</li>
													<li>HTML5, CSS3, JavaScript, Jquery</li>
													<li>����, ���Ϳ� ������</li>
													<li>JavaServer Pages, JSTL</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Spring MVC �� ���ø����̼�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Spring MVC ����</li>
													<li>��Ʈ�ѷ� ����</li>
													<li>JSTL �� ����</li>
													<li>PDF / Excel �� ����</li>
													<li>����ȭ</li>
													<li>�� �÷ο� ���� / ����</li>
													<li>���̿� �÷ο� ������</li>
													<li>�� �÷ο� �۾� ����</li>
													<li>Spring �� ���� ����</li>
													<li>�� ���� ����</li>
													<li>������ ���� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Java EE �������丮 ��� ���</td>
											<td>
												<ul class="ul_dot_gray">
													<li>�������丮 Ƽ�� ����</li>
													<li>Java ������ �׼��� ����</li>
													<li>�����ͺ��̽� ����</li>
													<li>Java JDBC</li>
													<li>Spring JDBC</li>
													<li>Spring Ʈ�����</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr)</p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=aioJAVA" class="btn mid green1">�����ϱ�</a>
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