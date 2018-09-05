<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "SQL_JDBC_core"
SubjectName = "����Ŭ�� �����ͺ��̽� ���� ���α׷���"
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
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(5).addClass("on");  	// ����Ŭ�� �����ͺ��̽� ���� ���α׷��� ON
			
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
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__SQL_JDBC_core.inc" -->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__SQL_JDBC_core.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>390,000��<!--600,000��--><!--<span class="greenTxt"> ���ϸ��� 5%���� (30,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">��뺸�� ��ȯ��<!--�ٷ���ī�� (������ : 189,320�� | �������� : 236,660��) | ����� ȯ�� : �ִ� 236,660��<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">ȯ�޳��� �ڼ�������</a>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp" -->
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ Ư����</h5>
							<!--<p>SQL�� JAVA Database Programming(JDBC ���α׷���)�� ���Ͽ� �н��ϴ� �����Դϴ�. ������ ���̽��� Oracle Database�� �̿��ϸ� DML, DCL, DDL�� ���� ������ �н��մϴ�. SELECT���� ���ǻ����� ����� �⺻ Ʃ�׿� ���� �̷е� �н������ν�, ������ ����� SQL �ۼ������ ���Ͽ� �н��մϴ�. SQL�� ���Ͽ� �н��� �� JDBC���α׷��� ����� ���Ͽ� �н������ν� JAVA�� �̿��� �����ͺ��̽� ���α׷����� �ۼ��� �� �ֵ��� �մϴ�.</p>-->
							<p>SQL�� JAVA Database Programming(JDBC ���α׷���)�� ���Ͽ� �н��ϴ� �����Դϴ�. ������ ���̽��� Oracle Database�� �̿��ϸ� DML, DCL, DDL�� ���� ������ �н��մϴ�. SELECT���� ���ǻ����� ����� �⺻ Ʃ�׿� ���� �̷е� �н������ν�, ������ ����� SQL �ۼ������ ���Ͽ� �н��մϴ�. SQL�� ���Ͽ� �н��� �� JDBC���α׷��� ����� ���Ͽ� �н������ν� JAVA�� �̿��� �����ͺ��̽� ���α׷����� �ۼ��� �� �ֵ��� �մϴ�.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ��ǥ</h5>
							<ul class="ul_dot_gray">
								<li>�����ͺ��̽� ���� ����</li>
								<li>SQL �⺻ ���� ����</li>
								<li>ȿ���� ó���� ���� Select ���� �ۼ� ��� ����</li>
								<li>�ڹ����α׷��� DB���� ��� ����</li>
							</ul>
							
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>JDBC ���α׷� ��������� �н��Ϸ��� ��</li>
								<li>SQL �⺻ ���α׷����� Ȱ���Ϸ��� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������� (�� ���ι���)</h5>
							<ul class="ul_dot_gray">
								<li>�� ���ߴɷ� ����</li>
								<li>Servlet & JSP</li>
							</ul>
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

						<div class="con_wrap1709 dnone">
							<h5>������</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<colgroup>
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
									</colgroup>
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
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>6/14</td>
										<td></td>
										<td></td>
										<td>9/3</td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:30%">
										<col style="width:55%">
									</colgroup>
									<thead>
										<tr>
											<th>������</th>
											<th>������</th>
											<th>�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="12">SQL �⺻</td>
											<td class="darker c">�����ͺ��̽� ����</td>
											<td>RDBMS ����</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="11">SQL ����</td>
											<td>DML��</td>
										</tr>
										<tr>
											<td>DML��</td>
										</tr>
										<tr>
											<td>�⺻ SELECT ��</td>
										</tr>
										<tr>
											<td>JOIN ��</td>
										</tr>
										<tr>
											<td>SubQuery ��</td>
										</tr>
										<tr>
											<td>������ �Լ��� ���� �Լ�</td>
										</tr>
										<tr>
											<td>������ ������ �Ǵ� SELECT</td>
										</tr>
										<tr>
											<td>Insert ��</td>
										</tr>
										<tr>
											<td>Update ��</td>
										</tr>
										<tr>
											<td>DDL ��</td>
										</tr>
										<tr>
											<td>DCL ��</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">JDBC �⺻</td>
											<td class="darker c" rowspan="4">JDBC ����</td>
											<td>JDBC���α׷��� ����</td>
										</tr>
										<tr>
											<td>Statement vs PreparedStatement</td>
										</tr>
										<tr>
											<td>CallableStatement</td>
										</tr>
										<tr>
											<td>ResultSetMetadata</td>
										</tr>
										<tr>
											<td class="darker c">��ȭ / Ȱ��</td>
											<td class="darker c">CRUD ���α׷� �ۼ� �ǽ�</td>
											<td>����Ŭ�� �����Ǵ� ����, ��ȸ, ����, ���� ����� �ڹ� ���α׷� �ۼ� �ǽ� (ȸ�� ����, ��ȸ, ����, Ż�� ��)</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=SQL_JDBC_core" class="btn mid green1">�����ϱ�</a>
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