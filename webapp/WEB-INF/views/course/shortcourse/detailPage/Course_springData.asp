<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "Spring_SQL_core"
SubjectName = "Spring Data + noSQL"
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(3).addClass("on");  	// Spring Data + noSQL ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Database
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
												����
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--
													<li><del>2015.04.20 ~ 2015.04.24 (5�� / �� 40�ð�)</del></li>
													<li><del>2015.07.20 ~ 2015.07.24 (5�� / �� 40�ð�)</del></li>
													<li>2015.10.19 ~ 2015.10.23 (5�� / �� 40�ð�)</li>
													-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>09:00 ~ 18:00 (1�� 8�ð� / �� ~ ��)</td>-->
											<td>����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>800,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (40,000��)</span>--></td>
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
							<p>�� ������ NoSQL�߿��� ���� �α⸮�� ����ϰ� �ִ� MongoDB�� MongoDB���̺귯���� ���Ͽ� �ٷ��. ����, MongoDB�� Spring����ȯ�濡�� �ٷ�� ���� Spring DATA�� ���Ͽ� �ٷ�� MongoDB ������ �ٷ�� ���� ����� MongoDB Document�� ������ �ùٸ��� �����ϴ� ������� �Բ� �ٷ����ν� MongoDB�� Ȱ������ ���� A-Z���� �ٷ�� �ȴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<!--<li>��ü���� �ڹ����α׷���</li>-->
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>NO SQL �Ұ�</td>
										</tr>
										<tr>
											<td>MongoDB �Ұ�</td>
										</tr>
										<tr>
											<td>MongoDB ��ġ</td>
										</tr>
										<tr>
											<td>MongoDB ���� - Shell ���, �����ͺ��̽�, �÷��� ����</td>
										</tr>
										<tr>
											<td>������ ����, ����, ����</td>
										</tr>
										<tr>
											<td>���� - ���� �⺻</td>
										</tr>
										<tr>
											<td>���� - ���Խ��� �̿��� ����, ��Ư�� ����, �迭 ����, $where</td>
										</tr>
										<tr>
											<td>���� - cursor, limit(), skip(), sort(), �������� ����</td>
										</tr>
										<tr>
											<td>���� - �پ��� ������</td>
										</tr>
										<tr>
											<td>�ε��� - ������ ��ȸ</td>
										</tr>
										<tr>
											<td>Aggregation - count, distinct</td>
										</tr>
										<tr>
											<td>Aggregation - MapReduce</td>
										</tr>
										<tr>
											<td>Aggregation - Aggregation Framework</td>
										</tr>
										<tr>
											<td>��� ��� - �����ͺ��̽� ��ɾ�, ���� �÷���</td>
										</tr>
										<tr>
											<td>��� ��� - GridFS, DBRef</td>
										</tr>
										<tr>
											<td>���� - ����͸�</td>
										</tr>
										<tr>
											<td>���� - ���Ȱ� ����</td>
										</tr>
										<tr>
											<td>���� - ��� �� ����</td>
										</tr>
										<tr>
											<td>���� - Master/Slave</td>
										</tr>
										<tr>
											<td>���� - Replica Set</td>
										</tr>
										<tr>
											<td>���� - Slave������ �۾� ����</td>
										</tr>
										<tr>
											<td>���� - �۵���İ� ����</td>
										</tr>
										<tr>
											<td>���� - ����</td>
										</tr>
										<tr>
											<td>���� - ���� �����ϱ�</td>
										</tr>
										<tr>
											<td>���� - ����</td>
										</tr>
										<tr>
											<td>Java Driver ����ϱ� - �⺻ ����̹� ���</td>
										</tr>
										<tr>
											<td>Java Driver ����ϱ� - Object Mapping(Jongo)</td>
										</tr>
										<tr>
											<td>������ �𵨸�</td>
										</tr>
										<tr>
											<td>Spring DATA ����</td>
										</tr>
										<tr>
											<td>Spring�� Spring DATA ����</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>
								<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr)</p>
								-->
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Spring_SQL_core" class="btn mid green1">�����ϱ�</a>
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