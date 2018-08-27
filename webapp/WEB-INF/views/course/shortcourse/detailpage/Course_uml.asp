<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
CourseID = "UML2_core"
SubjectName = "����! �м�����"
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
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(2).addClass("on");  	// ����! �м����� ON
			
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
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">�������</th>
											<td colspan="3"><%=SubjectName%></td>
										</tr>
										<tr>
											<th scope="row" class="tit">��������</th>
											<td>
												(����)
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--
													<li><del>2015.01.19 ~ 2015.01.29 (8�� / �� 24�ð�)</del></li>
													<li><del>2015.04.14 ~ 2015.04.23 (8�� / �� 24�ð�)</del></li>
													<li><del>2015.07.13 ~ 2015.07.23 (8�� / �� 24�ð�)</del></li>
													<li>2015.10.12 ~ 2015.10.22 (8�� / �� 24�ð�)</li>
													<li>2015.10.12 ~ 2015.10.22 (8�� / �� 24�ð�)</li>
													-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">���ǽð�</th>
											<!--<td>19:00 ~ 22:00 (1�� 3�ð� / �� ~ ��)</td>-->
											<td>(����)</td>
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
							<p>������Ʈ�� �Ը� Ŀ����, �����Ͻ��� ���⵵�� ������ ���� �����Ͻ��� ���� �䱸������ �ľ��ϰ�, �ش� �䱸������ �м��ϴ� ���� ����� ����. �� ���������� UML�� �̿��Ͽ� �м��ϴ� ����� ���Ͽ� ���� ������ ���Ͽ� �ǽ��� ���Ͽ� ����� �н��Ѵ�.</p>
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
											<td>�䱸���� ����</td>
										</tr>
										<tr>
											<td>���ؽ�Ʈ ���̾�׷� ���� & �ۼ��ϱ�</td>
										</tr>
										<tr>
											<td>����Ŭ���� �𵨸� ���� & �ۼ��ϱ�</td>
										</tr>
										<tr>
											<td>�����Ͻ� ���μ��� �𵨸� ���� & �ۼ��ϱ�</td>
										</tr>
										<tr>
											<td>�������̽� ���� & �ۼ��ϱ�</td>
										</tr>
										<tr>
											<td>�������̽� ���Ǽ� & �ۼ��ϱ�</td>
										</tr>
										<tr>
											<td>�м�</td>
										</tr>
										<tr>
											<td>�����м��� �����м� ���� & �ۼ��ϱ�</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=UML2_core" class="btn mid green1">�����ϱ�</a>
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