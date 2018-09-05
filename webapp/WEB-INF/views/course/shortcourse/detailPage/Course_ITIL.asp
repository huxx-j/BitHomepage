<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "ITILv3_ITSM"
SubjectName = "ITILv3 ��� IT Service Management"
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(5).addClass("on");								// Project Management
			$(".snb_1709 .newdepth2_wrap").eq(5).addClass("on");						// Project Management SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no6 .newdepth2").eq(2).addClass("on");  	// ITILv3 ��� IT Service Management ON

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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Project Management
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
												<ul>
													<li>(����)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>09:00 ~ 18:00 (1�� 8�ð�)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>480,000��<!--650,000��--> </td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� (������ : 126,270�� | �������� : 157,840��) | ����� ȯ�� : �ִ� 157,840��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
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
						
						<!-- ��뺸��ȯ�޾ȳ�-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->							
						</div>
						<!-- //��뺸��ȯ�޾ȳ� -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<p>
								IT �Ź��ͽ��� �� �о��� IT ���� ������ ITILv3�� ���� �н��ϸ�, ITILv3�� �̿��� �������� IT ���� ���μ����� Ȯ���ϵ��� �ϸ�, IT ���� ���� ���� ȿ������ IT ����� �� �ʿ��� ���İ� �پ��� ��ʸ� �н��Ѵ�. ���� ITIL���� �����ϴ� Best Practices�� Good Practices�� �����ϰ� ���� ���� �ֱ�� ���� ����� �н��Ѵ�.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>������ IT ���񽺸� �/�����ϴ� IT ������, ��ȹ, ���</li>
								<li>IT ���� ������ ���� �������� ���뿡 ���� �н��� ����ϴ� ��</li>
								<li>ITSM�� ���Ե� ����� ���������� �ش� ���μ����� ���ذ� �ʿ��� ��</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<ul class="ul_dot_gray">
								<li>�⺻���� �������� IT ���μ����� ����</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>IT ���� ���� �����ֱ⸦ �����Ѵ�.</li>
								<li>IT ���� ������ ���� ���� ���μ����� �����Ѵ�.</li>
								<li>IT ���� ������ �߿伺�� �����Ѵ�.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>����ȿ��</h5>
							<ul class="ul_dot_gray">
								<li>Business�� IT Service ���� ���� ��ȭ </li>
								<li>��� �Ź��ͽ��� IT �Ź��ͽ��� ���� �� IT ���񽺿� ���� ���� ���� �� ����</li>
								<li>���� �����ֱ��� �ǹ� ����</li>
								<li>����� IT���� ������ ����� ����ϰ� ������ �� �ֵ��� �Ѵ�.</li>
								<li>�������� IT ���� ������ �ùٸ� ���ؿ� �� �ʿ�����, �� ����Ǿ�� �ϴ����� �����Ѵ�.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:32%">
										<col style="width:8%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">����</th>
											<th scope="col">�ü�</th>
											<th scope="col">���� ����</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">Service Strategy</td>
											<td class="c">6</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Business Relationship Management</li>
													<li>Service Portfolio</li>
													<li>Demand Management</li>
													<li>Financial Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Service Design</td>
											<td class="c">5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Service Level Management</li>
													<li>Service Catalogue Management</li>
													<li>Supplier Management</li>
													<li>Available Management</li>
													<li>IT Service Continually Management</li>
													<li>Capacity Management</li>
													<li>Information Security Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Service Transition</td>
											<td class="c">5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Change Management</li>
													<li>CAB</li>
													<li>Service Asset and Configuration Management</li>
													<li>Knowledge Management</li>
													<li>Release and Deployment Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Service Operation</td>
											<td class="c">5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Service Desk</li>
													<li>Operations Management<br/>(Operation Control, Facilities Management)</li>
													<li>Technical Management</li>
													<li>Event Management</li>
													<li>Incident Management</li>
													<li>Request Fulfilment</li>
													<li>Problem Management</li>
													<li>Access Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Continual Service Improvement</td>
											<td class="c">3</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Deming Cycle</li>
													<li>CSI Model</li>
													<li>7 Step Improvement Process</li>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=ITILv3_ITSM" class="btn mid green1">�����ϱ�</a>
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