<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "JCT_core"
SubjectName = "Java JDBC ����� SQL ����Ʃ��"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
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

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// SW Engineering
			$(".snb_1709 .newdepth2_wrap").eq(7).addClass("on");						// SW Engineering - OPEN
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(4).addClass("on");  	// �ڹ� ��������� ���� �ڵ������� Ʃ�� ON
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>SW Engineering
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<caption>�ڹ� ��������� ���� �ڵ������� Ʃ��</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�����Ⱓ</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JCT_core.inc" -->
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--
													<li><s>2015.06.09 ~ 2015.06.24 (12�� / 36�ð�)</s></li>
													<li>2015.09.09 ~ 2015.09.24 (12�� / 36�ð�)</li>
													<li>2015.12.07 ~ 2015.12.22 (12�� / 36�ð�)</li>
													<li>2015.11.09 ~ 2015.11.26 (12�� / 36�ð�)</li>
													-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>19:00 ~ 22:00 (1�� 3�ð� / �� ~ ��)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JCT_core.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td>500,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (40,000��)</span>--></td>
											<th scope="row" class="tit">����</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">����� �Ʒ� : �켱������� ������� 247,118��* �ٿ�ó<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										-->
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

<img src="Images/DetailPage_Course_codingTuning.png" style="width:720px;"/>

<div class="dnone">						
						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>JDBC ��� �����ͺ��̽�  ���ø����̼� ���߽� ������ ����� �ڵ� �����  ��뷮 ������ ��� ��ġ ó����  ����� ������  �̷а� �ǽ��� ���� �н��ϸ�  DBMS ��Ű��ó ���ظ�  �������   SQL ���� ���� �� ���� Ʃ�� ������  �н��ϴ� ��������, IT  ������ , ������(DBA) �Ǵ� ��� ���� �η��� ���� ������  �߻��ϴ� ��Ȳ��  �����ϰ�  �ǽ��� ���� ü�� �Ѵ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
								<li>����Ŭ�� �����ͺ��̽� ���� ���α׷���<a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
								<li>Servlet &amp; JSP<a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp" class="mar_l10 btnBlueBorder small">�ڼ�������</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>Ŀ��ŧ��</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">����</th>
											<th scope="col">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">1</td>
											<td>
												<ul class="ul_dot_gray">
													<li>JDBC ����</li>
													<li>��뷮 ������ ����</li>
													<li>
														�ڹ� ��� ��ġ ���α׷� ��� ���� ��/�м� 
														<br/>Statement/Prepared/Callable/addBatch
													</li>
													<li>������/�������� ���α׷��� , Array Processing </li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Oracle DBMS ��Ű��ó (Ʃ�װ���) <br/>Instance/database , ����/������ ���屸��</li>
													<li>SQL ó�� ����<br/>Parsing/Execute/Fetch , Physical/Logical read, Cache Hit, DML/SELECT</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">3</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Connection/Session </li>
													<li>Optimizer <br/>CBOStatistics/Execution/Histogram </li>
													<li>Index ��Ű��ó</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">4</td>
											<td>
												<ul class="ul_dot_gray">
													<li>SQL Ʃ�� ����</li>
													<li>SQL ���� ��/�м�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">5</td>
											<td>
												<ul class="ul_dot_gray">
													<li>����͸� �� �м�<br/>GC / Heavy SQL / DBMS Instance</li>
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
</div>						
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JCT_core" class="btn mid green1">�����ϱ�</a>
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