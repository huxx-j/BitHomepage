<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "StorageSystem_FM"
%>

<%
'//Flash Memory ���<br/>Storage System
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
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

			$(".snb_1709 a.newdepth1").eq(8).addClass("on");								// Embedded 
			$(".snb_1709 .newdepth2_wrap").eq(8).addClass("on");						// Embedded - OPEN
			$(".snb_1709 .newdepth2_wrap.no9 .newdepth2").eq(1).addClass("on");  	// Flash Memory ��� Storage System ON
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
		<div id="Container_Wrap" style="min-height:1600px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Embedded
						</p>
						<h4>Flash Memory ��� Storage System</h4>
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
											<th scope="row" class="tit">�������</th>
											<td colspan="3">Flash Memory ��� Storage System</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												<ul>
													<!--<li>2016.09.06 ~ 2016.09.08 (3�� / �� 21�ð�)</li>-->
													<li>(����)</li>
												</ul>
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>09:30 ~ 17:30 (1�� 7�ð�)</td>-->
											<td>(����)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<td>370,000<!--500,000-->��<!--<span class="greenTxt"> ���ϸ��� 5%���� (25,000��)</span>--></td>
											<th scope="row" class="tit">��������</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3" >��뺸�� ��ȯ��<!--�ٷ���ī�� (������ : 110,440�� | �������� : 138,050��) | ����� ȯ�� : �ִ� 138,050��<a href="#this" class="mar_l10 btn btnBlueBorder small btn_refundView">ȯ�޳��� �ڼ�������</a>--></td>
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
						<!--
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>����Ʈ���� ���� ������ ������ ������(��), ������(PM), ������ �� ���ذ����� ��ΰ� ���� �����ϱ� ���ؼ��� ����ü��� ��(tools)�� �ʿ��ѵ�, ���� �ð� �� ���� ���ǻ� �����ϱ� ����� ���� �����Դϴ�. <br>
									�̸� �ذ��ϱ� ���� ���ߵ� ���� Software Visualization �Դϴ�.</p>
						</div>
						-->
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ� �� ��ǥ</h5>
							<p>
								�ֱ� Flash memory ��� ������ġ�� ����������� ����, ����� ��ġ�κ��� ������ ��ǻ�Ϳ� �̸��� ���� �پ��� �о߿��� Ȱ���� ���Եǰ� �ִ�. Flash memory�� ���� ������ġ ��� ���� ���ɰ� ������ �Ҹ��� ������ ������ ������, ���� ������ ����, ������ Ƚ���� ���� ���� ����, R/W/E ���� ������ ���� �� �� ���� ���� �ð��� ���� �ٸ� ��  HDD�� �뺯�Ǵ� ���� ������ġ�ʹ� �ſ� �ٸ� Ư���� ������ �ִ�. ���� ������ ���� ����Ʈ��� �ʿ�� �ϸ�, �̴� ������ġ�� ������ �����ϴ� �߿��� ��Ұ� �ȴ�. �̿� ����, �� ���������� Flash memory��� ���� ��ġ�� ���ؿ� ���� ��� �Ծ�, ���� ���� ������ �缺�� ��������, �̷� �� �ǽ��� ������ ������ �ǽ��Ѵ�. 
							</p>
							<p>
								��ü������ Flash memory Ĩ�� �⺻���� Ư���� ���� ���ظ� �������� Ĩ ����̹� �ۼ��� ���� ���캸��, Flash memory�� ���� ����Ʈ���� ������ ���� �˾ƺ���. Flash memory�� Ư���� ���߰� ���� ���ؿ� R/W ������ �������ִ� FTL(Flash Translation Layer)�� �⺻ ������ ����, �̸� ���� �⺻���� ����� �����ϴ� FTL�� ���� �����Ѵ�. ����, Flash memory��� SSD�� ���α����� ���캻 ��, �̸� ���� FTL ����� �����Ѵ�. ���� Flash memroy ���� ���� �ý��ۿ� ���� ��ü������ �˾ƺ���.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="���μ����ð�ȭ, �ҽ��ڵ� �ð�ȭ, �ҽ��ڵ� ����ȭ, ���μ��� ����ȭ"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>�������</h5>
							<ul class="ul_dot_gray">
								<li>����Ʈ���� ǰ��������</li>
								<li>����Ʈ���� ������ �� ������Ʈ ������(PM)</li>
								<li>����Ʈ���� ���ֺμ�(IT ��ȹ)</li>
								<li>PMO ������</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���ǿ��� : �̷� / �ǽ�</h5>
							<!--
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
							-->
							<p>
								�� ���Ǵ� ũ�� �̷а� �ǽ�, �� ������ ����� ���� �̷�����. ��ü������, �̷� ������ ���ع�� ������ ��������, flash memory�� ���� ���� FTL�� ������ ������ �����ν� FTL�� ���α����� ���� ���� �ִ� ���ظ� �����ϸ�, SSD�� ���� �ΰ� ����� ����Ͽ� �̸� Ȯ���Ѵ�.
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ���</h5>
							<ul class="ul_dot_gray">
								<li>���õ� ��ǰ ���ۿ� ��̰� �ְų�, �̸� �� ������ ���� �ϴ� �ο�</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>���� ����</h5>
							<ul class="ul_dot_gray">
								<li>C Programming <a href="/Course/ShortCourse/DetailPage/Course_c.asp" class="btnBlueBorder">�ڼ�������</a></li>
								<li>System Programming <span class="colorBitBlue">(������ �ý��ۿ� ���� �������� ����)</span></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��� �ǽ�������</h5>
							<ul class="ul_dot_gray">
								<li>PC</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
												
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">����</th>
											<th scope="col">�ü�</th>
											<th scope="col">���γ���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="3">1����</th>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>Flash memory Ư�� �� �⺻ �̷�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>Flash memory chip driver</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">3</td>
											<td class="l">
												<ul>
													<li>Flash memory�� ���� software architecture</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">2����</th>
											<td class="c">3</td>
											<td class="l">
												<ul>
													<li>FTL �⺻�̷� : mapping, recovery ��</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>BasicFTL ���� ȯ�� ���� �� �⺻ ���� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>�߰� ��� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">3����</th>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>SSD internal</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">3</td>
											<td class="l">
												<ul>
													<li>SSD�� ���� BasicFTL�� Ȯ�� �ǽ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>Flash memory aware file system</li>
												</ul>
											</td>
										</tr>									
									</tbody>
								</table>
								<!--<p class="blueTxt mar_t10">* �������� �ο� �̴޽� ���� �Ǵ� �� �� �� ������ �˷��帳�ϴ�. </p>-->
								<!-- �󰭾ȳ� ���� -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
								</div>
								<div style="clear:both;"></div>
								<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 (bithrd@bit.kr) </p>-->
							</div							
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=StorageSystem_FM" class="btn mid green1">�����ϱ�</a>
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