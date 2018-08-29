<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

CourseID = "CS_core"
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- �����޴��� ���������� �ش� ������ ÷���ϱ� ���� ����ϴ� �ҽ�
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [����] ��Ʈ�������� ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [����] ��Ʈ�������� SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no6").addClass("on").removeClass("plus").addClass("minus");	// C# ���α׷��� ON 
			$(".snb_1709 .newdepth4_wrap.no6").addClass("on").css('display','block');	// C# ���α׷��� SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no6 li:eq(0) a").addClass("on");				// ���߹� ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[����]��Ʈ��������
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>C# ���α׷���
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>���߹�
						</p>
						<h4>C# ���α׷���</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<caption>C# Programming</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3">C# Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<!--<td>2016.06.02 ~ 2016.06.30 <span class="greenTxt">(�����)</span></td>-->
											<!--<td>2016.08.02 ~ 2016.08.30 <span class="greenTxt">(�����)</span></td>-->
											<td>(����)</td>
											<th scope="row" class="tit">���ǽð�</th>
											<td>
												<!--<span class="blueTxt">1�� 3�ð� * 20��(�� 60�ð�) </span>-->
												<ul class="ul_dot_gray">
													<!--<li>���� : 19:00 ~ 22:00(3�ð�)</li>-->
													<li>(����)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">������</th>
											<!--<td>350,000��</td>-->
											<td>350,000�� </td>											
											<th scope="row" class="tit">��������</th>
											<td>02-3486-1780 <span class="blueTxt">(������ ȯ�� ����)</span> </td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">ȯ�޺�</th>
											<td colspan="3">�ٷ���ī�� (������ : 279,980�� | �������� : 349,980��) | ����� ȯ�� : �ִ� 349,980��<a href="#this" class="mar_l10 btn sml blue btn_refundView">ȯ�޳��� �ڼ�������</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- ������ûbtn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="������û" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>
								
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!--
						< ! - - ��뺸��ȯ�޾ȳ� - - >
						<div class="refundInfo_wrap">
							< ! - - #include virtual="/Common/Tab/refundInfo_languageMaster.asp" - - >							
						</div>
						< ! - - //��뺸��ȯ�޾ȳ� - - > 
						-->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>�����Ұ�</h5>
							<p>�� ������ ���α׷��ֿ� ������ ���� ������ ó�� ���Ͻô� ��, �ٸ� ���α׷��� ���� ���� �������� C# ���� �𸣽ô� ��, C# �� ����� ������ ��Ȯ�� ������ ���� �е��� �������, �⺻ ������ OOP �� �������� ü�������� �н��ϴ� �����Դϴ�. �̷а� �ǽ��� �����Ͽ� �����ϸ� C#���� OOP�� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� �ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>������ǥ</h5>
							<ul class="ul_dot_gray">
								<li>���α׷����� �⺻�� ���α׷��� �� ���� �ڽŰ� ���� </li>
								<li>OOP Ư¡�� ������� ȿ������ ���� �� ���� �ɷ� ��� </li>
								<li>����, ����, ���� �ɷ��� �����ְ� ���� (�̷�:�ǽ� = 3:7) </li>
								<li>NET ����� ���� ���α׷��ֿ� �ʿ��� C# ��� ���� �ɷ� ���</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>��������</h5>
							<div class="divTable">
								<table>
									<caption>C# Programming Ŀ��ŧ��</caption>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">������</th>
											<th scope="col">������</th>
											<th scope="col">�󼼳���</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" rowspan="4">C# �⺻ ����</th>
											<td class="c">�Ұ�</td>
											<td>
												<ul class="ul_dot_gray">
													<li>.NET Framework ����</li>
													<li>C# �ܼ� ���� ������Ʈ �ҽ� ����</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">C# ���� ���</td>
											<td>
												<ul class="ul_dot_gray">
													<li>���� ����, ���� ����</li>
													<li>������, ���</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">���� ����</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Objec, Boxing�� UnBoxing</li>
													<li>�迭, ���ڿ�</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">�� ����</td>
											<td>
												<ul class="ul_dot_gray">
													<li>����ü(����, �ε� �Ҽ��� ����, decimal, bool, ����� ���� ����ü) ������</li>
												</ul>
											</td>
										</tr>

										<tr>
											<th scope="row" rowspan="3">OOP</th>
											<td rowspan="3" class="c">ĸ��ȭ</td>
											<td>ĸ��ȭ ���</td>
										</tr>
										<tr>
											<td>�޼ҵ� �����ε��� �����ڸ� �н��Ѵ�.</td>
										</tr>
										<tr>
											<td>��ü�� ����� ���� ���</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- �󰭾ȳ� ���� -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>�� �����ο� �̴� �� ���� ���� �Ǵ� �󰭵� �� ����</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">ȯ�ް��ɹ���</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->
<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=CS_core" class="btn mid green1">�����ϱ�</a>
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