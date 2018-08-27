<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "DB_core"
SubjectName = "�����ͺ��̽� ����Ʃ��"
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
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(2).addClass("on");  	// �����ͺ��̽� ����Ʃ�� ON
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
													<!--<li>2015.11.16 ~ 2015.11.26 (�� ~ �� / 8�� / �� 24�ð�)</li>-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>19:00 ~ 22:00 (1�� 3�ð� / �� ~ ��)</td>-->
											<td>����</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>600,000��<!--<span class="greenTxt"> ���ϸ��� 5%���� (30,000��)</span>--></td>
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
							<p>������ Ʃ�� ����� ���� �н����ٴ� DBMS������ ���� ���� �н��� ���� DBMS�� �������� ���� ���� ������ ���� �⺻ ���ظ� �ϰ� �̸� ������� SQL ���� ������ ������ �н��� ������ ���� �Ҽ� �ֵ��� �ϴ� ����</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<p>ORACLE ARCHITECTURE���ظ� ������� �� SQL TUNING �н��� ���� ���� ������ �����ͺ��̽� ���α׷����� �����ϵ��� �ϴ� ����</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>����Ÿ���̽� ������</li>
								<li>��� ���� ������</li>
								<li>�ý��� ������</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>Ŀ��ŧ��</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col">��������</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Ʃ�װ����� ORACLE ����(ARCHITECTURE) ����</td>
										</tr>
										<tr>
											<td>���������屸��(LOGICAL/PHYSICAL) ����</td>
										</tr>
										<tr>
											<td>SQL ó������ ���� (SELECT,DML)</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>Optimizer ����</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>��Ƽ�������� �Ѱ�</li>
															<li>�������</li>
															<li>ī��θ�Ƽ/������׷�</li>
															<li>���</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>Tuning ���� �� Tool</td>
										</tr>
										<tr>
											<td>Tuning �з� �� ����</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>���� ����͸�</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>AWR �ǽ�</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>SQL Ʃ��</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>SQL Trace&amp;TKPROF �ǽ�</li>
															<li>AUTOTRACE �ǽ�</li>
															<li>�����ȹ ����/�ؼ�/����</li>
															<li>Access Path ����</li>
															<li>��������� Optimizer</li>
															<li>Optimizer�� �Ѱ�</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>Index</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>Index ����/����</li>
															<li>Index Scan �� ���� �������</li>
															<li>Index �ǽ�</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>Join</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>���� �� ó�����</li>
															<li>����</li>
															<li>Join �ǽ�</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>����ó��</td>
										</tr>
										<tr>
											<td>Array Processing �ǽ�</td>
										</tr>
										<tr>
											<td>OBJECT Ʃ��(Mview/Partition Table) �ǽ�</td>
										</tr>
										<tr>
											<td>������/�������� ó�� �ǽ�</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=DB_core" class="btn mid green1">�����ϱ�</a>
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