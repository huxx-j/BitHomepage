<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "Search_Engine"
SubjectName = "������ �˻�����"
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(0).addClass("on");  	// ������ �˻����� ON
			
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
									<caption>������ �˻� ���� ����</caption>
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
												<ul>
													<li>����</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>10:00 ~ 18:00 (1�� 7�ð�)</td>-->
											<td>09:30 ~ 17:30 (1�� 7�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>300,000��<!--500,000��--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">
												��뺸�� ��ȯ��<!--�ٷ���ī�� (������ : 110,440�� | �������� : 138,050��) | ����� �Ʒ� : �ִ� 138,050��<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">ȯ�޳��� �ڼ�������</a>-->
											</td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_12.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>
								�����Ͻ� ������ �ߴް� �Ҽ��� ���� �� ���� ����� �����͸� Ȱ���� �ʿ伺�� ���� Ŀ���� �ֽ��ϴ�. ������ ����� �����Ϳ��� ���ϴ� �����͸� ã�� ���� ���� ȿ���� ���� �˻� ������ �ʿ��մϴ�. ������ �̿� ���� ����� �ʿ��� ���� ������ ���� ����� ���� �ִ� �̵��� ���������� �����մϴ�.<br/>
								�� ���� ������ �����Ͻ� ���񽺳� �Ҽ�, ������ ���� �� �� �پ��� �о߿��� �䱸�ϴ� �˻� ������ �Ұ��ϰ�CBD���� ����п� ���߾� �����ϴ� ��ü������ �����մϴ�. ������������ �ٷ�� ������ �� �˻������� �����ϴ� �� �κ�, ���¼Һм���, ���α�, ��Ŀ�� �Ұ� �� CBD ���� ����п� ���� ���߽ǽ��Դϴ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>������ ������ ���� �ǽ��� ���� ������ �´� �˻� ���� ���ߴɷ� �Ծ�</li>
								<li>���¼� �м��� ���� �ǽ��� ���� ������ �Ľ� �ɷ� �Ծ�</li>
								<li>TF-IDF ��Ŀ ������ ���� �ø�ƽ ��Ŀ �� �ø�ƽ �˻����� ���ߴɷ� �Ծ�</li>
								<li>CBD ���� ������� ������ ���� �ǽ��� ���� ȿ������ ���� ��������</li>
								<li>�����ͺ��̽����� �� �̸� Ȱ���ϴ� �������α׷� ���۱�� �Ծ�</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>�˻� ������ �����ϰų� �н��ϰ��� �ϴ� ��</li>
								<li>�����͸� �м� �� �籸�� ���񽺿� ���� ������ �ϰų� ���ϴ� ��</li>
								<li>�����Ͻ� ������ ������ �˻� ���� ���� ���Ͻô� ��</li>
								<li>�ǹ� ���� ������� �����ϴ� ����� �������� �ϴ� ��</li>
								<li>C++/Java/C#���α׷��� ��� �߿��� �ϳ��� ����� �� �ִ� ��</li>
								<li>Oracle/MySQL/MSSQ�� ���� DBMS�� �����Ͽ� ���α׷����� �غ��� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������� (���ι���)</h5>
							<ul class="ul_dot_gray">
								<li>�����Ͻ� ���񽺱���</li>
								<li>�˻����� ����</li>
								<li>������ Ȱ��</li>
								<li>�ڿ����</li>								
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption>������ �˻� ���� ���� ����</caption>
									<colgroup>
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">����</th>
											<th scope="col">�н�����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="7">1����</td>
											<td>1����</td>
											<td class="l">
												<ul>
													<li>���������̼�</li>
													<li>�˻����� �Ұ�</li>
													<li>���� �ó�����</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>2����</td>
											<td class="l">
												<ul>
													<li>�䱸 ��� ���캸��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>3����</td>
											<td class="l">
												<ul>
													<li>�䱸 ��� ���캸��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>4����</td>
											<td class="l">
												<ul>
													<li>�䱸 �м� �� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>5����</td>
											<td class="l">
												<ul>
													<li>�������̽� �� ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>6����</td>
											<td class="l">
												<ul>
													<li>�������̽� �� ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>7����</td>
											<td class="l">
												<ul>
													<li>��Ű���ĸ�(������Ʈ)</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c"  scope="row" rowspan="7">2����</td>
											<td>1����</td>
											<td class="l">
												<ul>
													<li>��Ű���ĸ�(������)</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>2����</td>
											<td class="l">
												<ul>
													<li>��Ű���ĸ�(������)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>3����</td>
											<td class="l">
												<ul>
													<li>DB ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>4����</td>
											<td class="l">
												<ul>
													<li>������Ÿ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>5����</td>
											<td class="l">
												<ul>
													<li>Core ���� �� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>6����</td>
											<td class="l">
												<ul>
													<li>���� ���ν��� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>7����</td>
											<td class="l">
												<ul>
													<li>���� ���ν��� ����</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="7">3����</td>
											<td>1����</td>
											<td class="l">
												<ul>
													<li>�� �κ� �����</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>2����</td>
											<td class="l">
												<ul>
													<li>���¼� �м��� �����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>3����</td>
											<td class="l">
												<ul>
													<li>������ ������ �����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>4����</td>
											<td class="l">
												<ul>
													<li>��Ŀ �����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>5����</td>
											<td class="l">
												<ul>
													<li>�˻� ���� �����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>6����</td>
											<td class="l">
												<ul>
													<li>������ ���� �����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>7����</td>
											<td class="l">
												<ul>
													<li>�˻� ���� �����</li>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=Search_Engine" class="btn mid green1">�����ϱ�</a>
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